//
//  DashboardVC.swift
//  MenuVC
//
//  Created by Shailendra Kumar Ram on 18/11/19.
//  Copyright © 2019 nitin chawla. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
     var transition = FrameTransition()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
     //MARK:- HomeVC Button Action
     @IBAction func menuButton(_ sender: UIButton) {
         
         print("menuButton")
         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
         let sideMenuVC = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
         sideMenuVC.transitioningDelegate = self
         sideMenuVC.modalPresentationStyle = .custom
         self.present(sideMenuVC, animated:true, completion:nil)
     }
     
    
   


}
//MARK:- Extension HomeVC UIViewControllerTransitioningDelegate
extension DashboardVC: UIViewControllerTransitioningDelegate{
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = CGPoint(x: 0, y: 0)
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = CGPoint(x: 0, y: 0)
        return transition
    }
}
