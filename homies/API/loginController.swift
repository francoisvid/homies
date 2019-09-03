//
//  loginController.swift
//  homies
//
//  Created by vidal françois on 03/09/2019.
//  Copyright © 2019 vidal françois. All rights reserved.
//

import UIKit
import Alamofire

class loginController : UIViewController {
    @IBOutlet weak var onConnexion: UIButton!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()


//        let urlString = "http://localhost:4000/api/action/1/modules"
//        Alamofire.request(urlString).responseString {  response in
//        switch response.result {
//            case .success:
//                if response.result.value != nil {
//                self.login.text = "vidalfrancois11@gmail.com"
//                self.password.text = "PASSWORD"
//                print("ok")
//            }
//            case .failure( _):
//                print("erreur")
//            }
//        }
    }
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
