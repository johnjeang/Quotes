//
//  DataService.swift
//  Quotes
//
//  Created by John Jeang on 3/21/21.
//

import Foundation

class DataService {
    
    
    static func fetchLocalData() -> [Quote]{
        //  always get path first
        let pathString = Bundle.main.path(forResource: "QuoteData", ofType: "json")
        
        // going for the chain method instead of guard
        if let path = pathString{
            
            // Now get url to make data
            let url = URL(fileURLWithPath: path)
            let decoder = JSONDecoder()
            do {
                let dataObject = try Data(contentsOf: url)
                do {
                    let quotes = try decoder.decode([Quote].self, from: dataObject)
                    for q in quotes{
                        q.id = UUID()
                    }
                    return quotes
                }
                catch{
                    print("Error decoding data object")
                }
            }
            catch{
                print("Error creating data object")
            }
        }
        return [Quote]()
    }
}

