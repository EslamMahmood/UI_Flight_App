import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Eslam Mahmood Abdullah',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'eslammahmood111@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('lib/images/profile.jpeg'),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.person),
            title: const Text('Profile'),
            onTap: () {
              // Handle the home action
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.music_house),
            title: const Text('All Bookings'),
            onTap: () {
              // Handle the settings action
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.bell),
            title: const Text('Favourites'),
            onTap: () {
              // Handle the contacts action
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.mail),
            title: const Text('Get Help'),
            onTap: () {
              // Handle the about action
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.calendar),
            title: const Text('Covid Advisory'),
            onTap: () {
              // Handle the about action
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.star),
            title: const Text('Rate us'),
            onTap: () {
              // Handle the about action
              Navigator.pop(context); // Close the drawer
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(CupertinoIcons.arrow_right),
            title: const Text('Logout'),
            onTap: () {
              // Handle the logout action
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}


