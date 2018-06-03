//
//  SignupViewController.swift
//  HelloNewApp
//
//  Created by Thanh Quach on 6/3/18.
//  Copyright © 2018 Sea Group Limited. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

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

}
