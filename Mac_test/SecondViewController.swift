//
//  SecondViewController.swift
//  Mac_test
//
//  Created by sycf_ios on 2018/1/16.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Cocoa

class SecondViewController: NSViewController {
    @IBOutlet weak var titleBar: NSView!
    
    @IBOutlet weak var menuStackView: NSStackView!
    
    @IBOutlet weak var searchWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchField: CustomTextField!
    var isSmallWindow: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        titleBar.wantsLayer = true
        titleBar.layer?.backgroundColor = NSColor(red:0.95, green:0.96, blue:0.94, alpha:1.00).cgColor
    }
    override func viewDidLayout() {
        super.viewDidLayout()
        let convertToSmallWindowWidth: CGFloat = 544
        if isSmallWindow {
            if (view.window?.frame.size.width)! > 381 {
                self.view.window?.setContentSize(NSMakeSize(convertToSmallWindowWidth, (self.view.window?.frame.size.height)!))
                searchWidthConstraint.animator().constant = 124
                if searchWidthConstraint.constant == 124 {
                    self.isSmallWindow = false
                }
                
            }
        }else {
            if (view.window?.frame.size.width)! <= convertToSmallWindowWidth && (view.window?.frame.size.width)! > 400{
                searchWidthConstraint.constant = 26
                self.view.window?.setContentSize(NSMakeSize(381, (self.view.window?.frame.size.height)!))
                self.isSmallWindow = true
                
            }else if (view.window?.frame.size.width)! > convertToSmallWindowWidth{
                searchWidthConstraint.animator().constant = 124
                self.isSmallWindow = false
               
            }
        }
        
    }
    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        searchField.window?.makeFirstResponder(nil)
    }
}
