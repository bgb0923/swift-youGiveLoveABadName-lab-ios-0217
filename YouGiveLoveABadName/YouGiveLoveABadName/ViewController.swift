//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var jonBonJovi: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constrainJonBonJovi()
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        UIView.animateKeyframes(withDuration: 3, delay: 0, options: .calculationModeLinear, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/5, animations: { _ in
                self.jonBonJovi.transform = CGAffineTransform(scaleX: 1, y: 0.9)
            })
            UIView.addKeyframe(withRelativeStartTime: 1/5, relativeDuration: 1/5, animations: { _ in
                self.jonBonJovi.transform = CGAffineTransform(scaleX: 1, y: 3)
            })
            UIView.addKeyframe(withRelativeStartTime: 2/5, relativeDuration: 1/5, animations: { _ in
                self.jonBonJovi.transform = CGAffineTransform(scaleX: 1, y: 0.9)
            })
            UIView.addKeyframe(withRelativeStartTime: 3/5, relativeDuration: 1/5, animations: { _ in
                self.jonBonJovi.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        }, completion: nil)
    }

    func constrainJonBonJovi() {
        self.jonBonJovi.translatesAutoresizingMaskIntoConstraints = false
        self.jonBonJovi.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    
    
}

