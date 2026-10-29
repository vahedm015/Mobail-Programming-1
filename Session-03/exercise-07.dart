class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayInfo() {
    print("Title: $title, Author: $author");
  }
}

void main() {
  Book myBook = Book("The Great Gatsby", "F. Scott Fitzgerald");
  myBook.displayInfo();
}
