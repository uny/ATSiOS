//
//  ViewController.swift
//  ATSiOS
//
//  Created by Yuki Nagai on 11/25/15.
//  Copyright © 2015 Yuki Nagai All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "https://floating-wildwood-1056.herokuapp.com")!
        let request = NSURLRequest(URL: URL, cachePolicy: .ReloadIgnoringLocalCacheData, timeoutInterval: 10)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UIWebViewDelegate {
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error)
    }
}
