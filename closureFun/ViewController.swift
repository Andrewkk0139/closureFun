//
//  ViewController.swift
//  closureFun
//
//  Created by ANDREW KAISER on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       var decendingOrder = names.sorted(by: backwards)
       print(decendingOrder) // v this is a closure
        var blah = names.sorted { a, b in
            return a<b
        }
        print(blah)            // $ defines parameter then give them numbers, Cat is the exact same as blah
        var cat = names.sorted {$0 < $1}
        print(cat)              // > is a closure...why. Does same thing as backwards
        var chicken = names.sorted(by: >)
        print(chicken)
    }
    func backwards(first: String, last: String) -> Bool{
     return first>last //check what is the "larger" character. A being small and Z beng the biggest
    }

}

