import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  double _sliderVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Bookings'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(CupertinoIcons.arrow_left)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Upcoming Bookings',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage('lib/images/booking.jpg'),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 300, // Adjust the height as needed
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Terminal 1',
                              style: TextStyle(color: Colors.grey)),
                          Text('Terminal 4',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                          'lib/images/logo.png',
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text('United Airlines',
                            style: TextStyle(color: Colors.grey)),
                      ]),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text('01 hr 40min',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Show more details...',
                  style: TextStyle(color: Colors.blue)),
              const SizedBox(
                height: 10,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Booking',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(30.0, 30.0); // Adjust the size of the thumb icon
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
