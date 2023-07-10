import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: data['user_answer'] == data['correct_answer']
              ? Colors.blue[400]
              : Colors.purple[400],
          child: Text(
            data['question_index'].toString(),
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                data['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.purple[300],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
