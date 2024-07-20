import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rooms List'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                leading: Image(
                  image: NetworkImage(
                      'https://hoteldel.com/wp-content/uploads/2021/03/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x1000-1.jpg'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  'King\nRoom',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                children: [
                  Text(
                    'A room with a king-sized bed.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                leading: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhOzrKw4ZcJEh-A8eT9RjSLDNltajkE9x8hw&usqp=CAU'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  'Double\nRoom',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                children: [
                  Text(
                    'A room assigned to two people.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.all(10),
                leading: Image(
                  image: NetworkImage(
                      'https://en.hotellebayeux.com/usermedia/photo-637154124168675106-2.jpg?dummy=0&h=800'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  'Family\nRoom',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                children: [
                  Text(
                    'A room assigned to three or four people.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => Dialog(
                          child: Container(
                            height: 500,
                            child: Column(
                              children: [
                                const Text(
                                  'Enter your information',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 250,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Name',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 250,
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        labelText: 'Email Address',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 250,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                        labelText: 'PhoneNumber',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ButtonBar(
                                alignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                  },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange
                                    ),
                                    child: Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),),
                                  ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange
                                    ),
                                    child: Text(
                                    ' Save ',
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),)
                                ],
                              )

                              ],
                            ),
                          ),
                        ));
              },
              child: const Text(
                'Next',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ))
        ]);
  }
}
