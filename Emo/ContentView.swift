//
//  ContentView.swift
//  Emo
//
//  Created by 姚溯宁 on 2020/11/6.
//

import SwiftUI

struct ContentView: View {
    @State var isLuck: Bool = false
    var body: some View {
        if isLuck == false{
        VStack{
            ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color(red: 0.514, green: 0.686, blue: 0.608, opacity: 0.8))
                
            HStack{
            
            Text("(lamp.jpg)")
            Button("I\nIo", action: {
                self.isLuck = !self.isLuck;
            })
                .animation(.easeIn)
                .font(.largeTitle)
                .foregroundColor(.black)
            Text("\n🤏🏻")
                .font(.largeTitle)
                }
            
            }.frame(width: .infinity, height: 100)
            EmojiView()
            }
        }
        else{
            ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color(red: 0.514, green: 0.686, blue: 0.608, opacity: 0.8))
            VStack{
                HStack{
            Text("(lamp.jpg)")
            Button("I\nIo", action: {
                self.isLuck = !self.isLuck;
            })
                .animation(.easeOut)
                .font(.largeTitle)
                .foregroundColor(.black)
            Text("\n🤏🏻")
                    .font(.largeTitle)
                }
            Spacer()
            LuckedView()
        }}
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
