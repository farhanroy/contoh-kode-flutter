import 'package:flutter/material.dart';

class BelajarForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  BelajarForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [], // Isi tampilan form
        ),
      ),
    );
  }
}

class _ContohTextFormField extends StatelessWidget {
  const _ContohTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: "Input Text",
      decoration: InputDecoration(
        errorText: "Error message",
        labelText: "Nama email dengan benar",
        suffixIcon: Icon(Icons.email),
        border: OutlineInputBorder()
      ),
    );
  }
}

class _ContohDropdown extends StatefulWidget {
  _ContohDropdown({Key? key}) : super(key: key);

  @override
  State<_ContohDropdown> createState() => _ContohDropdownState();
}

class _ContohDropdownState extends State<_ContohDropdown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(
          color: Colors.deepPurple
      ),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );
  }
}

class _ContohRadioButton extends StatefulWidget {
  const _ContohRadioButton({Key? key}) : super(key: key);

  @override
  State<_ContohRadioButton> createState() => _ContohRadioButtonState();
}

enum Warna {hijau, biru}

class _ContohRadioButtonState extends State<_ContohRadioButton> {

  Warna? _warna = Warna.hijau;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Pilih warna: "),
        RadioListTile<Warna>(
          title: const Text('Hijau'),
          value: Warna.hijau,
          groupValue: _warna,
          onChanged: (Warna? value) {
            setState(() {
              _warna = value;
            });
          },
        ),
        RadioListTile<Warna>(
          title: const Text('Biru'),
          value: Warna.biru,
          groupValue: _warna,
          onChanged: (Warna? value) {
            setState(() {
              _warna = value;
            });
          },
        ),
      ],
    );
  }
}

class _ContohCheckBox extends StatefulWidget {
  const _ContohCheckBox({Key? key}) : super(key: key);

  @override
  _ContohCheckBoxState createState() => _ContohCheckBoxState();
}

class _ContohCheckBoxState extends State<_ContohCheckBox> {

  bool _isYakin = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        value: _isYakin,
        title: const Text('Apakah anda yakin ?'),
        onChanged: (bool? value) {
          _isYakin = value!;
        }
    );
  }
}

class _ContohSwitch extends StatefulWidget {
  const _ContohSwitch({Key? key}) : super(key: key);

  @override
  _ContohSwitchState createState() => _ContohSwitchState();
}

class _ContohSwitchState extends State<_ContohSwitch> {
  bool _isMode = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Mode Malam'),
      subtitle: const Text('Aktifkan mode malam'),
      value: _isMode,
      onChanged: (bool value) { setState(() { _isMode = value; }); },
    );
  }
}


