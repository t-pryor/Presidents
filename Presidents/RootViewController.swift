//
//  RootViewController.swift
//  Presidents
//
//  Created by Tim Pryor on 2015-11-20.
//  Copyright (c) 2015 Tim Pryor. All rights reserved.
//

import UIKit

class RootViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // override the traitCollection so that every iPhone behaves like iPhone6 Plus
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        let splitVC = viewControllers[0] as! UIViewController
        let newTraits = traitCollection
        
        // if iPhone (other than 6+) is in landscape mode, change to Regular/Compact (same as 6+)
        if newTraits.horizontalSizeClass == .Compact
            && newTraits.verticalSizeClass == .Compact {
                let childTraits = UITraitCollection(horizontalSizeClass: .Regular)
                setOverrideTraitCollection(childTraits, forChildViewController: splitVC)
        } else {
            setOverrideTraitCollection(nil, forChildViewController: splitVC)
        }
    }

    
    /*
    // ******************** EXERCISE **************************
    // make every device behave like iPhone in Portrait, no matter the orientation
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        let splitVC = viewControllers[0] as! UIViewController
        let newTraits = traitCollection
        
        let t1 = UITraitCollection(horizontalSizeClass: .Compact)
        let t2 = UITraitCollection(verticalSizeClass: .Regular);
        
        let tArray = [t1, t2]
        
        let combinedTraits = UITraitCollection(traitsFromCollections: tArray)
    
        setOverrideTraitCollection(combinedTraits, forChildViewController: splitVC)
    }
    */


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
