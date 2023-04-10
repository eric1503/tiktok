//
//  CardView.swift
//  tiktok
//
//  Created by Eric Angelo on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    let texts = [
        "Sure, spend another hour scrolling TikTok. Your to-do list can wait.",
        "Who needs productivity when you can have cat videos? Keep scrolling.",
        "You know what's better than getting things done? Scrolling your life away. Keep it up.",
        "Don't worry about deadlines. TikTok will always be there for you.",
        "Productivity is overrated. Keep scrolling and enjoy the procrastination.",
        "Don't let your dreams get in the way of your phone time. Keep scrolling!",
        "Who needs success when you can have endless scrolling? Keep it up.",
        "You could be productive, or you could be a TikTok star. Keep chasing that fame.",
        "Go ahead, pick up your phone again. Your work will still be there...waiting for you to procrastinate some more.",
        "Why work on your goals when you can just scroll mindlessly? Keep it up, champ.",
        "You'll get to your tasks eventually. But for now, just keep scrolling.",
        "Don't worry about being productive. TikTok is a much better use of your time.",
        "Why focus on your future when you can focus on your phone? Keep scrolling, friend.",
        "Procrastination is an art form, and you're a master. Keep it up.",
        "You could be working on your goals, but why bother when there's TikTok to distract you?",
        "You'll get to your to-do list eventually...right after you finish scrolling.",
        "Who needs a successful career when you can be a professional scroller? Keep it up.",
        "Don't let your dreams get in the way of your phone addiction. Keep scrolling.",
        "Time management is overrated. Keep scrolling and let your work pile up.",
        "Go ahead, pick up your phone. Your responsibilities can wait a little longer.",
        "Why focus on being successful when you can focus on being TikTok famous? Keep scrolling, superstar.",
        "Don't let your ambitions get in the way of your TikTok addiction. Keep scrolling, champ.",
        "Sure, your phone might be distracting you from work, but think of all the likes you could be getting on TikTok!",
        "Don't worry about deadlines. Your phone will always be there for you. Keep scrolling.",
        "Why work hard when you can scroll harder? Keep it up.",
        "Who needs productivity when you can have memes? Keep scrolling and enjoy the entertainment.",
        "Don't let your goals get in the way of your TikTok time. Keep scrolling and live in the moment.",
        "Why bother with responsibilities when you can just scroll? Keep it up, friend."
    ]
    
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader { proxy in
            TabView(selection: $currentIndex) {
                ForEach(texts.indices, id: \.self) { index in
                    CardView(text: texts[index])
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .rotationEffect(.degrees(-90))
                        .background(Color.white)
                        .tag(index)
                }
            }
            .frame(width: proxy.size.height, height: proxy.size.width)
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: proxy.size.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .onChange(of: currentIndex) { _ in
                // Update the current index state variable
                currentIndex = currentIndex % texts.count
            }
        }
    }
}
