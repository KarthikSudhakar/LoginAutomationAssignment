//
//  ViewController.swift
//  LoginAutomationAssignment
//
//  Created by Student on 5/22/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Cocoa
import WebKit
class ViewController: NSViewController {

    @IBOutlet weak var webView: WebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
        
        if let cookies = HTTPCookieStorage.shared.cookies {
            for cookie in cookies {
                HTTPCookieStorage.shared.deleteCookie(cookie)
            }
        }*/

        let url = "https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=891bd3417a7776362562d2197f89480a8547b108fd934911bcbea0110d07f757&path=%2Faccount%2F&rv=1"
        self.webView.mainFrame.load(NSURLRequest(url:NSURL(string:url)! as URL) as URLRequest!)
    

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


