//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by Samit Koyom on 23/7/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    // Step 1: เริ่มโหลดหน้าจอ
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Step 1: viewDidLoad Screen 1")
    }
    
    // Step 2: หน้าจอกำลังจะปรากฏ
    override func viewWillAppear(_ animated: Bool) {
        print("Step 2: viewWillAppear Screen 1")
    }
    
    // Step 3: หน้าจอปรากฏเสร็จแล้วสมบูรณ์
    override func viewDidAppear(_ animated: Bool) {
        print("Step 3: viewDidAppear Sceen 1")
    }
    
    // Step 4: หน้าจอกำลังจะหายไป
    override func viewWillDisappear(_ animated: Bool) {
        print("Step 4: viewWillDisappear Screen 1")
    }
    
    // Step 5: หน้าจอหายไปแล้วอย่างสมบูรณ์
    override func viewDidDisappear(_ animated: Bool) {
        print("Step 5: viewDidDisappear Screen 1")
    }
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        print("Username=\(txtUsername.text!)")
        print("Password=\(txtPassword.text!)")
    }
    
    // การส่งค่าข้ามหน้า viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="loginSegue"){
            let vc = segue.destination as! SecondViewController
            vc.getUsername = txtUsername.text
            vc.getPassword = txtPassword.text
        }
    }
    

}

