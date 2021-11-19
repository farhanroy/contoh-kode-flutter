import 'package:flutter/material.dart';

class BelajarButton extends StatelessWidget {
  const BelajarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan")
        ),
        SizedBox(height: 16,),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.room_rounded),
            label: Text('Enabled Icon Button')
        ),
        SizedBox(height: 16,),
        ElevatedButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),

          ),
        ),
        SizedBox(height: 16,),
        OutlinedButton(
            onPressed: () { /* TODO */ },
            child: Text("Tekan"),
            style: ButtonStyle(
                side: MaterialStateProperty.all(
                    BorderSide(width: 2, color: Colors.red)),
                foregroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                textStyle:
                MaterialStateProperty.all(TextStyle(fontSize: 30))
            )
        ),
        SizedBox(height: 16,),
        TextButton(
          onPressed: () {},
          child: Text(
            'Text Button',
          ),
          style: TextButton.styleFrom(
              primary: Colors.purple,
              backgroundColor: Colors.amber,
              textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        ),
      ],
    );
  }
}


