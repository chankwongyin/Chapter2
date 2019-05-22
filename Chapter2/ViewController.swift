//
//  ViewController.swift
//  Chapter2
//
//  Created by Tony Chan on 23/5/2019.
//  Copyright © 2019 Tony Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MARK: String
        
        //string init
        let example = "" //empty string
        
        //check if a string is empty
        print(example.isEmpty)
        
        //multiple lines
        //escape charater \
        let example2 = """
        hi
        my
        name
        is
        \"Tony\"
        """
        print(example2)
        
        //MARK: Functions
        
        //define a function
        func sayHello(){
            print("function: hello")
        }
        sayHello()
        
        //define a function with parameter and return type
        func sayHelloTo(aaaa para: String) -> String {
            return "Hello \(para)"
        }
        print(sayHelloTo(aaaa: "Tony"))
        
        //add default value and omit the argument label
        func sayHelloToNoLabel(_ para: String = "Alice") -> String {
            return "Hello \(para), no need lable!"
        }
        print(sayHelloToNoLabel()) //default value
        print(sayHelloToNoLabel("Tony"))
        
        //MARK: Struct
        //you can create a custom data type with struct
        
        /***
        Using let on a struct makes that object a constant. It cannot be changed or reassigned and neither can its variables. A struct created as a var can have its variables changed.
        
        The struct milo was created with let therefore it cannot have its variables changed. The dog cannot be renamed.
        
        The struct meg was created as a variable, therefore we can change its variables and rename the dog.
        
        Since classes are reference objects the only difference between let and var is the ability to reassign the variable to a different class of the same type. The let and var keywords do not affect the ability to change a variable on a class.
        ***/
        
        //mutating keyword
        struct Human {
            var name : String = ""
            var age : Int = 0
//            func updateName(){ //error
//                name = "tony"
//            }
            mutating func updateAge(){
                age += 1
            }
        }
        
        //property observers
        struct Counter {
            var count = 0 {
                willSet {
                    print("when the count starts to be modified")
                }
                didSet {
                    print("after count is modified")
                }
            }
        }
        
        //MARK: Class
        
        //inheritance
        class SomeSuperClass{
            
        }
        class subclass: SomeSuperClass{
            
        }
    }


}

