//
//  ContextMenu.swift
//  ButtonWithBadge
//
//  Created by atharvSharma on 29/01/22.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        Image("Context-Menu").resizable().frame(width: 50, height:100).cornerRadius(20)
            .contextMenu{
                VStack{
                   
                    Button(action: {print("save")}) {
                        HStack{
                            Image(systemName: "folder.fill")
                            Text("Save to gallery")
                        }
                    }
                    
                    
                    Button(action: {print("share")}) {
                        HStack{
                            Image(systemName: "paperplane.fill")
                            Text("share")
                        }
                    }
                    
                    
                }
                
                
                
                
                
            }
        
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
