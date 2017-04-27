//
//  AppDelegate.swift
//  ios-uikit-quick-actions-demo
//
//  Created by Kushida　Eiji on 2017/04/28.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        addQuickAction(application: application)
        return true
    }

    func application(_ application: UIApplication,
                     performActionFor shortcutItem: UIApplicationShortcutItem,
                     completionHandler: @escaping (Bool) -> Void) {
        
        switch (shortcutItem.type) {
        case "PlayMusic" :
            showAlert(message: shortcutItem.localizedTitle)
        case "SearchMusic":
            showAlert(message: shortcutItem.localizedTitle)
        default:
            break
        }
        completionHandler(true)
    }

    func addQuickAction(application: UIApplication) {

        let shortcut = UIMutableApplicationShortcutItem(type: "SearchMusic",
                                                         localizedTitle: "Search",
                                                         localizedSubtitle: "Find a track to play",
                                                         icon: UIApplicationShortcutIcon(type: .search),
                                                         userInfo: nil
        )

        application.shortcutItems = [shortcut]

    }

    func showAlert(message: String) {

        let alertController = UIAlertController(title: "Quick Action",
                                                message: message,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)

        alertController.addAction(okAction)

        window!.rootViewController?.present(alertController,
                                            animated: true, completion: nil)
    }
}

