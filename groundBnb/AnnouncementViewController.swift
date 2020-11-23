//
//  AnnouncementViewController.swift
//  groundBnb
//
//  Created by Shalon Teoh on 23/11/2020.
//

import UIKit
import WebKit

class AnnouncementViewController: UIViewController {

    @IBOutlet var websiteView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: "https://www.airbnb.com/resources/hosting-homes?persona=guest")!)
        
        websiteView.load(request)
    }
}
