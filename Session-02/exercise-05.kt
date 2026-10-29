class Book(val title: String, val author: String) {
    fun displayInfo() {
        println("Title: $title, Author: $author")
    }
}

fun main() {
    val myBook = Book("The Great Gatsby", "F. Scott Fitzgerald")
    myBook.displayInfo()
}
