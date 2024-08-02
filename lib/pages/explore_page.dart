import 'package:fickleflight_app/pages/bali.dart';
import 'package:fickleflight_app/pages/baros.dart';
import 'package:fickleflight_app/pages/boracay.dart';
import 'package:fickleflight_app/pages/palawan.dart';
import 'package:fickleflight_app/widgets/customDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  double _sliderVal = 0;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image(
          height: 50, // Adjust the height as needed
          width: 100, // Adjust the width as needed
          image: AssetImage('lib/images/logo.png'),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/images/profile.jpeg'),
            ),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage('lib/images/tower.jpeg'),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 300, // Adjust the height as needed
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Text(
                    'Paris',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, 
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 30,
                  child: Text(
                    '\$1299',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, 
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  right: 30,
                  child: Text(
                    'FROM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 30,
                  child: IconButton(
                    onPressed: _toggleColor,
                    icon: Icon(
                      CupertinoIcons.heart_fill,
                      color: _isblue ? Colors.blue : Colors.grey[300],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Upcoming Flight',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120, // Adjust the height as needed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('SIN',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ),
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: CustomThumbShape(),
                                ),
                                child: Slider(
                                  value: _sliderVal,
                                  activeColor: Colors.blue,
                                  min: 0,
                                  max: 100,
                                  divisions: 100, // the parts of the line
                                  label: _sliderVal
                                      .round()
                                      .toString(), // for the number appears on the slider
                                  onChanged: (y) {
                                    setState(() {
                                      _sliderVal = y;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('LAX',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Singapore'),
                              Text('Los Angeles'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Departs on: 1 May, 08:00 AM',
                                  style: TextStyle(color: Colors.grey)),
                              Text('4 days to go',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconButton(Icons.flight, 'Flight', Colors.purple),
                  _buildIconButton(Icons.hotel, 'Hotels', Colors.pink),
                  _buildIconButton(
                      Icons.attractions, 'Attractions', Colors.deepOrange),
                  _buildIconButton(Icons.restaurant, 'Eats', Colors.teal),
                  _buildIconButton(
                      Icons.directions_car, 'Commute', Colors.orange),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Trending Destinations',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildDestinationCard(context, 'Boracay', 'Philippines',
                            '5D4N', 'lib/images/beach1.jpeg', BoracayPage()),
                        _buildDestinationCard(context, 'Baros', 'Maldives',
                            '7D6N', 'lib/images/beach2.jpeg', BarosPage()),
                        _buildDestinationCard(context, 'Bali', 'Indonesia',
                            '3D2N', 'lib/images/mountain1.jpeg', BaliPage()),
                        _buildDestinationCard(context, 'Palawan', 'Philippines',
                            '3D2N', 'lib/images/mountain2.jpeg', PalawanPage()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Offers',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildOfferCard(
                          'lib/images/card1.png',
                          '20% discount for','Mastercard users',
                          'Limited time offer!'),
                      _buildOfferCard(
                          'lib/images/card.png',
                          '25% discount with','your Visa credit cards',
                          'Limited time offer!'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            icon: Icon(icon),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        Text(label),
      ],
    );
  }

  Widget _buildDestinationCard(
      BuildContext context,
      String destination,
      String country,
      String duration,
      String imagePath,
      Widget destinationPage) {
    return Card(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => destinationPage),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(imagePath, width: 70, height: 70)),
            ),
          ),
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
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          duration,
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ],
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
}

Widget _buildOfferCard(String imagePath, String textRow1,String textRow2, String subtitle) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 50, height: 50),
          const SizedBox(width: 8.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(textRow1,style:TextStyle(fontWeight:FontWeight.bold)),
              Text(textRow2),
              Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    ),
  );
}

class CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(30.0, 30.0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final icon = Icons.flight;
    TextPainter iconPainter = TextPainter(
      textDirection: textDirection,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: 20.0, // Adjust the size of the flight icon
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          color: Colors.blue,
        ),
      ),
    );

    iconPainter.layout();
    final double iconX = center.dx - iconPainter.width / 2;
    final double iconY = center.dy - iconPainter.height / 2;
    iconPainter.paint(canvas, Offset(iconX, iconY));
  }
}
