//
//  ViewController.swift
//  WebViewTest
//
//  Created by ahmed mohy on 11/8/17.
//  Copyright © 2017 ahmed mohy. All rights reserved.
//

import UIKit
import PKHUD
class ViewController: UIViewController, UIWebViewDelegate {
    
    var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = UIWebView(frame: UIScreen.main.bounds)
        webView.delegate = self
        webView.frame = self.view.bounds
        webView.scrollView.maximumZoomScale = 1.0
        webView.scrollView.minimumZoomScale = 1.0
        webView.scalesPageToFit = true
        view.addSubview(webView)
        if let url = URL(string: "https://heakw.org") {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("start Loading")
     
        HUD.show(.labeledProgress(title: "", subtitle: "Loading..."))
       // SVProgressHUD.show(withStatus: "Loading...")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("finsh loading")
       // SVProgressHUD.dismiss()
        HUD.hide()
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("error" , error.localizedDescription)
    }
 
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        print("will Load")
        return true
    }
    
    



}

