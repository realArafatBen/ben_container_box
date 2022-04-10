import 'package:flutter/material.dart';

class BenContainerBox extends StatefulWidget {
  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textcolor;
  final String subtitle;
  final Color? subtitlecolor;
  final EdgeInsetsGeometry? padding;

  const BenContainerBox(
      {Key? key,
      this.width,
      required this.height,
      this.color1,
      this.color2,
      required this.title,
      this.textcolor,
      required this.subtitle,
      this.subtitlecolor,
      this.padding})
      : super(key: key);

  @override
  State<BenContainerBox> createState() => _BenContainerBoxState();
}

class _BenContainerBoxState extends State<BenContainerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [
            widget.color1 ?? const Color(0xFFCB1841),
            widget.color2 ?? const Color(0xff2684de)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "${widget.title}",
              style: TextStyle(
                color: widget.textcolor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
