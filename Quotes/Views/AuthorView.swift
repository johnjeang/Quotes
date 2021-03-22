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


        VStack (alignment: .leading, spacing: 20){
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack {
                ForEach(quote.text, id: \.self) {text_element in
                    Text(text_element)
                        .padding(.vertical, 10)
                }
            }
            Spacer()
        }
        .padding()

        
        
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        
        let quoteModel = QuoteModel()
        AuthorView(quote: quoteModel.quotes[0])
    }
}
