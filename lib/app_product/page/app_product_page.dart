import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jarnama_app/components/custom_text_field.dart';

class AppProductPage extends StatelessWidget {
  const AppProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _title = TextEditingController();
    final _desc = TextEditingController();
    final _dateTime = TextEditingController();
    final __phoneNumber = TextEditingController();
    final __userName = TextEditingController();
    final __address = TextEditingController();
    final _price = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('AppProductPage'),
      ),
      body: ListView(padding: EdgeInsets.fromLTRB(20, 20, 20, 20), children: [
        CustomTextField(
          controller: _title,
          hintText: 'Title',
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: _desc,
          hintText: 'Descriptipn',
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: _dateTime,
          hintText: 'DateTime',
          focusNode: FocusNode(),
          onTap: () async {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return Container(
                  height: MediaQuery.of(context).copyWith().size.height * 0.25,
                  color: Colors.white,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      _dateTime.text = value.toString();
                    },
                    initialDateTime: DateTime.now(),
                    minimumYear: 2000,
                    maximumYear: 3000,
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: __phoneNumber,
          hintText: 'PhoneNumber',
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: __userName,
          hintText: 'UserName',
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: __address,
          hintText: 'Address',
        ),
        const SizedBox(height: 12),
        CustomTextField(
          controller: _price,
          hintText: 'Price',
        ),
        const SizedBox(height: 12),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.publish),
            label: Text('Add to FireStore'))
      ]),
    );
  }
}
