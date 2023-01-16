//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Button & Image
        VStack{
            Button("click me",role: .destructive, action: Clicked).buttonStyle(.borderedProminent).tint(.green).foregroundColor(.black)
            
            //custume button
            Button{
                print("button Tapped")
            } label: {
                Text("tap me").padding().foregroundColor(.black).background(.green)
            }
            
            //image
            Button{
                print("clicked on the image")
            } label: {
                Image(systemName: "arrow.clockwise.heart")
            }
            
            //image and text one line
            Button{
                print("clicked on the image")
            } label: {
               Label("Click", systemImage:"location.circle.fill" )
            }
        }
    }
    func Clicked(){
        print("great you have clicked me")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
