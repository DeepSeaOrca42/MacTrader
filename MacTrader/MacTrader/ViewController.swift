//
//  ViewController.swift
//  MacTrader
//
//  Created by Chris ---------- on 12/10/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Cocoa
import Foundation


/*
 class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    

    tableView(_:numberOfRowsInSection:), tableView(_:cellForRowAtIndexPath:)
    
    tableView(_:didSelectRowAtIndexPath:)

}
*/
/*
class ViewController: NSViewController {
    
    private var titleValueArray: NSArray!
    private var subTitleArray: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        
        let dicRoot = NSDictionary.init(contentsOfFile: Bundle.main.path(forResource: "Prefs", ofType: "plist")!)
        let titleArrayFromDic: NSArray = NSArray.init(object: dicRoot!.object(forKey: "Title") as Any)
        //subTitleArray = subTitleArrayFromDic.object(at: 0) as! NSArray
        
        let subTitleArrayFromDic: NSArray = NSArray.init(object: dicRoot!.object(forKey: "Title") as Any)
        subTitleArray = subTitleArrayFromDic.object(at: 0) as! NSArray
        
        
        for count in 0..<titleValueArray.count {
            print(titleValueArray[count])
            print(subTitleArray[count])
            
        }
 
    //MacTrader/Prefs.plist
 
    }
 

    @IBOutlet weak var ExchangeID: NSTextField!
    var ExchangeIDTitle: String
    ExchangeID.cell.placeholderAttributedString = ExchangeIDTitle!
    
    @IBOutlet weak var MarketIndicator: NSTextField!
    let marketIndicator = "MarketIndicator"
    
    @IBOutlet weak var HrVol: NSTextField!
    let hrVol = "HrVol"
    
    @IBOutlet weak var HrCh: NSTextField!
    let hrCh = "HrCh"
    
    @IBOutlet weak var HrHi: NSTextField!
    let hrHi = "HrHi"
    
    @IBOutlet weak var HrLo: NSTextField!
    let hrLo = "HrLo"
    
    @IBOutlet weak var LastPrice: NSTextField!
    let lastPrice = "LastPrice"
    
    //Zoom Buttons
    
    @IBAction func SixHZB(_ sender: Any) {
    }
    @IBAction func TwentyFourHZB(_ sender: Any) {
    }
    @IBAction func TwoDZB(_ sender: Any) {
    }
    @IBAction func FourDZB(_ sender: Any) {
    }
    @IBAction func WZB(_ sender: Any) {
    }
    @IBAction func TwoWZB(_ sender: Any) {
    }
    @IBAction func OneMZB(_ sender: Any) {
    }
    @IBAction func AllZB(_ sender: Any) {
    }
    
    //Candlebuttons
    
    @IBAction func FiveMCB(_ sender: Any) {
    }
    @IBAction func FifteenMCB(_ sender: Any) {
    }
    @IBAction func ThirtyMCB(_ sender: Any) {
    }
    @IBAction func TwoHCB(_ sender: Any) {
    }
    @IBAction func FourHCB(_ sender: Any) {
    }
    @IBAction func OneDCB(_ sender: Any) {
    }
    
    //Balance
    
    @IBOutlet weak var Balance: NSTextField!
    @IBOutlet weak var BalanceCID: NSTextField!
    
    //Buy
    
    @IBOutlet weak var BuyPrice: NSTextField!
    @IBOutlet weak var BuyPriceCID: NSTextField!
    @IBOutlet weak var BuyAmount: NSTextField!
    @IBOutlet weak var BuyAmountCID: NSTextField!
    @IBOutlet weak var BuyComm: NSGridCell!
    @IBOutlet weak var BuyCommCID: NSTextField!
    @IBOutlet weak var BuyTotal: NSTextField!
    @IBOutlet weak var TotalCID: NSTextField!
    
    @IBAction func BuyOK(_ sender: Any) {
    }
    
    //StopLimit
    
    @IBOutlet weak var SLStop: NSTextField!
    @IBOutlet weak var SLStopCID: NSTextField!
    @IBOutlet weak var SLLimit: NSTextField!
    @IBOutlet weak var SLLimitCID: NSTextField!
    @IBOutlet weak var SLAmount: NSTextField!
    @IBOutlet weak var SLAmmountCID: NSTextField!
    @IBOutlet weak var SLComm: NSTextField!
    @IBOutlet weak var SLCommCID: NSTextField!
    @IBOutlet weak var SLTotal: NSTextField!
    @IBOutlet weak var SLTotalCID: NSTextField!
    @IBAction func SLOK(_ sender: Any) {
    }
    
    //Server Time
    
    @IBOutlet weak var ServerTime: NSTextField!
    
    @IBOutlet weak var SPrice: NSTextField!
    @IBOutlet weak var SPriceCID: NSTextField!
    @IBOutlet weak var SAmount: NSTextField!
    @IBOutlet weak var SAmountCID: NSTextField!
    @IBOutlet weak var SComm: NSTextField!
    @IBOutlet weak var SCommCID: NSTextField!
    @IBOutlet weak var STotal: NSTextField!
    @IBOutlet weak var STotalCID: NSTextField!
    @IBAction func SOK(_ sender: Any) {
    }
    
    //Toolbar
    @IBAction func MachineLearning(_ sender: Any) {
    }
    @IBAction func Button(_ sender: Any) {
    }
    @IBAction func Twitter(_ sender: Any) {
    }
    @IBAction func RSS(_ sender: Any) {
    }
    @IBAction func Draw(_ sender: Any) {
    }
    @IBAction func Fibonacci(_ sender: Any) {
    }
    @IBAction func Grab(_ sender: Any) {
    }
    @IBAction func Prefrences(_ sender: Any) {
    }
    
    
    
    
        // Dispose of any resources that can be recreated.
    


}
*/
