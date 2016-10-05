//
//  splashcontroller.swift
//  pokedex
//
//  Created by Daniel Ra on 7/15/16.
//  Copyright © 2016 Daniel Ra. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        func playSound() {
            let url = NSBundle.mainBundle().URLForResource("testsound", withExtension: "mp3")!
            
            do {
                player = try AVAudioPlayer(contentsOfURL: url)
                guard let player = player else { return }
                
                player.prepareToPlay()
                player.play()
            } catch let error as NSError {
                print(error.description)
            }
            
        }
        playSound()
    }
}