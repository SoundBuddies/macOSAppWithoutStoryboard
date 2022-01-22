//
//  MainWindowViewController.swift
//  macOSAppWithoutStoryboard
//
//  Created by Stefan Schaflitzel on 22.01.22.
//

// everything explained on
//https://medium.com/@theboi/creating-macos-apps-without-a-storyboard-or-xib-file-516115ee9d26
// and
// https://medium.com/@theboi/macos-apps-without-storyboard-or-xib-menu-bar-in-swift-5-menubar-and-toolbar-6f6f2fa39ccb




import Cocoa

//change the xy coordinate from bottom left to upper left
class FlippedView: NSView {
    override var isFlipped: Bool { true }
}

class MainWindowViewController: NSViewController {

    private lazy var redBox = FlippedView(frame: NSRect(x: 0, y: 0, width: 50, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(redBox)
        redBox.wantsLayer = true
        redBox.layer?.backgroundColor = NSColor.red.cgColor
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    override func loadView() {
        self.view = FlippedView(frame: NSRect(x: 0, y: 0, width: 300, height: 600))
    }

}

