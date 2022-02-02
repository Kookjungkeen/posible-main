//
//  UIViewController.swift
//  posible
//
//  Created by 국정근 on 2022/01/29.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var tfAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 새목록 추가하기 
    @IBAction func btnAdditem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
               itemsImageFile.append("study.png")
               tfAddItem.text = ""
               _ = navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
