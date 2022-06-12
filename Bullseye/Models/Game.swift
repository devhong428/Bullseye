//
//  Game.swift
//  Bullseye
//
//  Created by KyuheeHong on 2022/05/04.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(sliderValue - self.target)
    }
    
//    func points(sliderValue: Int) -> Int {
//        var difference: Int
//
//        if sliderValue > self.target{
//            difference = sliderValue - self.target
//        } else if sliderValue < self.target {
//            difference = self.target - sliderValue
//        } else {
//            difference = 0
//        }
//        var awardedPoints: Int = 100 - difference
//        return awardedPoints
//    }
}
