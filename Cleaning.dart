import 'package:flutter/material.dart';

void main() => runApp(CleaningSchedule());

class CleaningSchedule extends StatelessWidget {
  final Map<String, String> menuItems = {
    'Monday   ': '1 , 2 , 3 , 4 ',
    'Tuesday       ': '5 , 6 , 7 , 8',
    'Wednesday': '9 , 10 , 11',
    'Thursday ': '13 , 14 , 15',
    'Friday   ': '16 , 17, 18 , 19 ',
    'Saturday ': 'No Cleaning activity  ',
    'Sunday   ': 'Cleaned all rooms  ',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CLeaning',
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
                          Icon(Icons.delete_outline,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8.0),
                          Text(
                            'Cleanings',
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
                Expanded(
                  child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final dayOfWeek = menuItems.keys.toList()[index];
                      final menuItem = menuItems.values.toList()[index];
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
                          title: Text(
                              '   $dayOfWeek |                      $menuItem'),
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
