//
//  SecondViewController.swift
//  ViewLifeCycle
//
//  Created by Samit Koyom on 23/7/2565 BE.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtResultUsername: UILabel!
    @IBOutlet weak var txtResultPassword: UILabel!
    
    // สร้างตัวแปรไว้รับค่าจากหน้าแรก
    var getUsername: String! = nil
    var getPassword: String! = nil
    
    // Step 1: เริ่มโหลดหน้าจอ
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Step 1: viewDidLoad Screen 2")
        
        // การเซ็ตค่าตัวแปร
        txtResultUsername.text = getUsername
        txtResultPassword.text = getPassword
    }
    
    // Step 2: หน้าจอกำลังจะปรากฏ
    override func viewWillAppear(_ animated: Bool) {
        print("Step 2: viewWillAppear Screen 2")
    }
    
    // Step 3: หน้าจอปรากฏเสร็จแล้วสมบูรณ์
    override func viewDidAppear(_ animated: Bool) {
        print("Step 3: viewDidAppear Sceen 2")
    }
    
    // Step 4: หน้าจอกำลังจะหายไป
    override func viewWillDisappear(_ animated: Bool) {
        print("Step 4: viewWillDisappear Screen 2")
    }
    
    // Step 5: หน้าจอหายไปแล้วอย่างสมบูรณ์
    override func viewDidDisappear(_ animated: Bool) {
        print("Step 5: viewDidDisappear Screen 2")
    }
    
    
}
