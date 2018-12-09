//
//  CoinGecko.swift
//  CoinGecko
//
//  Created by Chris ---------- on 11/9/18.
//  Copyright © 2018 Chris ----------. All rights reserved.
//
import Cocoa
import Foundation


// Checks API server status

class CGPing {
    let cgpurl = URL(string: "https://api.coingecko.com/api/v3/ping")!
    
    let task = URLSession.shared.dataTask(with: cgpurl) { (data, response, error) in
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let CGPing = string
            
            print(CGPing)
        } ; resume()
    }
}

// List all coins with data (name, price, market, developer, community, etc) supported coins id, name and symbol (no pagination required)

class CGCoins {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGCoins = string
            
            print(cGCoins)
        } ; resume()
        
        FileManager.default.urls(for: applicationSupportDirectory)
    }
}

//List all supported coins id, name and symbol (no pagination required)

class CGCoinsList {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins/list")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGCoinsList = string
            
            print(cGCoinsList)
        } ; resume()
    }
}

//List all supported coins market data (no pagination required)

class CGMarkets {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/markets")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGMarkets = string
            
            print(cGMarkets)
        } ; resume()
    }
}

// Get status updates for a given coin

class CGStatusUpdates {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins/:id/stauts_updates")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGStatusUpdates = string
            
            print(cGStatusUpdates)
        } ; resume()
    }
}

// Get Events, paginated by 100

class CGEvents {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/events")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGEvents = string
            
            print(cGEvents)
        } ; resume()
    }
}

// Get list of events types

class CGTypes {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/types")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGtypes = string
            
            print(cGtypes)
        } ; resume()
    }
}

// Get list of events country_code

class CGCoutries {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/countries")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGCountries = string
            
            print(cGCountries)
        } ; resume()
    }
}

// Get BTC-to-Currency exchange rates

class CGExchangeRates {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/exchange_rates")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGExchangeRates = string
            
            print(cGExchangeRates)
        } ; resume()
    }
}

// List all exchanges

class CGExchanges {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/exchanges")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGExchanges = string
            
            print(cGExchanges)
        } ; resume()
    }
}

// Get cryptocurrency global data

class CGGlobalData {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/global/")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGGlobalData = string
            
            print(cGGlobalData)
        } ; resume()
    }
}

// Get dominance chart data

class CGDominanceChart {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/global/coin_dominance_chart_data")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGDominanceChart = string
            
            print(cGDominanceChart)
        } ; resume()
    }
}

// Get total_market_cap chart data (only in USD for now)

class CGMarketCapChartData {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/global/total_market_cap_chart_data")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGMarketCapChartData = string
            
            print(cGMarketCapChartData)
        } ; resume()
    }
}

// Below here are altered URL's that need specifics
// Get current data (name, price, market, ... including exchange tickers) for a coin

class CGId {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins/:id")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGId = string
            
            print(cGId)
        } ; resume()
    }
}

// Get historical data (name, price, market, stats) at a given date for a coin

class CGHistory {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins/:id/history")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGHistory = string
            
            print(cGHistory)
        } ; resume()
    }
}

// Get historical market data include price, market cap, and 24h volume (granularity auto)

class CGMarketChart {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/coins/:id/market_chart")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGMarketChart = string
            
            print(cGMarketChart)
        } ; resume()
    }
}


// Get status updates for a given exchange

class CGExchangeStatusUpdates {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/exchanges/:id/status_updates")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGExchangeStatusUpdates = string
            
            print(cGExchangeStatusUpdates)
        } ; resume()
    }
}

// Get exchange volume in BTC and tickers

class CGExchangeVolume {
    
    let url = URL(string: "https://api.coingecko.com/api/v3/exchanges/:id")!
    
    let task = URLSession.shared.dataTask(with: url) { (Data, URLResponse, Error) in
        
        if let data = Data,
            let string = String(data: data, encoding: .utf8) {
            
            let cGExchangeVolume = string
            
            print(cGExchangeVolume)
        } ; resume()
    }
}

// Search

/* Will add this feature later in programming but the API does support a search function
 
 /api/v3/search
 */
*/
