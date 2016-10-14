//
//  ViewController.swift
//  UIWebViewTutorialBlog
//
//  Created by Felicity Johnson on 10/12/16.
//  Copyright © 2016 FJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webViewTutorial: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://www.bideawee.org/")
        if let unwrappedURL = url {
            
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                if error == nil {
                    
                    self.webViewTutorial.loadRequest(request)
                    
                } else {
                    
                    print("ERROR: \(error)")
                    
                }

            }
            
            task.resume()
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

