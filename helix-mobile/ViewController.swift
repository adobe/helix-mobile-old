//
//  ViewController.swift
//  helix-mobile
//
//  Created by conyu on 6/21/19.
//  Copyright © 2019 helix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var ModeButtons: [UIButton]!
    
    @IBAction func handleSelection(_ sender: UIButton) {
        ModeButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum Modes : String {
        case preview = "Preview"
        case edit = "Edit"
    }
    
    @IBAction func modeSelected(_ sender: UIButton) {
        guard let title = sender.currentTitle, let mode = Modes(rawValue: title) else {
            return
        }
        
        switch mode {
            case .preview:
                print("Preview")
            case .edit:
                print("Edit")
        }
    }
}

