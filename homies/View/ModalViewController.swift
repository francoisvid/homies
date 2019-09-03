//
//  PopupController.swift
//  homies
//
//  Created by vidal françois on 02/09/2019.
//  Copyright © 2019 vidal françois. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    var interactor:Interactor? = nil

    var panGestureRecognizer: UIPanGestureRecognizer?
    var originalPosition: CGPoint?
    var currentPositionTouched: CGPoint?

    @IBOutlet weak var popupView: UIView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 10
                
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGestureAction(_:)))
        view.addGestureRecognizer(panGestureRecognizer)
        

        
    }
    
    @IBAction func panGestureAction(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)

        if sender.state == .began {
            originalPosition = view.center
            currentPositionTouched = sender.location(in: view)
        } else if sender.state == .changed {
            view.frame.origin = CGPoint(
                x:  view.frame.origin.x,
                y:  view.frame.origin.y + translation.y
            )
            sender.setTranslation(CGPoint.zero, in: self.view)
        } else if sender.state == .ended {
            let velocity = sender.velocity(in: view)
            if velocity.y >= 150 {
                UIView.animate(withDuration: 0.2, animations: {
                        self.view.frame.origin = CGPoint(
                            x: self.view.frame.origin.x,
                            y: self.view.frame.size.height
                        )
                }, completion: { (isCompleted) in
                    if isCompleted {
                        self.dismiss(animated: false, completion: nil)
                    }
                })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.view.center = self.originalPosition!
                })
            }
        }
    }
    
    
    
}
