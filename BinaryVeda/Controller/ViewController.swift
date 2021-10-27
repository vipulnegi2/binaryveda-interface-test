//
//  ViewController.swift
//  BinaryVeda
//
//  Created by Vipul Negi on 26/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var registerButton: UIView!
    @IBOutlet weak var trackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Interface Demo"
        trackButton.setTitleColor(UIColor(red: 82/255, green: 110/255, blue: 216/255, alpha: 1), for: .normal)
    }

    @IBAction func registerButtonAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

@IBDesignable extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
              layer.cornerRadius = newValue

              // If masksToBounds is true, subviews will be
              // clipped to the rounded corners.
              layer.masksToBounds = (newValue > 0)
        }
    }
}
