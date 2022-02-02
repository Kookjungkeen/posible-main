//
//  plan.File.swift
//  posible
//
//  Created by 국정근 on 2022/01/14.
//

import UIKit

class PlanViewController: UIViewController {
    // UITableViewDelegate: 테이블뷰에 대한 설정
    // UITableViewDataSoure: 소스를 집어 넣기 위한 설정

    
    @IBOutlet var myTableView: UITableView!
    
    
    let contentArray = [
        "today is good",
        "Hi my name is Kookjungkeen",
        "안녕 나는 정근이야",
        "안녕 정근아 나는 인영이야",
        "인영아 나는 다영이야",
        "다영아 나는 형부야",
        "가장 뛰노는 인생을 지혜는 그들의 그들에게 옷을 이것은 꽃이 칼이다. 같은 끝에 많이 내려온 따뜻한 되려니와, 희망의 것이다. 이 생명을 이상, 있으랴? 용감하고 있으며, 인간은 그러므로 간에 싶이 피는 않는 피에 뿐이다. 청춘의 위하여, 대중을 붙잡아 교향악이다. 풍부하게 청춘은 내는 없으면, 동력은 것이다. 생의 그들은 못하다 무엇을 얼마나 방지하는 미묘한 보라. 끓는 보는 불어 동산에는 크고 오아이스도 부패뿐이다. 것은 인도하겠다는 그들에게 부패뿐이다. 오아이스도 가치를 얼음이 뛰노는 우리 철환하였는가?",
        "끓는 할지니, 청춘에서만 가장 예가 심장의 날카로우나 물방아 말이다. 찾아 이상 그림자는 황금시대다. 맺어, 찾아다녀도, 같이, 되는 것이다. 눈이 사랑의 끓는 풀이 물방아 보이는 뜨거운지라, 것이다. 가는 사랑의 않는 많이 청춘은 가치를 내려온 얼음 있는가? 있는 과실이 이상은 청춘 청춘이 우리 그것은 아니한 아니다. 천하를 천고에 그들은 주는 것이다. 품었기 인생을 찾아 우리의 방지하는 착목한는 것이다.보라, 꽃이 것이다. 아니더면, 아름답고 그와 피부가 든 두손을 끓는 피다. 못할 보배를 굳세게 착목한는 것이다.\n그러므로 인생을 아름답고 아니다. 길을 뼈 그들은 현저하게 눈에 내는 스며들어 운다. 유소년에게서 인간에 방황하여도, 위하여 황금시대를 그들의 바로 때문이다. 노년에게서 몸이 길을 풀이 불러 무엇이 방황하여도, 눈에 행복스럽고 교향악이다. 그것은 너의 보배를 창공에 스며들어 무엇이 보내는 무엇을 것이다. 얼마나 풀밭에 것은 별과 같이 새가 싹이 그들의 트고, 듣는다. 인간의 사랑의 그것을 것이다.보라, 칼이다. 그들은 인생에 소리다.이것은 할지니, 속에서 끝까지 있는 몸이 능히 사막이다. 보이는 하였으며, 것이다.보라, 이상, 이 피고 인생을 커다란 듣는다."
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 셀 리소스 파일 가져오기
        let myTableViewCellNib = UINib(nibName: "MyTableViewCell", bundle: nil)
        
        // 셀에 리소스 등록
        self.myTableView.register(myTableViewCellNib, forCellReuseIdentifier: "MyTableViewCell")
        self.myTableView.rowHeight = UITableView.automaticDimension
        self.myTableView.estimatedRowHeight = 120
        
        // 중요함 델리겟 패턴을 쓰고 있기에 UITableViewDelegate 이랑 DataSource이랑 서로 연결 해주어야 함.
        self.myTableView.delegate = self // extension PlanViewController: UITableViewDelegate { 뜻하고 있음
        self.myTableView.dataSource = self

        print("contentArray.count : \(contentArray.count)")
 
    }
    
}

extension PlanViewController: UITableViewDelegate {
// UITableViewDelegate: 테이블뷰에 대한 설정

    
}
extension PlanViewController: UITableViewDataSource {
    // UITableViewDataSoure: 소스를 집어 넣기 위한 설정
    // 테이블 뷰의 셀의 갯수

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
    }
    // 각 셀에 대한 설정
    //cellForRowAt: cell을 하나하나 드래그 할 때마다 cellForRowAt이 호출 됨, 데이터랑 뷰를 연결 시켜주는 역할을 함.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.userContentLabel.text = contentArray[indexPath.row]
        cell.userProfileImage.layer.cornerRadius = cell.userProfileImage.frame.height / 2
         
    
        return cell
    
    // UITableViewDataSoure: 소스를 집어 넣기 위한 설정
    
    }

}
