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
        
        /*The NSPersistentContainer simplifies the creation of the Core Data stack and provides a convenient class for subclassing and adding custom convenience methods to Core Data. The following example shows the initialization of the persistent container: */
        
        let container = NSPersistentContainer(name: "CoinMarketCap")
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
        
        /* The NSManagedObjectModel is a programmatic representation of the managed object model that is created and maintained in the model editor of Xcode. To instantiate an object model, you pass in a URL that points to the location of the managed object model that was created in Xcode. The model file is typically part of your app bundle. */
        
        guard let modelURL = /MacTrader/DataModel.xcdatamodeld (forResource: "DataModel", withExtension: ".xcdatamodeld") else {
            fatalError("failed to find data model")
        }
        guard let mom = NSManagedObjectModel(contentsOf: ~/MacTrader/DataModel.xcdatamodeld) else {
            fatalError("Failed to create model from file: \(~/MacTrader/DataModel.xcdatamodeld)")
        }
        
        // After you create the managed object model, you can associate the NSPersistentStoreCoordinator with the model.
        
        let psc = NSPersistentStoreCoordinator(managedObjectModel: mom)
       
        /* If you want Core Data to persist your data model to disk, you will need to inform the NSPersistentStoreCoordinator of where you want the file to reside and what format you want to use, as shown in the following example. There are advantages and disadvantages to each of the store types that are available. Refer to the NSPersistentStoreCoordinator documentation for details on each store type. */
        
        let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
        let fileURL = URL(string: "DataModel.sql", relativeTo: dirURL)
        do {
            try psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: fileURL, options: nil)
        } catch {
            fatalError("Error configuring persistent store: \(error)")
        }
        
        /* Once the persistent store coordinator is instantiated, you can perform the final step in the creation of the Core Data stack, which is the initialization of an NSManagedObjectContext. */
        
        let moc = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        moc.persistentStoreCoordinator = psc
        
        
        
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
    }
}
