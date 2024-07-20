import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DateTime? checkInDate;
  DateTime? checkoutDate;
  var adult_Number = 0.0;
  var child_Number = 0.0;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Android ATC Hotel",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://www.ahstatic.com/photos/1276_ho_00_p_1024x768.jpg'),
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    const Text(
                      'Check-in Date : ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      checkInDate == null
                          ? 'no date Selected'
                          : '${checkInDate!.year}-${checkInDate!.month}-${checkInDate!.day}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () async {
                        checkInDate = await showDatePicker(
                            context: context,
                            initialDate: checkInDate ?? DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030));
                        setState(() {});
                      },
                      icon: const Icon(Icons.date_range),
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Check-in Date : ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      checkoutDate == null
                          ? 'no date Selected'
                          : '${checkoutDate!.year}-${checkoutDate!.month}-${checkoutDate!.day}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () async {
                        checkoutDate = await showDatePicker(
                            context: context,
                            initialDate: checkoutDate ?? DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030));
                        setState(() {});
                      },
                      icon: const Icon(Icons.date_range),
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Adults: '
                      '${adult_Number}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Slider(
                        activeColor: Colors.blue,
                        value: adult_Number,
                        onChanged: (value) {
                          setState(() {
                            adult_Number = value;
                          });
                        },
                        divisions: 6,
                        label: '$adult_Number.Adult',
                        max: 6,
                        min: 0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Children: '
                      '${child_Number}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 230,
                      child: Slider(
                        activeColor: Colors.blue,
                        value: child_Number,
                        onChanged: (value) {
                          setState(() {
                            child_Number = value;
                          });
                        },
                        divisions: 6,
                        label: '$child_Number.child',
                        max: 6,
                        min: 0,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: const Text(
                        'Extre: ',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 230,
                      width: double.infinity,
                      child: FlutGroupedButtons<String>(
                          labelStyle: const TextStyle(fontSize: 18),
                          data: const [
                            'Breakfast (10 USD/Day)',
                            'Internet WiFi (5 USD/Day)',
                            'Parking (5 USD/Day)',
                            'Swimming Pool (10 USD/Day)',
                          ],
                          onChanged: (value) {
                            print(value);
                          }),
                    ),
                    Container(
                        alignment: AlignmentDirectional.bottomStart,
                        child: const Text(
                          'View: ',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                      child: FlutGroupedButtons<String>(
                          isRadio: true,
                          labelStyle: const TextStyle(fontSize: 20),
                          data: const [
                            "City View",
                            "Sea View",
                          ],
                          onChanged: (value) {
                            print(value);
                          }),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.red)),
                        onPressed: () {
                          Navigator.pushNamed(context,'/RoomsPane');
                        },
                        child: const Text(
                          'Check Rooms and Ratess',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
