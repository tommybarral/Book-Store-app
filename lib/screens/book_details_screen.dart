import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  static const routeName = '/book-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 49,
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        color: Colors.transparent,
        child: FlatButton(
          color: Colors.red.withOpacity(0.5),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Add to library', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.grey,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.red.withOpacity(0.5),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 172,
                          width: 225,
                          margin: EdgeInsets.only(bottom: 62),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457'),
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 24, left: 25),
                      child: Text('The king of drugs', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 25),
                      child: Text('Nora Barret', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\$', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                          Text('20', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      margin: EdgeInsets.only(top: 20),
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
                                child: Text('Description'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: EdgeInsets.only(right: 23),
                                child: Text('Review'),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: EdgeInsets.only(right: 23),
                                child: Text('similiar'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 1.5, height: 2),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
