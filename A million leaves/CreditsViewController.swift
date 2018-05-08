//
//  CreditsViewController.swift
//  Um milhão de folhas
//
//  Created by Alex Luna on 04/05/2018.
//  Copyright © 2018 Alex Luna. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()     
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension CreditsViewController: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return false
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
}
