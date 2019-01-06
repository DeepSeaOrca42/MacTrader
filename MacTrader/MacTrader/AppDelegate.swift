//
//  AppDelegate.swift
//  MacTrader
//
//  Created by Chris ---------- on 12/10/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Cocoa

import Foundation

import CoreData


@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        
        // NSMenuItem CoinGecko / CoinMarketCap / Poloniex (Wallet/History) / Coinbbase (Wallet/History)
        
        // Initialize a NSPersistentContainer
        
        let CoinGeckoContainer = NSPersistentContainer(name: "CoinGecko")
        CoinGeckoContainer.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
        
        /* If you want Core Data to persist your data model to disk, you will need to inform the NSPersistentStoreCoordinator of where you want the file to reside and what format you want to use, as shown in the following example. There are advantages and disadvantages to each of the store types that are available. Refer to the NSPersistentStoreCoordinator documentation for details on each store type. */
        
        let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
        let fileURL = URL(string: "CoinGeckoDataModel.sql", relativeTo: dirURL)
        do {
            try psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: CoinGeckoDataModel.sql, at: fileURL, options: nil)
        } catch {
            fatalError("Error configuring persistent store: \(error)")
        }
        
        
        let CoinMarketCapContainer = NSPersistentContainer(name: "CoinMarketCap")
        CoinMarketCapContainer.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
        
        /* If you want Core Data to persist your data model to disk, you will need to inform the NSPersistentStoreCoordinator of where you want the file to reside and what format you want to use, as shown in the following example. There are advantages and disadvantages to each of the store types that are available. Refer to the NSPersistentStoreCoordinator documentation for details on each store type. */
        
        let dirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
        let fileURL = URL(string: "CoinMarketCapDataModel.sql", relativeTo: dirURL)
        do {
            try psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: fileURL, options: nil)
        } catch {
            fatalError("Error configuring persistent store: \(error)")
        }
        
            
        // Creating Managed Objects for DataModel
        
        let exchange = NSEntityDescription.exchange("exchange", inManagedObjectContext: managedObjectContext) as! exchangeMO

        class exchangeMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let call = NSEntityDescription.call("call", inManagedObjectContext: managedObjectContext) as! callMO
        class callMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let id = NSEntityDescription.id("id", inManagedObjectContext: managedObjectContext) as! idMO
        class idMO: NSManagedObject {
            
            @NSManaged var name: Int16?
            
        }
        let market = NSEntityDescription.market("market", inManagedObjectContext: managedObjectContext) as! marketMO
        class marketMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let name = NSEntityDescription.name("name", inManagedObjectContext: managedObjectContext) as! nameMO
        class nameMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let pair = NSEntityDescription.pair("pair", inManagedObjectContext: managedObjectContext) as! pairMO
        class pairMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let change = NSEntityDescription.change("change", inManagedObjectContext: managedObjectContext) as! changeMO
        class changeMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let close = NSEntityDescription.close("close", inManagedObjectContext: managedObjectContext) as! closeMO
        class closeMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let datetime = NSEntityDescription.datetime("datetime", inManagedObjectContext: managedObjectContext) as! datetimeMO
        class datetimeMO: NSManagedObject {
            
            @NSManaged var name:  datetimeMO?
            
        }
        let high = NSEntityDescription.high("high", inManagedObjectContext: managedObjectContext) as! highMO
        class highMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let low = NSEntityDescription.low("low", inManagedObjectContext: managedObjectContext) as! lowMO
        class lowMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let open = NSEntityDescription.open("open", inManagedObjectContext: managedObjectContext) as! openMO
        class openMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let rss = NSEntityDescription.rss("rss", inManagedObjectContext: managedObjectContext) as! rssMO
        class rssMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let twitter = NSEntityDescription.twitter("twitter", inManagedObjectContext: managedObjectContext) as! twitterMO
        class twitterMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        let volume = NSEntityDescription.volume("volume", inManagedObjectContext: managedObjectContext) as! volumeMO
        class volumeMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let amount = NSEntityDescription.amount("amount", inManagedObjectContext: managedObjectContext) as! amountMO
        class amountMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let balance = NSEntityDescription.balance("balance", inManagedObjectContext: managedObjectContext) as! balanceMO
        class balanceMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let commission = NSEntityDescription.commission("commission", inManagedObjectContext: managedObjectContext) as! commissionMO
        class commissionMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let commissionpercent = NSEntityDescription.commissionpercent("commissionpercent", inManagedObjectContext: managedObjectContext) as! commissionpercentMO
        class commissionpercentMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let price = NSEntityDescription.price("price", inManagedObjectContext: managedObjectContext) as! priceMO
        class priceMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let total = NSEntityDescription.total("total", inManagedObjectContext: managedObjectContext) as! totalMO
        class totalMO: NSManagedObject {
            
            @NSManaged var name: Double?
            
        }
        let type = NSEntityDescription.type("type", inManagedObjectContext: managedObjectContext) as! typeMO
        class typeMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        
        // Relationships
        
        class dayMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class fiveMinMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class halfHourMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class hourMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class monthMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class quarterHourMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class weekMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        class yearMO: NSManagedObject {
            
            @NSManaged var name: String?
            
        }
        
        // Saving NSManagedObject Instances

        do {
            try managedObjectContext.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
    }
}
