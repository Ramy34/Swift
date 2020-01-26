//
//  ViewControllerProfile.swift
//  Trivia
//
//  Created by 2020-2 on 23/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerProfile: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var urlProfile = String()
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: urlProfile)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

    }

}
