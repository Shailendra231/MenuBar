//
//  ViewController.swift
//  MenuVC
//
//  Created by Shailendra Kumar Ram on 18/11/19.
//  Copyright © 2019 nitin chawla. All rights reserved.
//

import UIKit


class ViewController: UIViewController  {
    
    //Mark: Object initialize
    @IBOutlet weak var menuTableview: UITableView!
    @IBOutlet weak var actionClose: UIButton!
    var transition = FrameTransition()
    @IBOutlet weak var userImageView: UIImageView!
    var defaults = UserDefaults.standard
    
    let menuItems:[MenuItem] = [MenuItem(name: "My Profile", filevc: "ProfileVC"),
                                MenuItem(name: "Dashboard", filevc: "DashboardVC"),
                                MenuItem(name: "My Addresses", filevc: "AddressVC"),
                                MenuItem(name: "Customer Support", filevc: "ContactVC"),
                                MenuItem(name: "Terms & Conditions", filevc: "Terms_Conditions")]
                                
    var onSelected:((_ data:MenuItem) ->())? = nil
    //Mark: Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       // additionalSafeAreaInsets.top = -50
        menuTableview.tableFooterView = UIView()
        
        
    }
    
    //Mark: Button Action
    @IBAction func actionClose( _ sender: UIButton) {
        dismiss(animated: true)
        
    }
    
}






extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ViewControllerCell = tableView.dequeueReusableCell(withIdentifier: "ViewControllerCell", for: indexPath) as! ViewControllerCell
        let item = menuItems[indexPath.row]
        cell.lbl?.text = item.nameString
        if cell.isSelected  == true {
            cell.contentView.backgroundColor = UIColor.white
        } else {
            cell.contentView.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("You selected cell #\(indexPath.row)!")
        onSelected?(menuItems[indexPath.row])
        dismiss(animated: true)
        
        let storyBoard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
        if indexPath.row == 0
        {
            let vc = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
            navigationController.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 1
        {
            let vc = storyBoard.instantiateViewController(withIdentifier: "DashboardVC") as! DashboardVC
            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
            navigationController.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 2
        {
            let vc = storyBoard.instantiateViewController(withIdentifier: "AddressVC") as! AddressVC
            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
            navigationController.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 3
        {
            let vc = storyBoard.instantiateViewController(withIdentifier: "ContactVC") as! ContactVC
            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
            navigationController.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 5
        {
            let vc = storyBoard.instantiateViewController(withIdentifier: "AboutUsVC") as! AboutUsVC
            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
            navigationController.pushViewController(vc, animated: true)
        }
        else{
            
//            let vc = storyBoard.instantiateViewController(withIdentifier: "Term_Conditions") as! Term_Conditions
//            let navigationController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
//            navigationController.pushViewController(vc, animated: true)
        }
        
        
        
    }
    
}


