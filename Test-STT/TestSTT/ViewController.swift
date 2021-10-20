//
//  ViewController.swift
//  TestSTT
//
//  Created by woogie on 2021/10/20.
//

// 영어는 ondevice로 잘 되는듯함. 그러나 한국어의 경우 이 예제에서는 동작 안함.
import UIKit
import InstantSearchVoiceOverlay

class ViewController: UIViewController {
    
    let voiceOverlay = VoiceOverlayController()
    
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		myButton.backgroundColor = .systemRed
		myButton.setTitleColor(.white, for: .normal)
    }
	
	@IBAction func didTabButton() {
		voiceOverlay.start(on: self, textHandler: {  text , final, _ in
			if final {
				print("Final text: \(text)")
			} else {
				print("In Progress: \(text  )")
			}
		}) { error in
		}
	}


}

