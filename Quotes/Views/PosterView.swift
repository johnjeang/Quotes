//
//  ContentView.swift
//  Quotes
//
//  Created by John Jeang on 3/21/21.
//

import SwiftUI

struct PosterView: View {
    
    @ObservedObject var quoteModel = QuoteModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    ForEach(quoteModel.quotes){quote in
                        NavigationLink(
                            destination: AuthorView(quote: quote),
                            label: {
                                ZStack{
                                    Image(quote.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(30)
                                    VStack(alignment: .leading, spacing: 10.0){
                                        Text(quote.text[0])
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        Text("- " + quote.author)
                                }
                                }
                                .padding(.horizontal)
                                .foregroundColor(Color.white)
                                .frame(width: .none, height: 400, alignment: .center)
                                .clipped()
                        })
                        
                    }
                }
            }
            .navigationBarTitle("Posters")
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView()
    }
}
