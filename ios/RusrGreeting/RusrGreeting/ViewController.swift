//
//  ViewController.swift
//  RusrGreeting
//
//  Created by Katsuhiko Terada on 2022/02/17.
//

import UIKit

class ViewController: UIViewController {
    
    let rustGreetings = RustGreetings()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let resultWord = rustGreetings.sayHello(to: "YUMEMI")
        print(resultWord)
    }
}

