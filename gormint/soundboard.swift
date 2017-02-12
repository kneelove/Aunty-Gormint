//
//  soundboard.swift
//  gormint
//
//  Created by Nilav Vaghasiya on 2/12/17.
//  Copyright © 2017 zeolabs. All rights reserved.
//

import UIKit
import AVFoundation
class soundboard: UIViewController {
    var btnSound1: AVAudioPlayer!
    var btnSound2: AVAudioPlayer!
    var btnSound3: AVAudioPlayer!
    var btnSound4: AVAudioPlayer!
    override func viewDidLoad() {
                super.viewDidLoad()
        let path1 = Bundle.main.path(forResource: "s1", ofType: "aiff")
        let path2 = Bundle.main.path(forResource: "s2", ofType: "aiff")
        let path3 = Bundle.main.path(forResource: "s3", ofType: "aiff")
        let path4 = Bundle.main.path(forResource: "d", ofType: "aiff")
        let soundurl1 = URL(fileURLWithPath: path1!)
        let soundurl2 = URL(fileURLWithPath: path2!)
        let soundurl3 = URL(fileURLWithPath: path3!)
        let soundurl4 = URL(fileURLWithPath: path4!)
        do{
        
        try btnSound1 = AVAudioPlayer(contentsOf: soundurl1)
        btnSound1.prepareToPlay()

       
        } catch let err as NSError{
            print(err.debugDescription)

        }
        do{
            
            try btnSound2 = AVAudioPlayer(contentsOf: soundurl2)
            btnSound2.prepareToPlay()
            
            
        } catch let err as NSError{
            print(err.debugDescription)
            
        }
        do{
            
            try btnSound3 = AVAudioPlayer(contentsOf: soundurl3)
            btnSound3.prepareToPlay()
            
            
        } catch let err as NSError{
            print(err.debugDescription)
            
        }
        do{
            
            try btnSound4 = AVAudioPlayer(contentsOf: soundurl4)
            btnSound4.prepareToPlay()
            
            
        } catch let err as NSError{
            print(err.debugDescription)
            
        }
        
    }
    @IBAction func btn1(_ sender: Any) {
        soundcheck(bt: btnSound1)
        btnSound1.play()
        
        
    }
    @IBAction func btn2(_ sender: Any) {
        soundcheck(bt: btnSound2)
        btnSound2.play()
        

    }
    @IBAction func btn3(_ sender: Any) {
       soundcheck(bt: btnSound3)
        btnSound3.play()
        

    }
    @IBAction func btn4(_ sender: Any) {
       soundcheck(bt: btnSound4)
        btnSound4.play()
        
    }
    func soundcheck(bt:AVAudioPlayer) {
        
        if bt.isPlaying {
            bt.stop()
        }}}
