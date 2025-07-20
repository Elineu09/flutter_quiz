import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color getIndexColor(Map<String, Object> data) {
    return data['user_answer'] == data['correct_answer']
        ? Color.fromARGB(255, 63, 219, 68)
        : Color.fromARGB(255, 231, 70, 70);
  }

  @override
  Widget build(context) {
    //final questionIndexColor;

    return SizedBox(
      height: 465,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: getIndexColor(data),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(data['user_answer'] as String,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 187, 170, 170),
                      ),),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 63, 219, 68),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
