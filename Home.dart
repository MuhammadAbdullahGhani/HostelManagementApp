import 'package:flutter/material.dart';
import 'login.dart';
import 'Menu.dart';
import 'Rules.dart';
import 'Cleaning.dart';
import 'Announcement.dart';
import 'package:hostel/routing.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 169, 149, 241),
        title: Text(
          'Hostelite',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 169, 149, 241),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 68.0, top: 50),
                child: Text(
                  'NavBar',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // ),
            ),
            ListTile(
              leading: Icon(Icons.feed_outlined),
              title: Text('Rules'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rules()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on_outlined),
              title: Text('Fee Details'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text('Rooms'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book_rounded),
              title: Text('Menu'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star_outline_rounded),
              title: Text('Ratings'),
              onTap: () {
                // Nothing will Happenap
              },
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text('Cleanings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CleaningSchedule()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined),
              title: Text('Check ins'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Announcements'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Announcements()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.leaderboard_rounded),
              title: Text('Statistic Details'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.wechat_outlined),
              title: Text('Complaints'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.door_back_door_outlined),
              title: Text('Leave Request'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.crisis_alert_rounded),
              title: Text('Penalties'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact Us'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on_sharp),
              title: Text('Rental info'),
              onTap: () {
                // Nothing will Happen
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back_ios_new_rounded),
              title: Text('Log Out'),
              onTap: () {
                 Navigator.of(context).pushNamed(Approutes.authfifth);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 270,
          height: 280,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 205, 205),
            borderRadius: BorderRadius.circular(2),
          ),
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                '   Name :   Raza',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                '   CNIC :    12345-6789102-5',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                '   Phn# :    +9233255544433',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                '   Email :    xyz@gmail.com',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
