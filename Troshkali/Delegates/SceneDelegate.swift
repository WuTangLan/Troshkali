//
//  SceneDelegate.swift
//  Troshkali
//
//  Created by Marcus Perovic on 21.10.2019.
//  Copyright © 2020 Marcus Perovic. All rights reserved.
//

import UIKit
import LocalAuthentication

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
// MARK: - Local user authentication

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Local Authenitcation
        
        let authenticationContext = LAContext()
        

            
               var error: NSError?
               let reasonString = "Touch the Touch ID sensor to unlock."

               if authenticationContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthentication, error: &error) {

                authenticationContext.evaluatePolicy( .deviceOwnerAuthentication, localizedReason: reasonString, reply: { (success, evalPolicyError) in

                       if success {
                           print("success")
                        
                       } else {
                        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
                   
                        
                       }
                    
                    
                   })

               } else {
                   print("passcode not set")
               }
        
        
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // To continue after the interruption (i.e Phone call)
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
  
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // To continue after the interruption (while multitasking)
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

