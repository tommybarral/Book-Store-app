import 'package:book_store_app/models/book_data.dart';
import 'package:book_store_app/screens/book_details_screen.dart';
//import 'package:book_store_app/widgets/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookScreen extends StatelessWidget {

  static const routeName = '/book-screen';

  var _searchBook = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.only(left: 10.0, top: 15.0),
            physics: BouncingScrollPhysics(),
            children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi tommy', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                    Text('Discover Lastest Book', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                    Container(
                      height: 45,
                      margin: EdgeInsets.only(top: 18, left: 25, right: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Stack(
                        children: [
                          TextField(
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            controller: _searchBook,
                            autofocus: false,
                            autocorrect: false,
                            enableSuggestions: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                              border: InputBorder.none,
                              hintText: 'Search book ...',
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red.withOpacity(0.7),
                                  ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search, color: Colors.white,),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(left: 25),
                      child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                            labelPadding: EdgeInsets.all(0),
                            indicatorPadding: EdgeInsets.all(0),
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                            tabs: [
                              Tab(
                                child: Container(
                                  margin: EdgeInsets.only(right: 23),
                                  child: Text('New'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  margin: EdgeInsets.only(right: 23),
                                  child: Text('Trending'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  margin: EdgeInsets.only(right: 23),
                                  child: Text('Best seller'),
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 21),
                      height: 210,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 25, right: 6),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 210,
                            width: 153,
                            margin: EdgeInsets.only(right: 19),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(BookDetailsScreen.routeName);
                          },
                          child: Container(
                            height: 81,
                            width: MediaQuery.of(context).size.width - 50,
                            margin: EdgeInsets.only(bottom: 19),
                            color: Colors.grey.withOpacity(0.4),
                            child: Row(
                              children: [
                                Container(
                                  height: 81,
                                  width: 62,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457')),
                                  ),
                                ),
                                SizedBox(width: 21),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('You\'re a miracle', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    SizedBox(height: 5),
                                    Text('Author', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5),
                                    Text('20', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
