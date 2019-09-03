//
//  DraggableViewController.swift
//  homies
//
//  Created by vidal françois on 02/09/2019.
//  Copyright © 2019 vidal françois. All rights reserved.
//

import UIKit
import PullToDismiss



class DraggableViewController : UIViewController {
            
    @IBOutlet weak var popupView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 10
    }    
}

class SampleViewController: UIViewController {
//    @IBOutlet private weak var tableView: UITableView!
    private var pullToDismiss: PullToDismiss?
    override func viewDidLoad() {
        super.viewDidLoad()
        pullToDismiss = PullToDismiss(scrollView: tableView)
        pullToDismiss?.delegate = self
        
        let vc = SampleViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .overCurrentContext

        self.present(nav, animated: true, completion: nil)
    }
    
    
}

extension SampleViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // ...
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // ...
    }
}
