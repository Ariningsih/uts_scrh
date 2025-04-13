import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<Map<String, dynamic>> searchResults = [
    {
      'title': "Hitman's Wife's Bodyguard",
      'rating': 3.5,
      'genres': "Comedy",
      'description':
          "The world's most lethal odd couple bodyguard Michael Bryce and hitman Darius Kincaid are back on another mission."
    },
    {
      'title': "Hitman's Wife's Bodyguard",
      'rating': 4,
      'genres': "Action",
      'description':
          "The world's most lethal odd couple bodyguard Michael Bryce and hitman Darius Kincaid are back on another mission."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[850],
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  )),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search results (${searchResults.length})',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
                child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final movie = searchResults[index];
                return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 140,
                          color: Colors.grey[700],
                        ),
                        SizedBox(width: 16),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                              movie['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                        SizedBox(height: 4),
                        Row(
                              children: List.generate(5, (i) {
                                return Icon(
                                  i < movie['rating'].floor()
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: Colors.yellow,
                                  size: 16,
                                );
                              }),
                            ),
                        SizedBox(
                              height: 4,
                            ),
                        Text(
                              movie['genres'],
                              style: TextStyle(color: Colors.white70),
                            ),
                        SizedBox(
                              height: 4,
                             ),
                        Text(
                              movie['description'],
                              style: TextStyle(color: Colors.white54),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ))
                  ],
                ));
               },
            ))
          ],
        ),
      ),
    );
  }
}
