//
//  LoginWindowController.swift
//  MacQQ
//
//  Created by sycf_ios on 2017/12/15.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class LoginWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        //隐藏最小化按钮
        window?.standardWindowButton(.miniaturizeButton)?.isHidden = true
        //隐藏zoom按钮
        window?.standardWindowButton(.zoomButton)?.isHidden = true
        
        window?.standardWindowButton(.closeButton)?.isHidden = true
        //设置窗口颜色为白色
        window?.backgroundColor = .white
        //设置窗口整体可以移动
        window?.isMovableByWindowBackground = true
        
        
    }

}
