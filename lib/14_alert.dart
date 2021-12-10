import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BelajarAlertDialog extends StatelessWidget {
  const BelajarAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ContohAlertRflutter();
  }
}

class _ContohAlertDialog extends StatelessWidget {
  const _ContohAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Click"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return _alertDialog(context);
              }
          );
        },
      ),
    );
  }

  Widget _alertDialog(BuildContext context) {
    return AlertDialog(
      title: Text("Alert Dialog Title"),
      content: Container(
        child: Text("Alert Dialog Description"),
      ),
      actions: [
        TextButton(
          child: Text('Ok'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}

class _ContohFormDialog extends StatelessWidget {
  const _ContohFormDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Click"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return _alertDialog(context);
              }
          );
        },
      ),
    );
  }

  Widget _alertDialog(BuildContext context) {
    return AlertDialog(
      title: Text("Login form"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 16,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 24,),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}

class _ContohAlertRflutter extends StatelessWidget {
  const _ContohAlertRflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () => _alertSuccess(context),
            child: Text("Alert Success")
        ),

        ElevatedButton(
            onPressed: () => _alertError(context),
            child: Text("Alert Error")
        ),

        ElevatedButton(
            onPressed: () => _alertInfo(context),
            child: Text("Alert Info")
        )
      ],
    );
  }

  _alertSuccess(context) async {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Login berhasil",
      desc: "Selamat anda berhasil login",
      buttons: [
        DialogButton(
          child: Text(
            "Selanjutnya",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ).show();
  }
  _alertError(context) async {
    Alert(
      context: context,
      type: AlertType.error,
      title: "Login gagal",
      desc: "Silahkan login kembali",
      buttons: [
        DialogButton(
          child: Text(
            "Kembali",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ).show();
  }

  _alertInfo(context) async {
    Alert(
      context: context,
      type: AlertType.info,
      title: "Info",
      desc: "Ini hanya sekedar info",
      buttons: [
        DialogButton(
          child: Text(
            "Info",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ).show();
  }
}





