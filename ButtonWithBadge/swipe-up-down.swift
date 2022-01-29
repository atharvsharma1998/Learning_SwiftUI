//
//  swipe-up-down.swift
//  ButtonWithBadge
//
//  Created by atharvSharma on 22/01/22.
//

import SwiftUI

struct swipe_up_down: View {
    @State var size = UIScreen.main.bounds.height*0.85
    var body: some View {
        ZStack{
            Color.orange
            swipe().cornerRadius(20).padding(15).offset(y: size)
                .gesture(DragGesture()
                            .onChanged({ value in
                    if value.translation.height>0{
                        size = value.translation.height
                    }
                    else{
                        let temp = UIScreen.main.bounds.height-130
                        size = temp + value.translation.height
                    }
                }))
        }
    }
}

struct swipe_up_down_Previews: PreviewProvider {
    static var previews: some View {
        swipe_up_down()
    }
}
struct swipe: View{
    var body: some View{
        VStack{
            //for swiping up
            VStack{
                Text("swipe up to learn more").fontWeight(.heavy).padding([.top,.bottom],15)
                
            }
            .background(Color.blue)
            //custom view
            HStack{
                Spacer()
                Text("hello top").fontWeight(.heavy).padding()
            }
            .background(Color.blue)
            
            Spacer()
            Text("hello bottom").fontWeight(.heavy).padding()

        }.background(Color.pink)
    }
}
