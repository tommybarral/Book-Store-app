import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {

  var _searchBook = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        color: Colors.white,
        child: Container(
          height: 62,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
              Icon(Icons.favorite_border),
              Icon(Icons.person_rounded),
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white60,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi tommy'),
                Text('Discover Lastest Book'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: _searchBook,
                        autofocus: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        obscureText: false,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search book',
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('New'),
                    Text('Trending'),
                    Text('Best seller'),
                    SizedBox(
                      width: 150,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 225,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, right: 16.0),
                          child: Container(
                            height: 110,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, right: 16.0),
                          child: Container(
                            height: 110,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, right: 16.0),
                          child: Container(
                            height: 110,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('Popular'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, bottom: 8.0),
                          child: Container(
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, bottom: 8.0),
                          child: Container(
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 8.0, bottom: 8.0),
                          child: Container(
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Book here')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
