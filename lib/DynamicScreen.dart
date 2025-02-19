import 'package:flutter/material.dart';

class DynamicScreen extends StatelessWidget {
  final List<Map<String, String>> dummyData = [
    {'name': 'Crash Landing on You', 'description': 'Romance, Drama', 'image': 'https://th.bing.com/th/id/OIP.5O52qsdcNUdt7JRvNMuFMAHaLH?rs=1&pid=ImgDetMain'},
    {'name': 'Vincenzo', 'description': 'Crime, Comedy', 'image': 'https://i.mydramalist.com/vAnBe_4f.jpg'},
    {'name': 'Itaewon Class', 'description': 'Drama, Business', 'image': 'https://th.bing.com/th/id/OIP.0v6qYyzb-0fX50mxO9sslAHaK4?rs=1&pid=ImgDetMain'},
    {'name': 'Hospital Playlist', 'description': 'Medical, Friendship', 'image': 'https://i.mydramalist.com/RXXL6_4f.jpg'},
    {'name': 'Goblin', 'description': 'Fantasy, Romance', 'image': 'https://i.mydramalist.com/JkD8Xf.jpg'},
    {'name': 'The King: Eternal Monarch', 'description': 'Fantasy, Sci-Fi', 'image': 'https://i.mydramalist.com/eoD8Wf.jpg'},
    {'name': 'Start-Up', 'description': 'Business, Romance', 'image': 'https://i.mydramalist.com/RQLeY_4f.jpg'},
    {'name': 'Study Group', 'description': 'Action, Thriller, Comedy, Youth', 'image': 'https://i.mydramalist.com/ABRNyg_4c.jpg?v=1'},
    {'name': 'Sky Castle', 'description': 'Mystery, Drama', 'image': 'https://i.mydramalist.com/2wndKO_4c.jpg?v=1'},
    {'name': 'Reply 1988', 'description': 'Friendship, Comedy', 'image': 'https://i.mydramalist.com/EVe0p_4c.jpg?v=1'},
    {'name': 'Hotel Del Luna', 'description': 'Fantasy, Romance', 'image': 'https://i.mydramalist.com/RApq6c.jpg?v=1'},
    {'name': 'Penthouse', 'description': 'Thriller, Drama', 'image': 'https://i.mydramalist.com/qJqWK_4c.jpg?v=1'},
    {'name': 'Sweet Home', 'description': 'Horror, Thriller', 'image': 'https://i.mydramalist.com/xy8oq_4c.jpg?v=1'},
    {'name': 'The World of the Married', 'description': 'Melodrama, Thriller', 'image': 'https://i.mydramalist.com/W3gKXc.jpg?v=1'},
    {'name': 'Stranger', 'description': 'Crime, Thriller', 'image': 'https://i.mydramalist.com/1o3zzc.jpg?v=1'},
    {'name': 'Signal', 'description': 'Crime, Sci-Fi', 'image': 'https://i.mydramalist.com/6wYZO_4c.jpg?v=1'},
    {'name': 'Navillera', 'description': 'Drama, Slice of Life', 'image': 'https://i.mydramalist.com/wE3AA_4c.jpg?v=1'},
    {'name': 'Move to Heaven', 'description': 'Drama, Family', 'image': 'https://i.mydramalist.com/Rle36_4c.jpg?v=1'},
    {'name': 'Welcome to Samdalri', 'description': 'Romance, Comedy', 'image': 'https://i.mydramalist.com/wJwdQ1_4c.jpg?v=1'},
    {'name': 'D.P.', 'description': 'Action, Military', 'image': 'https://i.mydramalist.com/XkYln_4c.jpg?v=1'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("K-Drama List"),
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 160,
              child: Row(
                children: [
                  Image.network(
                    dummyData[index]['image']!,
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dummyData[index]['name']!,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(dummyData[index]['description']!),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
