//
//  ContentView.swift
//  M2L2-array
//
//  Created by Nicola Sivalli on 07/04/22.
//

import SwiftUI

//Equatable è un protocollo che aggiunto alla struct permette di confrontare gli oggetti per valore
struct Card : Equatable {
    var number = 1
    var suit = 0
}

struct ContentView: View {
    @State var message = ""
    @State var deck = [Card]()
    
    var body: some View {
        VStack {
            Text(message)
                .padding()
            HStack {
                Button("Add Card") {
                    addCard()
                }
                .padding(.trailing)
                
                Button("Drew Card") {
                    drewCard()
                }
                .padding(.leading)
        
            }
        }
    }
    
    private func getCardName(number:Int, suit:Int) -> String {
        let suitNames = ["Spades", "Clubs", "Hearts", "Diamonds"]
        
        var numberString = ""
        
        switch number {
        case 1:
            numberString = "Ace"
        case 11:
            numberString = "Jack"
        case 12:
            numberString = "Queen"
        case 13:
            numberString = "King"
        default:
            numberString = String(number)
        }
        
        return numberString + " of " + suitNames[suit]
    }
    
    private func addCard() {
        let numberRand = Int.random(in: 1...13)
        let suitRand = Int.random(in: 0...3)
        
        var newCard = Card()
        newCard.number = numberRand
        newCard.suit = suitRand
        
        if deck.contains(newCard) {
            message = "Generated duplicate card."
        } else {
            message = "Generated a " + getCardName(number: newCard.number, suit: newCard.suit)
            
            deck.append(newCard)
        }
    }
    
    private func drewCard() {
        if deck.isEmpty {
            message = "No cards in the deck."
        } else {
            let cardRand = deck.randomElement()
            
            let randomCardIndex = Int.random(in: 0...deck.count-1)
            var randomCard = deck[randomCardIndex]
            
            message = "Drew a " + getCardName(number: randomCard.number, suit: randomCard.suit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
