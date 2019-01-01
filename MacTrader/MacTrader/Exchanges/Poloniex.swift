//
//  Poloniex.swift
//  MacTrader
//
//  Created by Chris ---------- on 12/27/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Foundation

class createDataModel {

//The below code is here & not the AppDelegate so this DB can be handled seperately 

let container = NSPersistentContainer(name: "Poloniex")
container.loadPersistentStores(completionHandler: { (description, error) in
    if let error = error {
        fatalError("Unable to load persistent stores: \(error)")
    }
})


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
