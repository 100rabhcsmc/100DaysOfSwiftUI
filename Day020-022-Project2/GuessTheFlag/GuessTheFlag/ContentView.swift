//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Color.red
                Color.blue
            }
            Text("Hello Saurbah").foregroundColor(.secondary) .padding(20).background(.yellow)
               
        }.ignoresSafeArea()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
