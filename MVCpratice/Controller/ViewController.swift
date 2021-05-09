//
//  ViewController.swift
//  MVCpratice
//
//  Created by 신동환 on 2021/05/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TittleLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!

    var storyBrain = Storybrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
}

   
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
       
    func updateUI() {
        TittleLabel.text = storyBrain.getStoryText() // 타이틀 레이블을 스토리배열[스토리 숫자].text 로 변경
        Button1.setTitle(storyBrain.getChoice1(), for: .normal) // 버튼1의 타이틀을 스토리배열[스토리숫자].choice1의 텍스트로 변경
        Button2.setTitle(storyBrain.getChoice2(), for: .normal) // 버튼2의 타이틀을 스토리배열[스토리 숫자].choice2의 텍스트로 변경
    }
    
}
  
