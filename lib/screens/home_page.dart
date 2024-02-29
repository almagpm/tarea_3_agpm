import 'package:flutter/material.dart';
import 'package:tarea3/models/libros.dart'; // Importa tu modelo de libros

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Book> _bookList = Book.bookList;

    
    List<String> _bookTypes = [
      'Novela',
      'Ficción histórica',
      'Misterio',
      'Ciencia ficción',
      
    ];

    
    bool toggleIsFavorited(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos'),
        backgroundColor: Color(0xFFB1BDC2), 
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    width: size.width * .9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black54.withOpacity(.6),
                        ),
                        const Expanded(
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Search Book',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.mic,
                          color: Colors.black54.withOpacity(.6),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1), 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50.0,
              width: size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _bookTypes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(
                          _bookTypes[index],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.w300,
                            color: selectedIndex == index
                                ? Colors.blue 
                                : Colors.black,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height - 190, 
              child: ListView.builder(
                itemCount: _bookList.length,
                itemBuilder: (BuildContext context, int index) {
                  Book book = _bookList[index];
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        book.imageURL,
                        width: 80,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      title: Text(book.title),
                      subtitle: Text(book.author),
                      trailing: IconButton(
                        icon: Icon(
                          book.isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // Lógica para alternar el estado de favorito todavia no se hace en esta tarea
                         
                        },
                      ),
                      onTap: () {
                        // Lógica para mostrar detalles del libro, no contemplado en esta tarea
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

