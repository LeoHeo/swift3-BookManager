//
//  Book.swift
//  BookManager
//
//  Created by JinHan on 2016. 9. 20..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import Foundation

class Book {
    var name =   ""
    var genre =  ""
    var author = ""
    
    func bookPrint() {
        print("Name: \(name)")
        print("Genre: \(genre)")
        print("Author: \(author)")
    }
}
