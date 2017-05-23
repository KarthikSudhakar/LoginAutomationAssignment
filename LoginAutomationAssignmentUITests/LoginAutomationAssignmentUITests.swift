//
//  LoginAutomationAssignmentUITests.swift
//  LoginAutomationAssignmentUITests
//
//  Created by Student on 5/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import XCTest

class LoginAutomationAssignmentUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
                
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
       
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
       
        super.tearDown()
        
    }
    
    func testExample() {
        
        
        
        
        
        let window = XCUIApplication().windows["Window"]
        let signInWithYourAppleIdAppleDeveloperWebView = window.webViews["Sign in with your Apple ID - Apple Developer"]
        signInWithYourAppleIdAppleDeveloperWebView.textFields["Apple ID"].click()
        signInWithYourAppleIdAppleDeveloperWebView.typeKey("a", modifierFlags:.command)
        signInWithYourAppleIdAppleDeveloperWebView.typeText("karthik.sudhakar@sjsu.edu")
        signInWithYourAppleIdAppleDeveloperWebView.secureTextFields["Password"].click()
        signInWithYourAppleIdAppleDeveloperWebView.typeText("iCloud@1234")
        window.webViews["Sign in with your Apple ID - Apple Developer"].buttons["Sign In"].click()
        window.webViews["Account - Apple Developer"].buttons["Menu"].click()
        window.webViews["Account - Apple Developer"].staticTexts["Documentation"].click()
        
        
    
    }
    
}
