//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

////Building custom transitions using ViewModifier

import SwiftUI

struct cornerRorateModifier : ViewModifier{
    let amount : Double
    let anchor : UnitPoint
    
    func body(content: Content) -> some View {
        content
        .rotationEffect(.degrees(amount),anchor: anchor)
        .clipped()
    }
}

extension AnyTransition {
    static var pivot :  AnyTransition{
        .modifier(active: cornerRorateModifier(amount: -90, anchor: .topLeading), identity: cornerRorateModifier(amount: 0, anchor: .topLeading))
    }
}

struct ContentView: View {
    @State private var isShowingRed = false
    
  
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue)
                .frame(width: 200,height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200,height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation{
                isShowingRed.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
