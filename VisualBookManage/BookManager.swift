//
//  BookManager.swift
//  BookManager
//
//  Created by JinHan on 2016. 9. 20..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]() //mutable array
    
    func addBook(_ bookObject: Book?) {
        if let temp = bookObject {
            bookList += [temp]
        }
    }
    
    func shotAllBooks() -> String {
        var bookInfo = ""
        for book in bookList {
            bookInfo += "Name: \(book.name)\n"
            bookInfo += "Genre: \(book.genre)\n"
            bookInfo += "Author: \(book.author)\n"
            bookInfo += "------------------\n"
        }
        
        return bookInfo
    }
    
    func findBook(_ name:String?) -> String? {
        var bookInfo = ""
        if let i = bookList.index(where: {$0.name == name}) {
            bookInfo += "Name: \(bookList[i].name)\n"
            bookInfo += "Genre: \(bookList[i].genre)\n"
            bookInfo += "Author: \(bookList[i].author)\n"
            bookInfo += "------------------\n"
            
            return bookInfo
        }
        
        return nil
    }
    
    func countBook() -> Int {
        return bookList.count
    }
    
    func removeBook(_ name:String) -> Bool {
        if let i = bookList.index(where: {$0.name == name}) {
            bookList.remove(at: i)
            return true
        }
        return false
    }
}
