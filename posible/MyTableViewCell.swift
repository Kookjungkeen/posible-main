//
//  MyTableViewCell.swift
//  posible
//
//  Created by 국정근 on 2022/01/14.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet var userProfileImage: UIImageView!
    
    @IBOutlet var userContentLabel: UILabel!
    
    //셀이 렌더링(뷰를 그릴 때) 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MyTableViewCell - awakeFromNib() called")
  //      userProfileImage.layer.cornerRadius = userProfileImage.frame.width / 2
    }
    
    
}
