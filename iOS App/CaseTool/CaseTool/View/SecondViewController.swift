//
//  SecondViewController.swift
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondViewLabel: UILabel!
    @objc var passData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let passData = self.passData else { fatalError("passData is nil") }
        print("passData: \(passData)")
        secondViewLabel.text = passData
    }
}
