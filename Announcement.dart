import 'package:flutter/material.dart';

void main() => runApp(Announcements());

class Announcements extends StatelessWidget {
  final List<String> announcements = [
    'In Ramdan main gate will remain open untill 10:00 pm as many people have to say Tarawi, Noone can enter in hostel after 10:00 pm so be on time!',
    //'In Ramdan main gate will remain open untill 10:00 pm as many people have to say Tarawi, Noone can enter in hostel after 10:00 pm so be on time!',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Announcements',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Color.fromARGB(255, 169, 149, 241),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => onBackPressed(context),
          ),
        ),
        body: Center(
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
                  width: 200,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 169, 149, 241),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8.0),
                          Text(
                            'Announcements',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0),
                    child: Text(
                      'Alert!',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 101, 132)),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: announcements.length,
                    itemBuilder: (context, index) {
                      final announcement = announcements[index];
                      final isEven = index % 2 == 0;
                      final color = isEven
                          ? Color.fromARGB(255, 209, 205, 205)
                          : Color.fromARGB(255, 226, 227, 228);
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: color,
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: ListTile(
                          title: Text('$announcement'),
                          contentPadding: EdgeInsets.only(left: 16.0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
