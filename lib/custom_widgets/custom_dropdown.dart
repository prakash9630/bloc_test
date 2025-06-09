import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';

class CustomDropdown<T> extends StatefulWidget {
  const CustomDropdown(
      {super.key,
      this.dropdownKey,
      required this.listItems,
      this.mode,
      this.onChanged,
      this.validator,
        required this.itemAsString,
      required this.selectedItem,});

  final Key? dropdownKey;
  final Mode? mode;
  final T selectedItem;
  final String Function(T)? itemAsString; // <-- ADD THIS
  final Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final FutureOr<List<T>> Function(String filter, LoadProps? loadProps) listItems;


  @override
  State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      key: widget.dropdownKey,
      selectedItem: widget.selectedItem,
      // mode: widget.mode ?? Mode.custom,
      items:widget.listItems,
      itemAsString: widget.itemAsString,
      onChanged: widget.onChanged,
      validator: widget.validator,
      popupProps: PopupProps.dialog(
        fit: FlexFit.loose,
          showSearchBox: true,
          showSelectedItems: true,
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Select"),
          ),
          suggestedItemProps: SuggestedItemProps(
            showSuggestedItems: true,
          ),
          searchFieldProps: TextFieldProps(onChanged: (value) {
            if (kDebugMode) {
              print(value);
            }
          })),
    );
  }
}
