//
//  AppDelegate.swift
//  MacTrader
//
//  Created by Chris ---------- on 12/10/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Cocoa
import Foundation

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        // NSMenuItem CoinGecko / CoinMarketCap / Poloniex (Wallet/History) / Coinbbase (Wallet/History)
        
        let container = NSPersistentContainer(name: "CoinGecko")
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
        
        /* The NSManagedObjectModel is a programmatic representation of the managed object model that is created and maintained in the model editor of Xcode. To instantiate an object model, you pass in a URL that points to the location of the managed object model that was created in Xcode. The model file is typically part of your app bundle. */
        
        guard let modelURL = MacTrader/DataModel.xcdatamodeld (forResource: "DataModel", withExtension: ".xcdatamodeld") else {
            fatalError("failed to find data model")
        }
        guard let mom = NSManagedObjectModel(contentsOf: MacTrader/DataModel.xcdatamodeld) else {
            fatalError("Failed to create model from file: \(MacTrader/DataModel.xcdatamodeld)")
        }
        
        // The below code is here & not in it's own swift Exchange file as this would be included with the app at launch. 
        
        /*
        let container = NSPersistentContainer(name: "CoinMarketCap")
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
 */
        // After you create the managed object model, you can associate the NSPersistentStoreCoordinator with the model.
        
        let psc = NSPersistentStoreCoordinator(managedObjectModel:
       
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
        
        
        
    }
}
