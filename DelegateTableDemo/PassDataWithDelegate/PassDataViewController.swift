//
//  PassDataViewController.swift
//  DelegateTableDemo
//
//  Created by Vu Ngoc Cong on 3/22/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

protocol PassDataViewControllerDelegate: class {
    func endEditingNumber(number: Int?)
}

class PassDataViewController: UIViewController {
    
    var number: Int?
    weak var delegate: PassDataViewControllerDelegate?
    @IBOutlet weak var txtNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtNumber.text = "\(number!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnDelegate(_ sender: Any) {
        delegate?.endEditingNumber(number: Int(txtNumber.text!))
        // neu tao Navigation controller thi phai goi den chinh Navigation: sd cho push va pop
        //     navigationController?.popViewController(animated: true)
        // neu khong thi dung dismiss de thuc hien truyen data ve view 1: sd cho present - dismiss
        dismiss(animated: true, completion: nil)
    }
    
}
