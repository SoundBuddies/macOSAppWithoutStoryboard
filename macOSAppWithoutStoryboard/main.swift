//
//  main.swift
//  macOSAppWithoutStoryboard
//
//  Created by Stefan Schaflitzel on 22.01.22.
//

// everything explained on
//https://medium.com/@theboi/creating-macos-apps-without-a-storyboard-or-xib-file-516115ee9d26
// and
// https://medium.com/@theboi/macos-apps-without-storyboard-or-xib-menu-bar-in-swift-5-menubar-and-toolbar-6f6f2fa39ccb



import Foundation
import Cocoa

// because we deleted the storyboard and entry point of the app, we have to create a main.swift file to manually start the app and load the AppDelegate and main menu 

let delegate = AppDelegate()
let mainMenu = AppMenuBar()

NSApplication.shared.delegate = delegate
NSApplication.shared.mainMenu = mainMenu

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
