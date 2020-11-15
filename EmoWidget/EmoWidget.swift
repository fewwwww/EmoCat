//
//  EmoWidget.swift
//  EmoWidget
//
//  Created by 姚溯宁 on 2020/11/11.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

func randomName(gatoName:Array<String>)->String{
    let randomName = Int.random(in: 0...gatoName.count-1)
    return gatoName[randomName]
}

func randomHead()->String{
    return "             ______\n         ／     ＞    フ\n         \(random(Eye: gatoEye_Widget, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[0])\n      \(random(Eye: gatoEye, Mouth: gatoMouth, happycount: &happyCount,angryCount: &angryCount, confuCount: &confuCount,saaadCount: &saaadCount,sleepCount: &sleepCount,otherCount: &otherCount)[1])"
}

struct EmoWidgetEntryView : View {
    var entry: Provider.Entry
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: .infinity, height: .infinity)
            .foregroundColor(Color(red: 0.976, green: 0.804, blue: 0.678, opacity: 0.7))
            VStack{
        Text("\(randomHead())\n")
                Text("\(randomName(gatoName: gatoName)):\"meow\"")
            }
        }
    }
}

@main
struct EmoWidget: Widget {
    let kind: String = "EmoWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            EmoWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("emo gato")
        .description("This is emo gato widget.")
    }
}

struct EmoWidget_Previews: PreviewProvider {
    static var previews: some View {
        EmoWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
