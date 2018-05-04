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

//        // Setting the attributes
//        let linkAttributes = [
//            NSAttributedStringKey.link: URL(string: "http://www.tarrask.com")!,
//            NSAttributedStringKey.font: UIFont(name: "Helvetica", size: 18.0)!,
//            NSAttributedStringKey.foregroundColor: UIColor.blue
//            ] as [NSAttributedStringKey : Any]
//
//        let attributedString = NSMutableAttributedString(string: "Alex Luna")
//
//        // Set the 'click here' substring to be the link
//        attributedString.setAttributes(linkAttributes, range: NSMakeRange(0, 9))
//
//        self.textView.delegate = self
//        self.textView.attributedText = attributedString
        
        
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
