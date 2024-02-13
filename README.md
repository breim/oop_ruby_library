# Ruby OOP Test - Library Management System

This test is designed to assess intermediate Ruby programming skills, specifically in Object-Oriented Programming (OOP). The goal is to implement a simplified library management system using three main classes: `Book`, `Shelf`, and `Library`.

## Overview

### Classes and Responsibilities

#### `Book`
- **Attributes:** `title`, `author`, `year`
- **Methods:**
  - `to_s`: Returns a string containing the book's information.

#### `Shelf`
- **Attributes:** `category`, `books` (a list)
- **Methods:**
  - `add_book(book)`: Adds a book to the shelf.
  - `remove_book(title)`: Removes a book from the shelf by title.
  - `list_books`: Lists all the books on the shelf.

#### `Library`
- **Attributes:** `shelves` (a list)
- **Methods:**
  - `add_shelf(shelf)`: Adds a new shelf to the library.
  - `add_book_to_shelf(book, category)`: Adds a book to a specific shelf by category. Creates the shelf if it doesn't exist.
  - `remove_book(title)`: Removes a book from any shelf in the library by title.
  - `list_all_books`: Lists all the books in the library.

## Instructions

1. **Implementation**: Follow the class descriptions above to implement the system. Ensure interactions between classes are done through their public methods.
2. **Demonstration**: Create a script at the end of your implementation to demonstrate the functionality of your system. This should include creating shelves and books, adding books to shelves, and listing all books in the library.
3. **Error Handling**: Implement error handling where necessary, such as when attempting to remove a book that does not exist.
4. **Documentation**: Comment your code to explain the functionality and purpose of your methods and classes.

## Objective

The test evaluates your ability to apply OOP principles in Ruby, including class design, method definitions, instance variable management, error handling, and code organization and documentation.

Good luck!
