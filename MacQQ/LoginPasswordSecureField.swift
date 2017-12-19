//
//  LoginPasswordSecureField.swift
//  MacQQ
//
//  Created by sycf_ios on 2017/12/19.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class LoginPasswordSecureField: NSSecureTextField,NSTextFieldDelegate {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        self.delegate = self
        // Drawing code here.
    }
    override func mouseDown(with event: NSEvent) {
        self.currentEditor()?.selectAll(nil)
        self.placeholderString = ""
        
    }
    override func controlTextDidEndEditing(_ obj: Notification) {
        self.placeholderString = "输入密码"
    }
    
}

