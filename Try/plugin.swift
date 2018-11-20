//
//  plugin.swift
//  
//  Written in Swift 4.2.1
//  Created by Chris ---------- on 11/2/18.
//

import Foundation

class pPlugin {
    
    /* Returns symbbol: id:x, name:x, txFee:x, minConf:x, depositAddress:x, disabled:x, delisted:x, frozen */
    
    class pReturnCurrencies: -> Codeable {
    var pRCSymbol = "1CR"
    var pRCId = 1
    var pRCName = "1CRedit"
    var pRCTxFee = 0.01000000
    var pRCMinConf = 10000
    var pRCDepositAddress = "L0ngDep0s1tAddr355"
    var pRCDisabled = 1
    var pRCDelisted = 1
    var pRCFrozen = 0
    
    //Inits var sets random data point
    
    struct pReturnCurrencies: Codable {
    let pRCSymbol: String
    let pRCId: Int
    let pRCName: String
    let pRCTxFee: Double
    let pRCMinConf: Double
    let pRCDepositAddress: String
    let pRCDisabled: Int
    let pRCDelisted: Int
    let pRCFrozen: Int
    
    }
    enum CodingKeys: String, CodingKeys {
    case pRCSymbol = "Symbol"
    case pRCId = "Currency ID"
    case pRCName = "Name"
    case pRCTxFee = "Transaction Fee"
    case pRCMiniConf = "Mini Conf"
    case pRCDepositAddress = "Deposit Address"
    case pRCDisabled = "Disabled"
    case pRCDelisted = "Delisted"
    case pRCFrozen = "Frozen"
    }
    
    }
    
}

// Keychain Auth

let PloginString = PloginString(format: %@:%@, Pusername!, Ppassword!)

// Check for server heartbeat

//"command" : "subscribe",
//"channel" : 1010

// Get server time

// Establish polling Queue

// Load blanace data

// Load from previous log entry

// Begin data polling & logging

//Returns information about currencies.

/* Returns name: id:x last:x, lowestAsk:x, highestBid:x, percentChange:x baseVolume:x quoteVolume:x isFrozen:x high24hr:x low24hr:x
 Save / append JSON to file

 func preturnTicker() {
    let url = URL(string: "https://poloniex.com/public?command=returnTicker")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            self.handleClientError(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
                self.handleServerError(response)
                return
        }
        if let mimeType = httpResponse.mimeType, mimeType == "text/html",
            let data = data,
            let string = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async {
                self.webView.loadHTMLString(string, baseURL: url)
            }
        }
    }
    task.resume()
}
*/

/* Returns the 24-hour volume for all markets, plus totals for primary currencies.
 Returns the order book for a given market, as well as a sequence number for use with the Push API and an indicator specifying whether the market is frozen. You may set currencyPair to "all" to get the order books of all markets.
 Returns Asks:[], bids:[], isFrozen:x, seq:x

func pReturnOrderBook() {
    let url = URL(string: "https://poloniex.com/public?command=returnOrderBook&currencyPair=BTC_NXT&depth=10")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            self.handleClientError(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
                self.handleServerError(response)
                return
        }
        if let mimeType = httpResponse.mimeType, mimeType == "text/html",
            let data = data,
            let string = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async {
                self.webView.loadHTMLString(string, baseURL: url)
            }
        }
    }
    task.resume()
}
*/

/* Returns date:x, high:x, low:x, open:x, close:x, volume:x, quoteVolume:x, weighted Average:x
 
func pReturnChartData() {
    let url = URL(string: "https://poloniex.com/public? command=returnChartData&currencyPair=BTC_XMR&start=1405699200&end=9999999999&period=14400")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            self.handleClientError(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
                self.handleServerError(response)
                return
        }
        if let mimeType = httpResponse.mimeType, mimeType == "text/html",
            let data = data,
            let string = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async {
                self.webView.loadHTMLString(string, baseURL: url)
            }
        }
    }
    task.resume()
}
*/

/* Returns globalTradeID:x, tradeID:x, date:x, type:x, rate:x, amount:x, total:x
 
 func pReturnTradeHistory() {
 let url = URL(string: "https://poloniex.com/public?command=returnTradeHistory&currencyPair=BTC_NXT&start=1410158341&end=1410499372")!
 let task = URLSession.shared.dataTask(with: url) { data, response, error in
 if let error = error {
 self.handleClientError(error)
 return
 }
 guard let httpResponse = response as? HTTPURLResponse,
 (200...299).contains(httpResponse.statusCode) else {
 self.handleServerError(response)
 return
 }
 if let mimeType = httpResponse.mimeType, mimeType == "text/html",
 let data = data,
 let string = String(data: data, encoding: .utf8) {
 DispatchQueue.main.async {
 self.webView.loadHTMLString(string, baseURL: url)
 }
 }
 }
 task.resume()
 }
 */

/*
 func pReturn24Volume() {
 let url = URL(string: "https://poloniex.com/pubblic?command=return24Volume")!
 let task = URLSession.shared.dataTask(with: url) { data, response, error in
 if let error = error {
 self.handleClientError(error)
 return
 }
 guard let httpResponse = response as? HTTPURLResponse,
 (200...299).contains(httpResponse.statusCode) else {
 self.handleServerError(response)
 return
 }
 if let mimeType = httpResponse.mimeType, mimeType == "text/html",
 let data = data,
 let string = String(data: data, encoding: .utf8) {
 DispatchQueue.main.async {
 self.webView.loadHTMLString(string, baseURL: url)
 }
 }
 }
 task.resume()
 }
 */

//Private Calls
/* wss://api2.poloniex.com */
