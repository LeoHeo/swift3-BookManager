//
//  ViewController.swift
//  VisualBookManage
//
//  Created by JinHan on 2016. 9. 20..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myBook = BookManager()
    
    @IBOutlet var outputTextView:UITextView!
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "셰익스피어"
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나"
        book2.genre = "전쟁소설"
        book2.author = "헤밍웨이"
        
        let book3 = Book()
        book3.name = "죄와벌"
        book3.genre = "사실주의"
        book3.author = "톨스토아"
        
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
    }
    
    @IBAction func showAllBookAction(_ sender: AnyObject) {
        outputTextView.text = myBook.shotAllBooks()
    }
    
    @IBAction func addBookAction(_ sender: AnyObject) {
        let bookTemp:Book = Book()
        
        if nameTextField.text != "" || genreTextField.text != "" || authorTextField.text != "" {
            bookTemp.name = nameTextField.text!
            bookTemp.genre = genreTextField.text!
            bookTemp.author = authorTextField.text!
            
            myBook.addBook(bookTemp)
            outputTextView.text = "\(nameTextField.text!) 도서가 등록되었습니다."
            
            nameTextField.text = nil
            genreTextField.text = nil
            authorTextField.text = nil
        }
    }
    
    @IBAction func findBookAction(_ sender: AnyObject) {
        if let resultBook = myBook.findBook(nameTextField.text!) {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "찾으시는 책이 없습니다."
        }
    }
    
    @IBAction func removeBookAction(_ sender: AnyObject) {
        if myBook.removeBook(nameTextField.text!) {
            outputTextView.text = "\(nameTextField.text!)이 정상적으로 삭제되었습니다."
        } else {
            outputTextView.text = "삭제 할 책이 존재하지 않습니다."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

