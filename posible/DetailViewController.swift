//
//  DetailViewController.swift
//  posible
//
//  Created by 국정근 on 2022/01/29.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveItem = ""
    @IBOutlet var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblItem.text = receiveItem

        // Do any additional setup after loading the view.
    }
    
    // Main View에서 변수를 받아오기 위한 함수
       func receiveItem(_ item: String){
           receiveItem = item
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
