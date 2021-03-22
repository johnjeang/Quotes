//
//  AuthorView.swift
//  Quotes
//
//  Created by John Jeang on 3/21/21.
//

import SwiftUI

struct AuthorView: View {
    var quote:Quote
    var body: some View {


        VStack {
            ForEach(quote.text, id: \.self) {text_element in
                Text(text_element)
            }
        }
        
        
        
        
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        
        let quoteModel = QuoteModel()
        AuthorView(quote: quoteModel.quotes[0])
    }
}
