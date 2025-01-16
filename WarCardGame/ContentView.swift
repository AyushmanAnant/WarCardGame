//
//  ContentView.swift
//  WarCardGame
//
//  Created by Ayushman Anant on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"//Property Wrapping playerCard Variable
    @State var cpuCard = "card10" //Property Wrapping cpuCard Variable
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        //Stacks are present for aesthetic purposes
        //Spacers used for aesthetic purposes
        ZStack{
            Image("background-plain")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard) //Utilizing variables to present the cards
                    Spacer()
                    Image(cpuCard) //Utilizing variables to present the cards
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal() //Deal Function for button 
                }label: {
                    Image("button")
                }
        
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
       
    }
    
    func deal(){
        //Randomize Player's Cards
        @State var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize CPU's Cards
        @State var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Updating Scores
        if playerCardValue > cpuCardValue {
            playerScore += 1 //Adding one to playerScore
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1 //Adding one to cpuScore
        }
    }
}

#Preview {
    ContentView()
}
