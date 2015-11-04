//
//  ViewController.swift
//  Creaton
//
//  Created by MAC on 22/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit



class ViewController: UIViewController, FBSDKLoginButtonDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        
        if (FBSDKAccessToken.currentAccessToken() == nil)
        {
            print("Not logged in..");
        }else
        {
            print("Logged in..");
            
        }
        
        let logginButton = FBSDKLoginButton()
        logginButton.readPermissions = ["public_profile","email","user_friends"]
        logginButton.center = self.view.center
        logginButton.delegate = self
        self.view.addSubview(logginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK-FACEBOOK.LOGIN
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!)
    {
        if error == nil
        {
            print("Login complete.")
            self.performSegueWithIdentifier("showNew", sender: self)
        }
        else
        {
            print(error.localizedDescription)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!)
    {
        print("User logged out...")
    }
    
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }


}

