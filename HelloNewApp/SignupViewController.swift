//
//  SignupViewController.swift
//  HelloNewApp
//
//  Created by Thanh Quach on 6/3/18.
//  Copyright © 2018 Sea Group Limited. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func signUpAction(_ sender: UIButton) {
        print("signUpAction")
    }

    @IBAction func segmentGenderChangedAction(_ sender: UISegmentedControl) {
        print("segmentGenderChangedAction: \(sender.selectedSegmentIndex)")

        // Alert thông báo rằng bạn đã thay đổi giới tính
    }

    @IBAction func onSwitchPolicyAction(_ sender: UISwitch) {
        print("onSwitchPolicyAction: \(sender.isOn)")

        // Alert bạn đã bật hoặc tắt
    }

    @IBAction func slideAgeAction(_ sender: UISlider) {
        print("slideAgeAction: \(Int(sender.value))")
        // Typecast (ép kiêu) : Int(giá tri cần ép kiểu)
        // self.label.text = Int()
    }

    @IBAction func didTapSignupBtn(_ sender: UIButton) {

        // 1. Username hoặc password > 0
        if usernameTextField.text?.count == 0 || passwordTextField.text?.count == 0 {
            //
            self.showAlert(title: "ABC", message: "Username hoặc password > 0")
            return
        }

        // 2 Username khong đc có ký tự đặc biệt (#)
        // if let
        // guard let
        if usernameTextField.text?.contains("#") ?? false {
            //
            self.showAlert(title: "ABC", message: "Username khong đc có ký tự đặc biệt (#)")
            return
        }

        // 3 Password.count > 6
        if passwordTextField.text?.count ?? 0 < 6 {
            //
            self.showAlert(title: "ABC", message: "Password.count > 6")
            return
        }

        // 4 ConfirmPassword == password
        if passwordTextField.text != confirmPasswordTextField.text {
            self.showAlert(title: "ABC", message: "ConfirmPassword == password")
            return
        }

        // Input valid (giá trị hợp lệ)

    }

    func showAlert(title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Cacncel", style: .cancel, handler: nil)

        alertController.addAction(alertAction)

        self.present(alertController, animated: true, completion: nil)
    }


}
