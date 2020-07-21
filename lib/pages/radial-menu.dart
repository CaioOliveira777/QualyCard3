import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'http://www.meuqualycard.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class RadialMenu extends StatefulWidget {
  RadialMenu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RadialMenuState createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu> {
  List<String> imageLinks = [
    'class-individual-site.jpg',
    'descontos.png',
    'top-empresarial-site.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            height: 200.0,
            items: imageLinks.map((imageLink) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: FlatButton(
                      onPressed: () {
                        _launchURL();
                      },
                      child: Image.asset(
                        imageLink,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),

            reverse: false, //is false by default (reverses the order of items)
            enableInfiniteScroll:
                true, //is true by default (it scrolls back to item 1 after the last item)
            autoPlay: true, //is false by default
            initialPage: 0, //allows you to set the first item to be displayed
            scrollDirection: Axis.horizontal, //can be set to Axis.vertical
            pauseAutoPlayOnTouch: Duration(
                seconds: 5), //it pauses the sliding if carousel is touched,
            onPageChanged: (int pageNumber) {
              //this triggers everytime a slide changes
            },
            viewportFraction: 0.8,
            enlargeCenterPage: true, //is false by default
            aspectRatio:
                4 / 3, //if height is not specified, then this value is used
          )
        ],
      ),
    );
  }
}
