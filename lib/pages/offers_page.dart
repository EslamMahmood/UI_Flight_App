import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  bool _isBlue1 = false;
  bool _isBlue2 = false;

  void _toggleColor1() {
    setState(() {
      _isBlue1 = !_isBlue1;
    });
  }

  void _toggleColor2() {
    setState(() {
      _isBlue2 = !_isBlue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Offers'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: Icon(CupertinoIcons.arrow_left),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textContainer(
                          'LIMITED OFFER',
                          const Color.fromARGB(255, 2, 205, 185),
                        ),
                        IconButton(
                          onPressed: _toggleColor1,
                          icon: Icon(
                            CupertinoIcons.heart_fill,
                            color: _isBlue1 ? Colors.blue : Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildOfferCard(
                    'Get 20% discount ',
                    'with your master',
                    'credit cards',
                    'lib/images/card1.png',
                    Icons.arrow_right,
                    [
                      'Use your mastercard with any',
                      'transaction and get 20%',
                      'discount instantly!'
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textContainer(
                          'LIMITED OFFER',
                          const Color.fromARGB(255, 2, 205, 185),
                        ),
                        IconButton(
                          onPressed: _toggleColor2,
                          icon: Icon(
                            CupertinoIcons.heart_fill,
                            color: _isBlue2 ? Colors.blue : Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildOfferCard(
                    '25% discount ',
                    'with your VISA credit or',
                    'debit cards',
                    'lib/images/card.png',
                    Icons.arrow_right,
                    [
                      'Use your VISA credit or debit',
                      'card with any transaction and',
                      'get 25% discount instantly!'
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textContainer(String text, Color color) {
    return Container(
      width: 110,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildOfferCard(
    String boldText,
    String text1,
    String text2,
    String imagePath,
    IconData icon,
    List<String> descriptionLines,
  ) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                boldText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(text1),
            ],
          ),
          Text(text2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
              SizedBox(width: 40), // Add horizontal spacing
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: descriptionLines
                      .map((line) => Text(
                            line,
                            style: TextStyle(color: Colors.grey),
                          ))
                      .toList(),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(icon),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


