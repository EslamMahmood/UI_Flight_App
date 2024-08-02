import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoracayPage extends StatefulWidget {
  const BoracayPage({super.key});

  @override
  State<BoracayPage> createState() => _BoracayPageState();
}

class _BoracayPageState extends State<BoracayPage> {
  bool _isblue = false;
  void _toggleColor() {
    setState(() {
      _isblue = !_isblue;
    });
  }

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
                      image: AssetImage('lib/images/tree.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: _buildIconButton(
                        CupertinoIcons.arrow_left, Colors.white),
                    onPressed:(){
                         Navigator.pushNamed(context, '/');}
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: IconButton(
                    icon: _buildIconButton(CupertinoIcons.heart,
                        _isblue ? Colors.blue : Colors.white),
                    onPressed: _toggleColor,
                    
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDestinationCard(
                        'Boracay', 'philippins', '5D4N', '\$349'),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text('Spend 5 days and 4 nights is one of the best'),
                    Text('island in the world! Bask in the sun while walking'),
                    Text('in the white sand beach and enjoy the night'),
                    Text('partying at the popular seaside bars'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Photos',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    
                    SingleChildScrollView(
  scrollDirection: Axis.horizontal, // Enable horizontal scrolling
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
    children: <Widget>[
      _buildImageWithSpacing('lib/images/beach2.jpeg'),
      _buildImageWithSpacing('lib/images/mountain2.jpeg'),
      _buildImageWithSpacing('lib/images/beach1.jpeg'),
      _buildImageWithSpacing('lib/images/mountain1.jpeg'),
      _buildImageWithSpacing('lib/images/tree.jpg'),
    ],
  ),
),
                    Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 20),
                          )),
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

  Widget _buildDestinationCard(
      String destination, String country, String duration, String price) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          destination,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          duration,
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Text(
                      price,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                Text(country, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithSpacing(String imagePath) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(imagePath, width: 120, height: 120),
        ),
        SizedBox(width: 10.0), // Space between images
      ],
    );
  }

  Widget _buildIconButton(IconData icon, Color color) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
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
