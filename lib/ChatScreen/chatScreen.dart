import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                ChatBubble(
                  message: 'Hello How are you doing today?',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'What is the waether today? Is it Sunny ',
                  isSender: true,
                ),

                ChatBubble(
                  message: 'I am fine',
                  isSender: true,
                ),
            






              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const ChatBubble({
    super.key, required this.message, required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: isSender==true? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:isSender==true?Color(0xfff3375d4): Color(0xff4A9EFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${message}',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: isSender==true?Colors.white :Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
