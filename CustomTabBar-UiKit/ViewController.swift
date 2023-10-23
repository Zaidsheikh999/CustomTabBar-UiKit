//
//  ViewController.swift
//  CustomTabBar-UiKit
//
//  Created by Zaid Sheikh on 23/10/2023.
//

import UIKit
import SOTabBar


class ViewController: SOTabBarController {

    override func loadView() {
        super.loadView()
        SOTabBarSetting.tabBarTintColor = #colorLiteral(red: 0.8762039801, green: 0.7041257887, blue: 0.3348407963, alpha: 1)
        SOTabBarSetting.tabBarCircleSize = CGSize(width: 60, height: 60)
        
        // Set TabBAr height Below
        SOTabBarSetting.tabBarHeight = 80
        
        //TabBar shadow colour
        SOTabBarSetting.tabBarShadowColor = UIColor.lightGray.cgColor
        
        SOTabBarSetting.tabBarAnimationDurationTime = 0.4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        let homeStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HOME_ID")
        let chatStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DISCOVER_ID")
        let sleepStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MEDIA_ID")
        let musicStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CHAT_ID")
        let meStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PROFILE_ID")
        
        homeStoryboard.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "homeUnselect"), selectedImage: UIImage(named: "homeSelect"))
        chatStoryboard.tabBarItem = UITabBarItem(title: "Discover", image: UIImage(named: "globalUnselect"), selectedImage: UIImage(named: "globalSelect"))
        sleepStoryboard.tabBarItem = UITabBarItem(title: "Media", image: UIImage(named: "addMedia"), selectedImage: UIImage(named: "addMedia"))
        musicStoryboard.tabBarItem = UITabBarItem(title: "Inbox", image: UIImage(named: "inboxUnselect"), selectedImage: UIImage(named: "inboxSelect"))
        meStoryboard.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profileUnselect"), selectedImage: UIImage(named: "profileSelect"))
           
        viewControllers = [homeStoryboard, chatStoryboard,sleepStoryboard,musicStoryboard,meStoryboard]
    }
    
}

extension ViewController: SOTabBarControllerDelegate {
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
    }
}
