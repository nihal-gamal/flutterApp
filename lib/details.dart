import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/articles.dart';

class ArticleDetailesScreen extends StatelessWidget {
  const ArticleDetailesScreen({super.key, required this.userDetails});
  final User userDetails;
  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(userDetails.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Card(
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                    child: Image.network(
                      userDetails.picture,
                      fit: BoxFit.cover,
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(userDetails.content),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}