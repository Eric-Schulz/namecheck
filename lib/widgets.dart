import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'home_screen.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField({this.onChanged, this.onSubmitted});

  Function onChanged;
  Function onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      enableInteractiveSelection: false,
      cursorColor: Colors.black,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          labelText: "insert name",
          labelStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15.0,
              color: Color.fromRGBO(255, 255, 255, 0.75),
              fontWeight: FontWeight.w600),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5), width: 2.0),
              borderRadius: BorderRadius.circular(8.0))),
    );
  }
}

class TransitionWidget extends StatelessWidget {
  const TransitionWidget({
    Key key,
    @required this.width,
    @required this.height,
    @required this.color,
    this.borderRadius,
  }) : super(key: key);

  final double width;
  final double height;
  final int color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.decelerate,
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradientList[color],
        color: kColorPageTurquoise,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomListItem extends StatelessWidget {
  Widget leading;
  String title;

  CustomListItem(this.leading, this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text("$title"),
    );
  }
}

class CustomCard extends StatelessWidget {
  Widget child;
  CustomCard(this.child);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromRGBO(255, 255, 255, 0),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5), width: 2.0),
          borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
