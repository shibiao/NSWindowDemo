//
//  ViewController.swift
//  MacQQ
//
//  Created by sycf_ios on 2017/12/15.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var usersData = Array<Any>()
    @IBOutlet weak var collectionView: NSCollectionView!
    var  subWindow: NSWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        self.subWindow = NSWindow(contentRect: NSMakeRect((self.view.window?.frame.origin.x)!,
                                                          (self.view.window?.frame.origin.y)!+80,
                                                          (self.view.window?.frame.size.width)!,
                                                          0), styleMask: [.titled], backing: NSWindow.BackingStoreType.buffered, defer: true)
        let settingVC = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier.init(rawValue: "settingVC")) as! NSWindowController
//        self.subWindow?.isMovableByWindowBackground = true
        self.subWindow?.backgroundColor = .white
        self.subWindow?.animator().contentViewController = settingVC.contentViewController
        
        
        view.window?.animator().addChildWindow(self.subWindow!, ordered: .below)
    }
    @IBAction func handleClose(_ sender: Any) {
        NSApp.terminate(sender)
//        NSApplication.shared.terminate(sender)
//        NSApp 等于 NSApplication.shared
//        错误的写法：NSApplication.terminate(sender)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func handleSubWindow(_ sender: Any) {
        let sender = sender as! NSButton
       subWindow?.becomeKey()
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration = 0.5
            context.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            if sender.state == .on {
                self.subWindow?.animator().setFrame(NSMakeRect((self.view.window?.frame.origin.x)!,
                                                    (self.view.window?.frame.origin.y)!-78,
                                                    (self.view.window?.frame.size.width)!,
                                                    100), display: true)
                
                view.window?.animator().addChildWindow(self.subWindow!, ordered: .below)
            }else {
                if  self.subWindow != nil {
                    view.window?.removeChildWindow(self.subWindow!)
                    self.subWindow?.animator().setFrame(NSMakeRect((self.view.window?.frame.origin.x)!, ((self.view.window?.frame.origin.y)!+22), (self.view.window?.frame.width)!, 0), display: false)
                }
            }
        }, completionHandler: nil)
       
    }
    

}
extension ViewController: NSCollectionViewDataSource,NSCollectionViewDelegate {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return usersData.count
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        return NSCollectionViewItem()
    }
}
