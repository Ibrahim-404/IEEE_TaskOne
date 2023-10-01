// Container(
//                 alignment: Alignment.topLeft,
//                 margin: EdgeInsets.only(left: 25),
//                 child: Text(
//                   "\$115.00",
//                   style: TextStyle(
//                     color: Color(0xFFFA6868),
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 18),
//               Container(
//                 alignment: Alignment.topLeft,
//                 margin: EdgeInsets.only(left: 25),
//                 child: Text(
//                   "Minimal chair",
//                   style: TextStyle(
//                     color: Color(0xFF27283A),
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               Column(
//                 //color option
//                 children: [
//                   RadioListTile<String>(
//                     value: 'Red',
//                     groupValue: selectedColor,
//                     onChanged: handleColorChange,
//                     title: Text('Red'),
//                   ),
//                   RadioListTile<String>(
//                     value: 'Blue',
//                     groupValue: selectedColor,
//                     onChanged: handleColorChange,
//                     title: Text('Blue'),
//                   ),
//                   RadioListTile<String>(
//                     value: 'Green',
//                     groupValue: selectedColor,
//                     onChanged: handleColorChange,
//                     title: Text('Green'),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (selectedColor != null && selectedColor!.isNotEmpty) {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Success'),
//                           content: Text('You bought $selectedColor color!'),
//                           actions: <Widget>[
//                             TextButton(
//                               child: Text('OK'),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     ); //if
//                   } else {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Error'),
//                           content: Text('Please select a color to buy.'),
//                           actions: <Widget>[
//                             TextButton(
//                               child: Text('OK'),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 },
//                 child: Text('Buy Now'),
//               ),
//             ],