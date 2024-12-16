import 'package:flutter/material.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("About me ", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 35), )),
      ),
      body: Column(
        children: [
          for(var I in ["I am a passionate developer, eager to solve meaningful challenges.","My focus is on crafting user-friendly and engaging digital experiences.","Continuous learning keeps me updated and fuels my professional growth.","I value teamwork, collaboration, and effective communication in every project.","My goal is to build impactful solutions that inspire meaningful change."])
            Center(child: Text(I, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),))
        ],
      ),
    );

  }
}
