//
//  SecondViewController.swift
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    @objc var passData: String?
    
    @objc weak var delegate: PassDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let passData = self.passData else { fatalError("passData is nil") }
        print("passData: \(passData)")
        
        let saveButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: nil, action: #selector(saveData))
        self.navigationItem.rightBarButtonItem = saveButton
    }
    
    @objc func saveData() {
        guard let result = self.inputTextField.text else { return }
        delegate?.passData(withStr: result)
        self.navigationController?.popViewController(animated: true)
    }
}
