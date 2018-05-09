//
//  LoadingViewController.swift
//  A million leaves
//
//  Created by Alex Luna on 16/04/2018.
//  Copyright © 2018 Alex Luna. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var titleHeadline: SpringLabel!

    @IBOutlet weak var subtitle: SpringLabel!

    @IBOutlet weak var author: SpringLabel!

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
        animatedLogo.alpha = 1
    }
    
    func setGradientBackground() {
        let colorTop =  #colorLiteral(red: 0.3215686275, green: 0.7882352941, blue: 0.631372549, alpha: 1).cgColor
        let colorBottom = #colorLiteral(red: 0.1607843137, green: 0.6705882353, blue: 0.8862745098, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.2)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        
        var folhas = [String]()
        for n in 1...20 {
            let name = "folha\(n).png"
            folhas.append(name)
        }
        
        for _ in 1...30 {
            let imageName = folhas[Int(arc4random_uniform(UInt32(folhas.count)))]
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.contentMode = .scaleAspectFit
            
            imageView.frame = CGRect(x: Int(arc4random_uniform(UInt32(self.view.bounds.maxX))), y: Int(self.view.bounds.minY-100), width: 100, height: 100)
            view.addSubview(imageView)
            
            imageView.leafFall()
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.titleHeadline.fadeIn()
            self.titleHeadline.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.subtitle.fadeIn()
            self.subtitle.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.author.fadeIn()
            self.author.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) {
            self.animateLogo()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15.0) {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
