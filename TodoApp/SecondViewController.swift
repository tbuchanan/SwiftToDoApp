//
//  SecondViewController.swift
//  TodoApp
//
//  Created by Tyler Buchanan on 6/11/14.
//  Copyright (c) 2014 Tyler Buchanan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    //UI TextFieldDelegate gives us access to extra functions
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAddTask_Click(sender:UIButton){
        taskMgr.addTask(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0;
    }
    
    //iOS Touch Functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
        //keyboards hide after event
        self.view.endEditing(true)
    }
    
    //UI TextFrield Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
    return true
    // keyboard goes away
    // called when 'return' key pressed. return NO to ignore.
    }

}

