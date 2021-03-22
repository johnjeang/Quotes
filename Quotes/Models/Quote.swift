//
//  Quote.swift
//  Quotes
//
//  Created by John Jeang on 3/21/21.
//

import Foundation

class Quote: Identifiable, Decodable{
    
    var id:UUID?
    var author:String
    var image:String
    var text:[String]
}
