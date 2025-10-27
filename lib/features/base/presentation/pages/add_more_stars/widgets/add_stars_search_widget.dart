part of 'add_more_stars_widgets_imports.dart';

class AddStarsSearchWidget extends StatefulWidget {
  final AddMoreStarsController controller;

  const AddStarsSearchWidget({super.key, required this.controller});

  @override
  State<AddStarsSearchWidget> createState() => _AddStarsSearchWidgetState();
}

class _AddStarsSearchWidgetState extends State<AddStarsSearchWidget> {

  final Debouncer _debouncer = Debouncer(milliseconds: 1000);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      alignment: Alignment.center,
      margin: Dimens.paddingAll10PX,
      child: GenericTextField(
        controller: widget.controller.searchController,
        fieldTypes: FieldTypes.normal,
        fillColor: context.colors.greyWhite,
        action: TextInputAction.done,
        hint: Translate.s.search_for_a_star,
        hintTextStyle: AppTextStyle.s15_w400(color: context.colors.grey).copyWith(height: 2.5),
        type: TextInputType.text,
        validate: (val) => ("$val").noValidate(),
        onChange: (val) {
          _debouncer.run(() {
            widget.controller.onSearch();
          });
        },
        onSubmit: () {
          FocusScope.of(context).requestFocus(FocusNode());
          widget.controller.onSearch();
        },
        radius: BorderRadius.circular(10),
        enableBorderColor: context.colors.slightGrey.withValues(alpha:.1),
        prefixIcon: Icon(
          Icons.search,
          color: context.colors.grey,
          size: 20,
        ),
        margin: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
