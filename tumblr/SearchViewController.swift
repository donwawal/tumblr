//
//  SearchViewController.swift
//  tumblr
//
//  Created by Jules Walter on 5/25/15.
//  Copyright (c) 2015 Jules Walter. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var loadingImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadingView.hidden = false
        loadingImageView.animationImages = [UIImage]()
        
        for i in 1...3 {
            var frameName = "loading-" + String(i)
            loadingImageView.animationImages?.append(UIImage(named: frameName)!)
        }
        loadingImageView.animationDuration = 1
        loadingImageView.startAnimating()
        
        delay(2, { () -> () in
            self.loadingImageView.stopAnimating()
            self.loadingView.hidden = true
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
