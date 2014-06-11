//
//  SecondViewController.swift
//  TodoApp
//
//  Created by Rahul Khanna on 6/11/14.
//  Copyright (c) 2014 Rahul Khanna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    //UI TextFieldDelegate gives us access to extra functions
    
    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        //println("the button was clicked.")
        taskMgr.addTask(name: txtTask.text, desc: txtDesc.text);
    }
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
        self.view.endEditing(true)
        //ends the editing when we click away from the text boxes
    }
    
    //UI TextFrield Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
    return true
    // keyboard goes away
    // called when 'return' key pressed. return NO to ignore.
    }

}

