//
//  StoryBrain.swift
//  MVCpratice
//
//  Created by 신동환 on 2021/05/09.
//

import Foundation

struct Storybrain {
   
    var storyNumber = 0

    var stories = [Story(text: "갈림길이 있습니다.", choice1: "오른쪽으로 갑니다", choice1Destination: 1, choice2: "왼쪽으로 갑니다.", choice2Destination: 3), // 0
                   Story (text: "눈 앞에 황금 상자가 있습니다.", choice1: "열어본다", choice1Destination: 2, choice2: "지나간다.", choice2Destination: 3),//1
                   Story(text: "엄청난 양의 금덩이가 있습니다.", choice1: "가져간다", choice1Destination: 4, choice2: "다시 덮고 앞으로 간다", choice2Destination: 3),//2
                   Story(text: "앞으로 가는 도중 산적을 만났습니다.", choice1: "싸운다", choice1Destination: 5, choice2: "도망친다", choice2Destination: 6),//3
                   Story(text: "당신은 부자가 되었습니다.", choice1: "끝", choice1Destination: 0, choice2: "끝", choice2Destination: 0),//4
                   Story(text: "You Die", choice1: "The ende", choice1Destination: 0, choice2: "The End", choice2Destination: 0),//5
                   Story(text: "도망치던 도중 함정에 걸려 죽었습니다.", choice1: "The end", choice1Destination: 0, choice2: "The end", choice2Destination: 0)
    ]
    
    func getStoryText() -> String {
        return stories[storyNumber].text
    }
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    
    mutating func nextStory(userChoice : String)  {
        
        //let userChoice = sender.currentTitle

        let currencyStory = stories[storyNumber]
        
        if userChoice == currencyStory.choice1 // 유저의 선택이 해당 스토리의 선택1과 같을 때
        {
            storyNumber = currencyStory.choice1Destination // 스토리 넘버를 선택1의 목적지 숫자로 보낸다.
        } else {
            storyNumber = currencyStory.choice2Destination // 유저의 선택이 선택2 일 때, 스토리를 선택2의 목적지 숫자로 보낸다.
        }
    }

    
}



