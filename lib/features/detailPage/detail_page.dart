import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/d5/5a/e1/d55ae13ff7613b4e0d2dc56b3b95a5c2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
                child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            )),
            Positioned(
              top: 330,
              child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
