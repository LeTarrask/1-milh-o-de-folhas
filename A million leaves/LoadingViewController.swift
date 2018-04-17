//
//  LoadingViewController.swift
//  A million leaves
//
//  Created by Alex Luna on 16/04/2018.
//  Copyright © 2018 Alex Luna. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var titleHeadline: UILabel!
    
    @IBOutlet weak var subtitle: UILabel!
    
    @IBOutlet weak var author: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.titleHeadline.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.subtitle.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.author.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
