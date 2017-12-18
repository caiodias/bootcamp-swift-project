//
//  HarshViewController.swift
//  Course Project
//
//  Created by Harsh Shah on 2017-12-18.
//  Copyright © 2017 ProDigi. All rights reserved.
//
import UIKit
import WebKit
import Foundation
class HarshViewController:UIViewController,WKNavigationDelegate{
    var webView:WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://harshbshah.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
       
        
        
    }
}
