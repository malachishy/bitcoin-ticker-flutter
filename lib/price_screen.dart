import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String dropdownValue;
  List<Widget> newList = ListConverter().convertList(currenciesList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: CupertinoPicker(
              itemExtent: 24,
              onSelectedItemChanged: (value) {
                Text text = newList[value];
                print(text.data);
              },
              children: newList,
            ),
          ),
        ],
      ),
    );
  }
}

// DropdownButton<String>(
//               icon: Icon(Icons.arrow_drop_down),
//               value: dropdownValue,
//               items: currenciesList.map<DropdownMenuItem<String>>((value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               //? Why do I need to create a new variable here for the UI to update with the new value?
//               //? Using only dropdownValue still prints the updated value, but it doesn't show in the screen.
//               onChanged: (value) {
//                 setState(() {
//                   dropdownValue = value;
//                   print(dropdownValue);
//                 });
//               },
//             ),
