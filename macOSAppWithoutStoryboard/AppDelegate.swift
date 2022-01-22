//
//  AppDelegate.swift
//  macOSAppWithoutStoryboard
//
//  Created by Stefan Schaflitzel on 22.01.22.
//


// everything explained on
//https://medium.com/@theboi/creating-macos-apps-without-a-storyboard-or-xib-file-516115ee9d26
// and
// https://medium.com/@theboi/macos-apps-without-storyboard-or-xib-menu-bar-in-swift-5-menubar-and-toolbar-6f6f2fa39ccb


import Cocoa


class AppDelegate: NSObject, NSApplicationDelegate {

    
    private var window: NSWindow?

    
    func applicationDidFinishLaunching(_ aNotification: Notification) {

        // initialise the window. Everything related to the window itself will be done here. Everything related to the CONTENT of the window will be done in the ViewController. Therefor the window position and size doesn't matter here because it will resize with the ViewController aka the content of the window.
        window = NSWindow(contentRect: NSMakeRect(0, 0, 0, 0), styleMask: [.closable, .miniaturizable, .resizable, .titled], backing: NSWindow.BackingStoreType.buffered, defer: false)
        window?.appearance = NSAppearance(named: .vibrantDark)
        window?.title =  "StoryboardLess" // set the window title
        window?.contentViewController = MainWindowViewController() // assign a ViewController to the window
        window?.makeKeyAndOrderFront(nil)
        
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

