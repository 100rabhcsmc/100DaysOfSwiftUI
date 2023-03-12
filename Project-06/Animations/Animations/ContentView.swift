//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Animating gestures
    @State private var dragAmount = CGSize.zero
  
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.red,.blue]), startPoint: .leading, endPoint: .trailing)
            .frame(width: 200,height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(dragAmount)
            .gesture(
              DragGesture()
                .onChanged{dragAmount = $0.translation}
                .onEnded{_ in
                    withAnimation{
                        dragAmount = .zero
                    }
                }
            )
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
