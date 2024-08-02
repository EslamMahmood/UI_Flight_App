import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/profile_page.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: _buildIconButton(CupertinoIcons.arrow_left, Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: IconButton(
                    icon: _buildIconButton(CupertinoIcons.pencil, Colors.white),
                    onPressed: () {
                      // Edit action
                    },
                  ),
                ),
              
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),
              child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('lib/images/profile.jpeg'), 
                    ),
                  ),
                  Text(
                    'Eslam Mahmood Abdullah',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Baguio, Philippines',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I like the beach, mountains, forest and everything',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('about nature! :)',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 20),
                  _buildProfileOption(
                    context,
                    CupertinoIcons.creditcard,
                    'Payment Details',
                    Colors.blue,
                  ),
                  _buildProfileOption(
                    context,
                    CupertinoIcons.info,
                    'Covid Advisory',
                    Colors.blue,
                  ),
                  _buildProfileOption(
                    context,
                    CupertinoIcons.person,
                    'Referral Code',
                    Colors.blue,
                    isNew: true,
                  ),
                  _buildProfileOption(
                    context,
                    CupertinoIcons.settings,
                    'Settings',
                    Colors.blue,
                  ),
                  _buildProfileOption(
                    context,
                    CupertinoIcons.arrow_right,
                    'Logout',
                    Colors.blue,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.question_circle, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          'Have questions? We are here to help',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
    
      ),
    );
  }

  Widget _buildProfileOption(
      BuildContext context, IconData icon, String title, Color color,
      {bool isNew = false}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Row(
        children: [
          Text(title),
          if (isNew)
            SizedBox(width: 5),
          if (isNew)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'NEW',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
      onTap: () {
        // Handle the tap event here
      },
    );
    
  }
  Widget _buildIconButton(IconData icon, Color color) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            icon: Icon(icon),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}


