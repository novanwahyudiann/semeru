import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Semeru(),
    );
  }
}

class Semeru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2F1),
      appBar: AppBar(
        leading: Icon(Icons.landscape),
        title: Text("Gunung Semeru"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'asset/semeru.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 20),

              // Nama gunung
              Text(
                "Gunung Semeru",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Jawa Timur, Indonesia",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 20),

              // Informasi
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue[50],
                      child: Column(
                        children: [
                          Text("Ketinggian"),
                          SizedBox(height: 5),
                          Text(
                            "3.676 mdpl",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.green[50],
                      child: Column(
                        children: [
                          Text("Status"),
                          SizedBox(height: 5),
                          Text(
                            "Gunung Api",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Tentang
              Text(
                "Tentang Semeru",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Gunung Semeru adalah gunung tertinggi "
                "di Pulau Jawa dengan ketinggian sekitar "
                "3.676 meter di atas permukaan laut. "
                "Gunung ini berada di Jawa Timur.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 20),

              // Lokasi
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                color: Colors.blue[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lokasi",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Kabupaten Malang"),
                    Text("Jawa Timur"),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Pesan
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                color: Colors.green[50],
                child: Text(
                  "Jaga kebersihan dan kelestarian "
                  "alam Gunung Semeru.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Center(
                child: Text(
                  "SEMERU • EAST JAVA",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
