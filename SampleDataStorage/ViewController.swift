//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by 田島諒 on 2018/12/10.
//  Copyright © 2018 Ribast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UseDefaultの設定
        let userDefaults = UserDefaults.standard
        
        // 値の抽出
        if let value = userDefaults.string(forKey: "text") {
            textField.text = value
        }
        
    }

    @IBAction func tapActionButton(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        // 値の設定
        userDefaults.set(textField.text, forKey: "text")
        
        // 保存処理
        userDefaults.synchronize()
    }
    
}

