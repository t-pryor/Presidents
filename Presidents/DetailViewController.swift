//
//  DetailViewController.swift
//  Presidents
//
//  Created by Tim Pryor on 2015-11-18.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var webView: UIWebView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            
            if let label = self.detailDescriptionLabel {
                let dict = detail as! [String: String]
                let urlString = dict["url"]!
                label.text = urlString
                
                let url = NSURL(string: urlString)!
                
                let request = NSURLRequest(URL: url)
                webView.loadRequest(request)
                
                let name = dict["name"]!
                title = name
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

