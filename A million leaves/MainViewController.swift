//
//  MainViewController.swift
//  A million leaves
//
//  Created by Alex Luna on 12/04/2018.
//  Copyright © 2018 Alex Luna. All rights reserved.
//

import UIKit
import AVFoundation
import SwiftySound

class MainViewController: UIViewController {

    @IBOutlet weak var openLine: SpringLabel!

    @IBOutlet weak var middleLine: SpringLabel!

    @IBOutlet weak var closingLine: SpringLabel!

    @IBOutlet weak var animatedLogo: UIImageView!
    
    var imageListArray: [UIImage] = [
        UIImage(named: "animacaopassaro-01.png")!,
        UIImage(named: "animacaopassaro-02.png")!,
        UIImage(named: "animacaopassaro-03.png")!,
        UIImage(named: "animacaopassaro-04.png")!
    ]
    
    func animateLogo() {
        animatedLogo.animationImages = imageListArray
        animatedLogo.animationDuration = 0.8
        animatedLogo.startAnimating()
    }
    
    @IBAction func randomButton(_ sender: Any) {
        animateLogo()
        button.fadeOut()
        cleanPoems()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.fillLines()
            self.showPoems()
        }
    }

    @IBOutlet weak var button: UIButton!

    var poemCounter = 0

    @IBOutlet weak var backgroundImage: UIImageView!

    func fillLines() {
        let newPoem = Poem()
        openLine.text = newPoem.start
        middleLine.text = newPoem.middle
        closingLine.text = newPoem.leEnd
    }

    func cleanPoems() {
        openLine.fadeOut()
        middleLine.fadeOut()
        closingLine.fadeOut()
    }

    func changeBackground() {
        let diceRoll = Int(arc4random_uniform(47))
        let photoName = "photo" + String(diceRoll+1) + ".JPG"
        UIView.transition(with: backgroundImage,
                          duration: 1.8,
                          options: .transitionCrossDissolve,
                          animations: { self.backgroundImage.image = UIImage(named: photoName) },
                          completion: nil)
    }

    func showPoems() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.changeBackground()
            self.openLine.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            self.middleLine.fadeIn()
            self.animatedLogo.stopAnimating()
            self.animatedLogo.fadeOut()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            self.closingLine.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15.0) {
            self.cleanPoems()
            self.animatedLogo.fadeIn()
            self.button.fadeIn()
           
            self.poemCounter += 1
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackground()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.button.fadeIn()
            self.animatedLogo.fadeIn()
        }
        Sound.play(file: "antti_luode_5aminasia", fileExtension: "mp3", numberOfLoops: -1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
