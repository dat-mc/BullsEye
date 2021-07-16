//
//  AboutAuthorViewController.swift
//  BullsEye
//
//  Created by datmcl on 7/15/21.
//

import UIKit

class AboutAuthorViewController: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.layer.cornerRadius = avatar.frame.size.height / 2
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
