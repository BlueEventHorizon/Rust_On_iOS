//
//  RustGreetings.swift
//  RustGreeting
//
//  Created by Katsuhiko Terada on 2022/02/17.
//

import Foundation

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}

