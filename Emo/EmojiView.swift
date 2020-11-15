//
//  EmojiView.swift
//  Emo
//
//  Created by 姚溯宁 on 2020/11/6.
//

import SwiftUI

struct EmojiView: View {
    @State var clickCount:Int = 0
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(Color(red: 0.976, green: 0.804, blue: 0.678, opacity: 0.7))
                if clickCount==2{
                    Text(gatoWhole+" hii")
                        .font(.largeTitle)
                }
                else{
                    Text(new_Emoji.content+new_Emoji.quote)
                        .font(.largeTitle)
                }
            }
            ZStack{
                Button(action: {
                    self.clickCount = self.clickCount+1;
                    generateNew(gatoQuotes: gatoQuotes, gatoEye: gatoEye, gatoMouth: gatoMouth, gato: gato, new_Emoji: &new_Emoji)
                }){
                    Text("\n👋🏻💗🐱\n")
                }
                .animation(.linear)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.black)
                .background(Color(red: 0.988, green: 0.616, blue: 0.604, opacity: 0.7))
                .cornerRadius(60)
                .frame(minWidth: 0, maxWidth: .infinity)
                                }
            }
        }
    }    


struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView()
    }
}
