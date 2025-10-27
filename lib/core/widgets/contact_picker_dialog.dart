import 'package:flutter/cupertino.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';

class ContactPickerDialog extends StatefulWidget {
  final List<Contact> contacts;

  const ContactPickerDialog({super.key, required this.contacts});

  @override
  State<ContactPickerDialog> createState() => _ContactPickerDialogState();
}

class _ContactPickerDialogState extends State<ContactPickerDialog> {
  List<Contact> filteredContacts = [];
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredContacts = widget.contacts;
    searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredContacts = widget.contacts.where((contact) => contact.displayName.toLowerCase().contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        color: context.colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Translate.s.select_contact,
                style: AppTextStyle.s17_w600(color: context.colors.textColor),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration:
                  BoxDecoration(color: context.colors.textGaryColor.withOpacity(0.2), shape: BoxShape.circle),
                  child: Icon(
                    Icons.close_rounded,
                    color: context.colors.closeIconColor,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          Gaps.vGap16,
          CupertinoTextField(
            controller: searchController,
            placeholder: Translate.s.search,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            minLines: 1,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: context.colors.softSilver),
            ),
            placeholderStyle: AppTextStyle.s14_w400(color: context.colors.grey),
            style: AppTextStyle.s16_w400(color: context.colors.black),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                final contact = filteredContacts[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(contact.displayName.isNotEmpty ? contact.displayName[0].toUpperCase() : '?'),
                  ),
                  title: Text(
                    contact.displayName,
                    style: AppTextStyle.s16_w600(color: context.colors.black),
                  ),
                  subtitle: Text(
                    contact.phones.isNotEmpty ? contact.phones.first.number : "No phone number",
                    style: AppTextStyle.s15_w400(color: context.colors.black),
                  ),
                  onTap: () {
                    Navigator.pop(context, contact);
                    Navigator.pop(context, contact);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
