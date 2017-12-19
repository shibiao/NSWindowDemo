//
//  LoginImageButton.swift
//  MacQQ
//
//  Created by sycf_ios on 2017/12/15.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class LoginImageButton: NSButton {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        layer?.cornerRadius = dirtyRect.width / 2
        // Drawing code here.
        
    }
    
}
