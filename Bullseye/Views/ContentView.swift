//
//  ContentView.swift
//  Bullseye
//
//  Created by KyuheeHong on 2022/04/26.
//

import SwiftUI

struct ContentView: View {

//  @State automatically update the body value!
//  @State private var variableName: Type = initialValue

    @State private var alertIsVisible = false
//  @State private var whosThereVisible: Bool = false
    @State private var sliderValue = 50.0
    @State private var game = Game()

    var body: some View {
        let roundedValue: Int = Int(sliderValue.rounded())
    
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                //instead of font size, chose the type
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                print("Hello, SwiftUI!")
                alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
                Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
            }

//            Button("Knock Knock", action: {
//                print("Challenge Time")
//                self.whosThereVisible = true
//            })
//            .alert("Who's There?", isPresented: $whosThereVisible) {
//              Button("Little old lady who?") { }
//            } message: {
//              Text("Little old lady.")
//            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
}
