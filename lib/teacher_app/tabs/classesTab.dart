import 'package:flutter/material.dart';

import '../constants.dart';

class ClassTab extends StatelessWidget {

  final List<Map<String, String>> questions = [
    {
      'question':'Why Plants Take CO2 ?',
      'time':'3:19'
    },
    {
      'question':'Why Plants Take CO2 ?',
      'time':'3:20'
      }
    ];
  Widget createList() {
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.01, horizontal: width * 0.08),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.04),
                  ),
                  color: Colors.black12.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.03, horizontal: width * 0.03),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(height * 0.3),
                      child: Image.asset('./././assets/question.png',
                          height: height * 0.05),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questions[index]['question'],
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(height:height*0.005),
                        Text(
                          questions[index]['time'],
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: height * 0.04),
      Expanded(child: createList())
    ]);
  }
}
