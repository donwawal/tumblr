//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Jules Walter on 5/25/15.
//  Copyright (c) 2015 Jules Walter. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var exploreBubbleView: UIImageView!
    
    var viewControllers = [UIButton: UIViewController]()
    var currentButton: UIButton!
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! UIViewController
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! UIViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! UIViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! UIViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! UIViewController
        
        homeViewController.view.frame = contentView.bounds
        searchViewController.view.frame = contentView.bounds
        composeViewController.view.frame = contentView.bounds
        accountViewController.view.frame = contentView.bounds
        trendingViewController.view.frame = contentView.bounds
        
        viewControllers = [homeButton: homeViewController, searchButton: searchViewController, accountButton: accountViewController, trendingButton: trendingViewController]
        
        clickedTabButton(homeButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickedTabButton(sender: UIButton) {
        if currentButton != nil {
//            viewControllers[currentButton]!.view.removeFromSuperview()
            currentButton.selected = false
        }
        contentView.addSubview(viewControllers[sender]!.view)
        currentButton = sender
        currentButton.selected = true
        
        if currentButton == searchButton{
            exploreBubbleView.hidden = true
        } else {
            exploreBubbleView.hidden = false
        }
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
