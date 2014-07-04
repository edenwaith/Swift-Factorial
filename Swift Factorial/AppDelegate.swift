//
//  AppDelegate.swift
//  Swift Factorial
//
//  Created by Chad Armstrong on 6/9/14.
//  Copyright (c) 2014 Edenwaith. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
	@IBOutlet var window: NSWindow
	@IBOutlet var textField: NSTextField
	@IBOutlet var button: NSButton


	func applicationDidFinishLaunching(aNotification: NSNotification?) {
		// Insert code here to initialize your application
		self.window.center();
	}

	func applicationWillTerminate(aNotification: NSNotification?) {
		// Insert code here to tear down your application
	}

	@IBAction func calculateButtonClicked(sender : AnyObject) {
		var originalValue: Double = self.textField.doubleValue;
		var newValue: Double = 0
		
		if (fmod(originalValue, floor(originalValue)) == 0) { // integer
			// rounding helps prevent precision errors
			newValue = round(exp(lgamma(originalValue+1.0)))
		} else {
			newValue = exp(lgamma(originalValue + 1))
			println(String(format: "%@%.2f", "a float number: ", newValue))
		}
		
		self.textField.doubleValue = newValue
	}

}

