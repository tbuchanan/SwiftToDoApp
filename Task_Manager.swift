//
//  Task_Manager.swift
//  TodoApp
//
//  Created by Rahul Khanna on 6/11/14.
//  Copyright (c) 2014 Rahul Khanna. All rights reserved.
//


import UIKit

var taskMgr: Task_Manager = Task_Manager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}


class Task_Manager: NSObject {
    var tasks = task[]()
    //empty array to push our tasks into
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
        //pushing into tasks array using append
    }
}
