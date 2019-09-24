/*
Copyright 2019 Adobe. All rights reserved.
This file is licensed to you under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License. You may obtain a copy
of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under
the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
OF ANY KIND, either express or implied. See the License for the specific language
governing permissions and limitations under the License.
*/

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

