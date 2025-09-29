import 'package:flutter/material.dart';

void main() {
  runApp(SchoolWebsite());
}

class SchoolWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Global Reciprocal College",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
        ),
      ),
      home: HomePage(),
      routes: {
        '/css': (_) => CssPage(),
        '/events': (_) => EventsPage(),
      },
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Global Reciprocal College")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            
            ClipOval(
              child: Image.network(
                "https://th.bing.com/th/id/OIP.LtrLFNZcKXIAeStM8pYuHAAAAA?w=140&h=150&c=7&r=0&o=7&pid=1.7&rm=3", 
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 10),
            Text("Global Reciprocal College",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),

            
            sectionBox(
              title: "MISSION",
              content:
              "GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professionals through values-based quality education.",
            ),

            
            sectionBox(
              title: "VISION",
              content: "A global community of excellent individuals with values.",
            ),

            
            sectionBox(
              title: "CORE VALUES",
              content: "Touching Hearts, Renewing Minds, Transforming Lives.",
            ),

            SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Image.network(
                    "https://tse3.mm.bing.net/th/id/OIP.ps8OprfGi86ldRdo_pVUdwAAAA?pid=ImgDet&w=60&h=60&c=7&rs=1&o=7&rm=3", 
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    "data:image/webp;base64,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", 
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    "data:image/webp;base64,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", 
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    "data:image/webp;base64,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", 
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                deptButton(context, "CSS", "/css"),
                deptButton(context, "EDUC", ""),
                deptButton(context, "COA", ""),
                deptButton(context, "CBA", ""),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  
  Widget sectionBox({required String title, required String content}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title,
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(content, textAlign: TextAlign.center),
        ],
      ),
    );
  }

 
  Widget deptButton(BuildContext context, String title, String route) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.red,
        disabledForegroundColor: Colors.white,
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      onPressed: route.isNotEmpty
          ? () => Navigator.pushNamed(context, route)
          : null,
      child: Text(title),
    );
  }
}


class CssPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CSS Department")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            Text("Welcome to the CSS Department",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 20),

            ClipOval(
              child: Image.network(
                "https://tse3.mm.bing.net/th/id/OIP.ps8OprfGi86ldRdo_pVUdwAAAA?pid=ImgDet&w=60&h=60&c=7&rs=1&o=7&rm=3", 
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text("Program Description",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                    "The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing, and administering, and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text("Additional Information",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                    "- Students will learn advanced programming concepts.\n"
                        "- Hands-on training with the latest tools and technologies.\n"
                        "- Opportunities for internships and industry certifications.\n"
                        "- Prepares students for careers in IT, software development, and systems management.",
                    textAlign: TextAlign.center,

                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            ClipOval(
              child: Image.network(
                "https://th.bing.com/th/id/OIP.BG-IwHdX29vNrXTnjcAGyQHaHa?w=176&h=180&c=7&r=0&o=7&pid=1.7&rm=3", 
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onPressed: () => Navigator.pushNamed(context, "/events"),
              child: Text("EVENTS"),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


class EventsPage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {"title": "CSS Orientation", "desc": "Freshmen orientation program"},
    {"title": "Hackathon", "desc": "Coding competition for students"},
    {"title": "Seminar", "desc": "Tech seminar with guest speakers"},
    {"title": "Research Conference", "desc": "Presentation of student research papers"},
    {"title": "Sports Festival", "desc": "Annual sports and wellness activities"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EVENTS")),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            color: Colors.white,
            margin: EdgeInsets.all(12),
            child: ListTile(
              leading: Icon(Icons.event, color: Colors.red, size: 32),
              title: Text(event["title"] ?? "",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(event["desc"] ?? ""),
            ),
          );
        },
      ),
    );
  }
}
