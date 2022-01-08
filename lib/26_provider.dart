import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppTheme extends ChangeNotifier {
  Color mainColor = Colors.blue;

  void changeThemeColor(Color color) {
    mainColor = color;
    notifyListeners();
  }
}

class BelajarProvider extends StatelessWidget {
  const BelajarProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppTheme>(
        create: (context) => AppTheme(),
      child: Consumer<AppTheme>(
        builder: (context, state, child) {
          return Scaffold(
            backgroundColor: state.mainColor,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Klik untuk ganti warna', style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),),
                  const SizedBox(height: 10.0,),
                  _RedButton(),
                  const SizedBox(height: 10.0,),
                  _BlueButton()
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

class _RedButton extends StatelessWidget {
  const _RedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.read<AppTheme>().changeThemeColor(Colors.red),
      style: ElevatedButton.styleFrom(primary: Colors.red),
      child: Text('Merah'),
    );
  }
}

class _BlueButton extends StatelessWidget {
  const _BlueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<AppTheme>().changeThemeColor(Colors.blue),
      style: ElevatedButton.styleFrom(primary: Colors.blue),
      child: Text('Biru'),
    );
  }
}



