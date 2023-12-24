import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  String dis= "WHAT IS DISASTER?";
  String disa="Disasters can strike with devastating force, leaving destruction and despair in their wake. Whether it's a natural catastrophe like a hurricane, earthquake, or wildfire, or a human-made disaster such as a terrorist attack or industrial accident, the impact can be profound. Lives are disrupted, homes are destroyed, and communities are left reeling. The aftermath often requires an immense collaborative effort, involving emergency responders, government agencies, nonprofits, and volunteers, to provide relief and support to those affected. Disasters also underscore the importance of preparedness, resilience, and global cooperation in facing the unpredictable challenges that our world can present. Ultimately, in the face of disaster, communities come together to rebuild, demonstrating the resilience and strength of the human spirit";
  String distypes= "Types of Disaster && their Classification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [

              Text(
               dis ,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                disa
                  ),
              Text(distypes,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  "Types of Disaster: A disaster whether natural or human-induced is an event that results in a widespread human loss. It is followed by loss of livelihood, and property causing suffering and loss in a definite area. Disasters can be of different types based on speed and origin/cause. Based on speed, there are two types of disaster: Slow onset disaster and Rapid onset disaster. And, based on origin/cause, it can be of two kinds: natural and man-made disaster"),
              Text("Types of Disaster"),
              Text(
                  "Disaster can be categorized based upon different criteria, as based upon speed, it can be of two types, Slow-onset disaster, and Rapid onset disaster. Slow-onset disaster is such type of disaster that occurs slowly and slowly over time. Whereas, Rapid onset disaster is a disaster that occurs rapidly without any warning. Based upon origin/cause, disasters are of two types, Natural disasters, and man-made disasters. Natural Disaster is a disaster that occurs naturally while a man-made disaster which occurs through human interference"),
              Text("Based on Origin/Cause"),
              Text("Another category of disaster is based on origin/cause:"),
              Text("Based Upon Origin/Cause"),
              Text("Types"),
              Text("Natural Disaster"),
              Text(
                  "Definition : A natural disaster is an event that is caused by a natural hazard and leads to human, material, economic and environmental losses, which exceeds the ability of those affected to cope."),
              Text(
                  "Examples : Avalanches, Blizzards, Earthquakes, Floods, Hurricanes, landslides, Tornado, Tsunami, Volcanic eruptions, etc."),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
            ],
          ),
        ),
      ),
    ));
  }
}
