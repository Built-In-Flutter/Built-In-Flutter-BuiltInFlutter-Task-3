// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsModel.dart';

class NewsDescriptionPage extends StatelessWidget {
  NewsModel model;

  NewsDescriptionPage(this.model);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(model.image),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  model.title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: const CircleAvatar(
                              radius: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("John Smith"),
                        ],
                      ),
                      Text(model.Date)
                    ],
                  ),
                ),
                Text(model.desc)
              ],
            ),
          )),
    );
  }
}
