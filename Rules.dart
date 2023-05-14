import 'package:flutter/material.dart';

void main() => runApp(Rules());

class Rules extends StatelessWidget {
  final Map<String, String> menuItems = {
    '1': 'No one will enter after 10pm',
    '2': 'Student Must Keep the room neat',
    '3': 'Defacing wall and equipment is prohibited',
    '4': 'Any kind of celebration is not allowed',
    '5': 'Noise Making is not allowed in the Hostel',
    '6': 'Smoking is Prohibited',
    '7': 'Checking ins is must',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rules',
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
                          Icon(Icons.feed_outlined,
                              color: Colors.white, size: 20),
                          SizedBox(width: 8.0),
                          Text(
                            'Rules',
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
                          title: Text('   $dayOfWeek | $menuItem'),
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
