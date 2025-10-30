import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SettingsLanguagePickerWidget extends StatefulWidget {
  final Function(String) onLanguageSelected;
  final String currentLanguage;

  const SettingsLanguagePickerWidget({
    super.key,
    required this.onLanguageSelected,
    required this.currentLanguage,
  });

  @override
  State<SettingsLanguagePickerWidget> createState() => _SettingsLanguagePickerWidgetState();
}

class _SettingsLanguagePickerWidgetState extends State<SettingsLanguagePickerWidget> {
  late FixedExtentScrollController _scrollController;
  late int _selectedIndex;
  late int _initialIndex;

  @override
  void initState() {
    super.initState();
    // Set initial selected index based on current language
    _initialIndex = widget.currentLanguage == 'ar' ? 1 : 0;
    _selectedIndex = _initialIndex;
    _scrollController = FixedExtentScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onDone() {
    final languages = ['en', 'ar'];
    final selectedLanguage = languages[_selectedIndex];
    widget.onLanguageSelected(selectedLanguage);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Simple Header
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.dp20,
              vertical: Dimens.dp16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    Translate.s.cancel,
                    style: AppTextStyle.s16_w400(
                      color: context.colors.textGaryColor,
                    ),
                  ),
                ),
                Text(
                  Translate.s.language,
                  style: AppTextStyle.s18_w600(
                    color: context.colors.textColor,
                  ),
                ),
                CupertinoButton(
                  onPressed: _onDone,
                  child: Text(
                    Translate.s.done,
                    style: AppTextStyle.s16_w600(
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Enhanced Picker
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CupertinoPicker(
                itemExtent: 50,
                scrollController: _scrollController,
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  // Don't apply changes until Done is clicked
                },
                children: [
                      _buildLanguageOption(
                        context,
                        Translate.s.english,
                        'EN',
                        context.colors.primaryBlue,
                      ),
                      _buildLanguageOption(
                        context,
                        Translate.s.arabic,
                        'ع',
                        context.colors.primaryGreen,
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String title,
    String code,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
                child: Text(
                  code,
                  style: AppTextStyle.s14_w600(
                    color: context.colors.white,
                  ),
                ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.s16_w500(
                color: context.colors.textColor,
              ),
            ),
          ),
          Icon(
            CupertinoIcons.globe,
            color: color,
            size: 20,
          ),
        ],
      ),
    );
  }
}
