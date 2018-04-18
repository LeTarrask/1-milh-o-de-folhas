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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.titleHeadline.fadeIn()
            self.titleHeadline.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.subtitle.fadeIn()
            self.subtitle.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.author.fadeIn()
            self.author.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15.0) {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
