//
//  CustomTextField.swift
//  Mac_test
//
//  Created by sycf_ios on 2018/1/17.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Cocoa

class CustomTextField: NSTextField {
    let imageView = NSImageView(image: #imageLiteral(resourceName: "04"))
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        layer?.borderColor  = NSColor.white.cgColor
        layer?.borderWidth = 2
        layer?.cornerRadius = dirtyRect.height / 2
        layer?.masksToBounds = true
        
        addSubview(imageView)
//
        imageView.top(equalTo: sb_top,constant: 0).left(equalTo: sb_left,constant: 10).bottom(equalTo: sb_bottom,constant: 0).width(22).end()
        
    }
    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        imageView.removeFromSuperview()
    }
    
}
