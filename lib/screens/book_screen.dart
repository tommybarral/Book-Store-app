import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/book_details_screen.dart';

class BookScreen extends StatelessWidget {
  BookScreen({Key? key}) : super(key: key);

  static const routeName = '/book-screen';

  final _searchBook = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.only(left: 10.0, top: 15.0),
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hi tommy', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                  const Text('Discover Lastest Book', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(top: 18, left: 25, right: 25),
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
                          decoration: const InputDecoration(
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
                                icon: const Icon(Icons.search, color: Colors.white,),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(left: 25),
                    child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                          labelPadding: const EdgeInsets.all(0),
                          indicatorPadding: const EdgeInsets.all(0),
                          isScrollable: true,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          labelStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                margin: const EdgeInsets.only(right: 23),
                                child: const Text('New'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: const EdgeInsets.only(right: 23),
                                child: const Text('Trending'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: const EdgeInsets.only(right: 23),
                                child: const Text('Best seller'),
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 21),
                    height: 210,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 25, right: 6),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 210,
                          width: 153,
                          margin: const EdgeInsets.only(right: 19),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            image: const DecorationImage(
                              image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 25.0),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
                    physics: const  BouncingScrollPhysics(),
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
                          margin: const EdgeInsets.only(bottom: 19),
                          color: Colors.white.withOpacity(0.9),
                          child: Row(
                            children: [
                              Container(
                                height: 81,
                                width: 62,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457')),
                                ),
                              ),
                              const SizedBox(width: 21),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
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
