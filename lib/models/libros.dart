class Book {
  final int bookId;
  final String title;
  final String author;
  final int pages;
  final double rating;
  final String publicationYear;
  final String category;
  final String imageURL;
  bool isFavorited;
  final String description;
  bool isSelected;

  Book(
      {required this.bookId,
        required this.title,
        required this.author,
        required this.pages,
        required this.rating,
        required this.publicationYear,
        required this.category,
        required this.imageURL,
        required this.isFavorited,
        required this.description,
        required this.isSelected});

  // Lista de datos de libros
  static List<Book> bookList = [
    Book(
        bookId:   0,
        title: 'La sombra del viento',
        author: 'Carlos Ruiz Zafón',
        pages:   464,
        rating:   4.3,
        publicationYear: '2001',
        category: 'Novela',
        imageURL: 'images/libro1.jpg',
        isFavorited: true,
        description: 'Un misterioso libro que cambia la vida de su lector, introduciéndolo a un mundo lleno de intrigas y misterios.',
        isSelected: false),
    Book(
        bookId:   1,
        title: 'Circe',
        author: 'Madeline Miller',
        pages:   464,
        rating:   4.2,
        publicationYear: '2011',
        category: 'Ficción histórica',
        imageURL: 'images/libro2.jpg',
        isFavorited: false,
        description: 'Una reinterpretación de la Odisea, centrada en la transformadora Circe y su encuentro con Odiseo.',
        isSelected: false),
  ];

  static List<Book> getFavoritedBooks(){
    List<Book> _bookList = Book.bookList;
    return _bookList.where((element) => element.isFavorited == true).toList();
  }


  static List<Book> addedToCartBooks(){
    List<Book> _selectedBooks = Book.bookList;
    return _selectedBooks.where((element) => element.isSelected == true).toList();
  }
}
