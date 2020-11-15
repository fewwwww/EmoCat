//
//  EmojiModel.swift
//  Emo
//
//  Created by 姚溯宁 on 2020/11/7.
//

import Foundation


struct EmojiModel{
    var content: String
    var quote: String
    //var button: loveButtons
    //var light: lightButtons
    
    //mutating func loveFunc(loveButton: loveButtons) {
        //MARK: click to refresh
        //self.button.isClick = !self.button.isClick
        //self.button.clickCount += 1//MARK:TOTAL COUNT
        //self.button.isClick = !self.button.isClick
   // }
    
   // mutating func lightFunc(lightButton: lightButtons){
        //MARK: probability statistics should be shown...
   //     self.button.isClick = !self.button.isClick
   // }
    
    //MARK: initiate instance
    init(content: String, quote: String){
        self.content = content
        self.quote = quote
    }
    
    //MARK: struck for button
    //struct loveButtons{
    //    var isClick: Bool = false
    //    var clickCount: Int = 0
    //}
    
    //struct lightButtons{
    //    var isClick: Bool = false
    //    var sleepCount: Int = 0
    //}

}

var happyCount = 0
var angryCount = 0
var confuCount = 0
var saaadCount = 0
var sleepCount = 0
var otherCount = 0

//MARK:randomlize index for eye and mouth
//MARK:keep track on COUNT numbers to make probability
func random(Eye:Array<String>,Mouth:Array<String>, happycount:inout Int, angryCount:inout Int, confuCount:inout Int,saaadCount:inout Int,sleepCount:inout Int,otherCount:inout Int)->Array<Any>{
    let randomEye = Int.random(in: 0...Eye.count-1)
    if randomEye<=5{
        happycount = happycount + 1
    }
    else if randomEye<=8{
        angryCount = angryCount + 1
    }
    else if randomEye<=11{
        confuCount = confuCount + 1
    }
    else if randomEye<=15{
        saaadCount = saaadCount + 1
    }
    else{
        otherCount = otherCount + 1
    }
    let randomMouth = Int.random(in: 0...Mouth.count-1)
    return [Eye[randomEye],Mouth[randomMouth]]
    //MARK: add probability calculate function based on the eye
}









//MARK: randomlize index for quote
func random(Quotes:Array<String>)->String{
    let randomQuote = Int.random(in: 0...Quotes.count-1)
    return Quotes[randomQuote]
}

let gatoWhole = "                  ______\n              ／     ＞    フ\n              |        _     _   |\n           ／`ミ__x_ノ\n         ／丶            ノ\n          |          |     |    |  \n／￣|          |     |    |  \n|（￣丶 __丶_ )_）\n＼ 二つ === "
let gatoQuotes = ["down for u","thx next","am sprung","gracias","9ty 9t","Meoow","🐟!","be in miami","swipe left","always aside","acid\\dreams","text?","north$ide","I-I-I-I","pepsi-","2 mainstream","shrink ◐","2am facetime","me anuo","6324up","msfew","emacs","positivity","sooul","晨","rosy","uno!","fish big","ur freckles","love==myth","hi tokyo","bye shibuya","goodbye sanity","imagine..","txt me","game ova","烫烫烫烫"]
let gatoEye = ["|       ≖      ≖  |✿","|        •̀    •́   |✧","|      ≧      ≦   |","|       ≖      ≖  |✿","|         •̀    •́   |✧","|      ≧      ≦   |","|     艹     艹  |ψ","|      ＝    ＝ |","|     ﹁     ﹁ |╬","|     Φ    Φ   |o゜","|      ＠   ＠〃 |","|     ◐     ◐  |ଘ","|     ◕ฺ    ◕ฺ  |","|     ◕ฺ    ◕ฺ  |","|     ╥     ╥  |(","|     ఠ      ఠ  |","|       ∪      ∪   |zzZZ","|      _      _   |夢","|       ◔      ◔  |","|       －     =  |+","|      x      x   |","|      눈      눈  |","|      ✧    ✧   |","|   。 _     _   |","|        o    o    |๑","|        ′     `   |;","|      ⊙     ⊙  |＃"]
let gatoMouth = ["／`ミ_X_ノ","／`ミ__◡_ノ","／`ミ_へ_ノ","／`ミ_～_ノ","／`ミ_□_ノ","／`ミ_ω_ノ","／`ミ__ρ_ノ","／`ミ_皿_ノ","／`ミ_┰_ノ","／`ミ_ェ_ノ","／`ミ_(oo)ノ","／`ミ__ǒ_ノ","／`ミ_Д_ノ","／`ミ__3_ノ","／`ミ__∀_ノ","／`ミ_ܫ_ノ"]

var gato = "                  ______\n              ／     ＞    フ\n              \(random(Eye: gatoEye, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[0])\n           \(random(Eye: gatoEye, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[1])\n         ／丶            ノ\n          |          |     |    |  \n／￣|          |     |    |  \n|（￣丶 __丶_ )_）\n＼ 二つ === "

let gatoEye_Widget = ["|       ≖      ≖  |","|       •̀    •́   |","|      ≧      ≦   |","|       ≖      ≖  |","|        •̀    •́   |","|      ≧      ≦   |","|     艹     艹  |","|      ＝    ＝ |","|     ﹁     ﹁ |","|     ＠    ＠〃 |","|     ◐     ◐  |","|     ◕ฺ    ◕ฺ  |","|     ╥     ╥  |","|     ఠ      ఠ  |","|       ∪      ∪   |","|       _      _  |","|       ◔      ◔  |","|       －     =  |","|      x      x   |","|      ✧     ✧   |","|   。 _     _   |","|       o    o    |","|        ′     `   |","|      ⊙     ⊙  |"]

let gatoName = ["Hana🌹","Hoshi","Okeah🌊","Sakura🌸","Anonmymous","Gato🐱","White","Zack","Jax","Bryce","Delores","Karen👵","Lottie","Renae","Emma","Anna","Zoey","Claire","Johnny Ding","42","\"🐱\"","Ben","Johnson","Pete","Wasabi","Tuna","Oishi","Mike","Matt","Mario","Alice","Audrey","Buck","Cash","Golang","Python","Java","PHP","Mini","Biggie","Tupac","msfew","\"Name\"","404","X","Something","Meow","MIMI","猫","EmoCat","=•ェ•=","=∩王∩="]

var new_Emoji = EmojiModel(content: gato, quote: random(Quotes: gatoQuotes))

//var new_Emoji = EmojiModel(content: gatoEye[0], quote: "hii")

//var new_Emoji_widget = "             ______\n         ／     ＞    フ\n         \(random(Eye: gatoEye_Widget, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[0])\n      \(random(Eye: gatoEye, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[1])"



func generateNew(gatoQuotes:Array<String>,gatoEye:Array<String>,gatoMouth:Array<String>,gato:String, new_Emoji:inout EmojiModel){
    var quote:String
    var content:Array<Any>
    quote = random(Quotes: gatoQuotes)
    content = random(Eye: gatoEye, Mouth: gatoMouth,happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)
    var gato:String
    gato = "                  ______\n              ／     ＞    フ\n              \(content[0])\n           \(content[1])\n         ／丶            ノ\n          |          |     |    |  \n／￣|          |     |    |  \n|（￣丶 __丶_ )_）\n＼ 二つ === "
    new_Emoji = EmojiModel(content: gato, quote: quote)
}







