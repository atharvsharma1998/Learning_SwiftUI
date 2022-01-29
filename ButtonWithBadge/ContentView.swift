//
//  ContentView.swift
//  ButtonWithBadge
//
//  Created by atharvSharma on 22/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        customButton()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct customButton: View{
    @State var count = 0
    var body: some View{
        
        ZStack{
            Button(action: {print("clicked");count+=1;}) {
                Image(systemName: "bell.fill").resizable().frame(width: 140, height: 140)
            }
            .padding()
            .foregroundColor(Color.pink)
            .background(Color.brown)
            .clipShape(Circle())
            
            Text("\(count)")
                .padding(30)
                .foregroundColor(Color.white)
                .background(Color.black)
                .clipShape(Circle())
                .offset(x: 70, y: -70)
                .animation(.spring(),value: count)
            
            
        }

    }
}
