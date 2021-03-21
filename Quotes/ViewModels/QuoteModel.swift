//
//  QuoteModel.swift
//  Quotes
//
//  Created by John Jeang on 3/21/21.
//

import Foundation

class QuoteModel : ObservableObject{
    var quotes = [Quote]()
    
    init(){
        self.quotes = DataService.fetchLocalData()
    }
}
