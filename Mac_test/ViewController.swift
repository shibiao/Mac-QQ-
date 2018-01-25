//
//  ViewController.swift
//  Mac_test
//
//  Created by sycf_ios on 2018/1/16.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier!.rawValue == "show" {
            view.window?.close()
        }
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

