//
//  Coinbase.swift
//  MacTrader
//
//  Created by Chris ---------- on 12/27/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Foundation
import CoreData

// Below is commented out so it can have it's own container. But isn't in the AppDelegate so this can bbe handled seperately. 

let CoinbbaseContainer = NSPersistentContainer(name: "Coinbase")
CoinbaseContainer.loadPersistentStores(completionHandler: { (description, error) in
    if let error = error {
        fatalError("Unable to load persistent stores: \(error)")
    }
})


/* If you want Core Data to persist your data model to disk, you will need to inform the NSPersistentStoreCoordinator of where you want the file to reside and what format you want to use, as shown in the following example. There are advantages and disadvantages to each of the store types that are available. Refer to the NSPersistentStoreCoordinator documentation for details on each store type. */

let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
let fileURL = URL(string: "DataModel.sql", relativeTo: dirURL)
do {
    try psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: fileURL, options: nil)
} catch {
    fatalError("Error configuring persistent store: \(error)")
}

