import 'book.dart';

class BookData {
  List<Book> _bookItems = [
    Book(
      id: 'b1',
      title: 'CA',
      imageUrl: 'imageUrl',
      price: 29.99,
      author: 'Stephen King',
      year: 2010,
    ),
    Book(
      id: 'b2',
      title: 'Carry',
      imageUrl: 'imageUrl',
      price: 29.99,
      author: 'Stephen King',
      year: 2010,
    ),
    Book(
      id: 'b3',
      title: 'CA',
      imageUrl: 'imageUrl',
      price: 29.99,
      author: 'Stephen King',
      year: 2010,
    ),
    Book(
      id: 'b4',
      title: 'Carry',
      imageUrl: 'imageUrl',
      price: 29.99,
      author: 'Stephen King',
      year: 2010,
    ),
    Book(
      id: 'b5',
      title: 'CA',
      imageUrl: 'imageUrl',
      price: 29.99,
      author: 'Stephen King',
      year: 2010,
    ),
  ];

  List<Book> get bookItems {
    return [..._bookItems];
  }
}