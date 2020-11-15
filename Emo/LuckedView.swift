//
//  LuckedView.swift
//  Emo
//
//  Created by 姚溯宁 on 2020/11/10.
//

import SwiftUI

struct LuckedView: View {
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 25.0)
            .foregroundColor(Color(red: 0.443, green: 0.588, blue: 0.588, opacity: 1.0))
        Text("(￣︶￣) --\(Float(happyCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))\n(▔皿▔) --\(Float(angryCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))\n(◎ロ◎) --\(Float(confuCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))\n(╥﹏╥) --\(Float(saaadCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))\n(zZZZZ) --\(Float(saaadCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))\n(XXXXX) --\(Float(otherCount)/Float(happyCount+angryCount+confuCount+saaadCount+sleepCount+otherCount))")
            .lineSpacing(20.0)
            .font(.title)
        }
    }
        
}

struct LuckedView_Previews: PreviewProvider {
    static var previews: some View {
        LuckedView()
    }
}
