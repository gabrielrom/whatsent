//
//  SceneDelegate.swift
//  whatsent
//
//  Created by Gabriel Matheus on 11/04/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    lazy var  navigation: UINavigationController = {
        let navigation = UINavigationController(rootViewController: SignInViewController())
        
        navigation.navigationBar.prefersLargeTitles = true
        navigation.navigationBar.largeTitleTextAttributes = [
            .font: UIFont(name: "Archivo-SemiBold", size: 40) ?? UIFont.systemFont(ofSize: 40),
            .foregroundColor: UIColor(named: "Primary-Text-Color") ?? UIColor.black
        ]
        
        return navigation
    }()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: scene)
        
        guard let window = self.window else { return }
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

 
