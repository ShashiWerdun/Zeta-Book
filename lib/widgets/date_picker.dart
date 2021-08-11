import 'package:dropdown_date_picker/dropdown_date_picker.dart';

DropdownDatePicker dropdownDatePicker() {
  return DropdownDatePicker(
    firstDate: ValidDate(year: 2000, month: 1, day: 1),
    lastDate: ValidDate(year: 3000, month: 1, day: 1),
    dateFormat: DateFormat.dmy,
  );
}
