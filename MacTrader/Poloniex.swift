//
//  Poloniex.swift
//  MacTrader
//
//  Created by Chris ---------- on 11/17/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//

import Foundation

extension Date {
    var epoch: Int { return Int(self.timeIntervalSince1970) }
    static var epoch: Int { return Int (Date().timeIntervalSince1970) }
    static var sinceMidnight: Int {
        let now = Date()
        let cal = Calendar(identifier: .gregorian)
        let day = cal.startOfDay(for: now)
        return Int(day.timeIntervalSince1970)
    }
}

extension Bool {
    var int: Int { return self ? 1 : 0 }
}

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self,
                                       resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

let baseURL = URL(string: "https://poloniex.com")!

let query: [String: String] = [
    "api_key": "DEMO_KEY",
    "date": "2011-07-13"
]

let url = baseURL.withQueries(query)!
let task = URLSession.shared.dataTask(with: url) { (data,
    response, error) in
    if let data = data,
    let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}


//Working Code below, DO NOT ALTER once

 class PReturnTicker {

    let PReturnTickerUrl = URL(string: "wss://api2.poloniex.com/public?command=returnTicker")!
 
    let task = URLSession.shared.dataTask(URL: PReturnTickerUrl)! { (Data, URLResponse, Error) -> in
        
        let jsonDecoder = JSONDecoder()
        
        if let data = Data,
            (data: data, encoding: .utf8) {
            
            let PReturnTicker = try? jsonDecoder.decode ([String: Stirng].self, from: data) {

            
            }
            
        }
        
    }
}



/*
class pReturnCurrencies {
    
    let url = URL(string: "https://poloniex.com/public?command=returnCurrencies")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            print(string)
        }
    }
    task.resume()
}

class pReturn24hVolume {
    
    let url = URL(string: "https://poloniex.com/public?command=return24hVolume")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            print(string)
        }
    }
    task.resume()
}

//Working Code below, DO NOT ALTER

 let url = URL(string: "https://poloniex.com/public?command=returnCurrencies")!
 
 let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
 
 let jsonDecoder = JSONDecoder()
 
 if let data = Data,
 let string = try? jsonDecoder.decode([String: String].self, from: data) {
 print(string)
 }
 }
 task.resume()
 
 */

/* URLSession dataTask(with: url, completionHandler: @escaping, (Data?, URLResponse?, Error?) -> Void)
 
 let PloginString = PloginString(format: %@:%@, Pusername!, Ppassword!)
 
 var url: PURL = PURL(string: wss://api2.poloniex.com)!
 curl wss://api2.poloniex.com
 
 Chart data
 
 returnChartData "currencyPair", "period" (candlestick in seconds valid values are: 300, 900, 1800, 7200, 14400, and 86400) "Start" and "End" are given Unix timestamp format and used to specify the date range for the data returned.
 
 
 Save logs to: (changeable)
 User/Documents/Chart Data
 User/Library/Application Support/Chart Data
 
 Heartbeats
 
 "Command" : "Subscribe"
 "channel" :1010
 */
