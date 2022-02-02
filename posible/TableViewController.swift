//
//  TableViewController.swift
//  posible
//
//  Created by 국정근 on 2022/01/29.
//

import UIKit

// 앱 시작 시 기본적으로 나타낼 목록
var items = ["전화하기", "식사하기", "운동하기","공부하기"]
var itemsImageFile = ["telephone-call.png", "restaurant.png", "dumbbell.png","study.png"]

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        tvListView.reloadData()
    }
    
    // Table view data source
    // 섹션의 수를 담당, 섹션의 수를 리턴하는 함수, 테이블 안의 섹션 개수를 1로 설정
    override func numberOfSections(in  tableView:UITableView) -> Int {
        return 1
    }
    //numberOfRowsInSection: 섹션 안에 있는 row(행)의 갯수를 리턴해주는 함수, 섹션당 열의 개수를 전달
    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return items.count
        // items의 count(수)를 리턴, 안에 있는 원소를 매번 바꾸지 않아도 items 안에 있는 원소를 리턴해준다.

    }
    // items와 itemsImageFile의 값을 셀에 삽입함
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            // Configure the cell...
            cell.textLabel?.text = items[(indexPath as NSIndexPath).row]
            cell.imageView?.image = UIImage(named: itemsImageFile[(indexPath as NSIndexPath).row])
     
            return cell
        }
        
   
// Override to support editing the table view.
 // 목록 삭제 함수
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
         // Delete the row from the data source
         items.remove(at: (indexPath as NSIndexPath).row)
         itemsImageFile.remove(at: (indexPath as NSIndexPath).row)
         tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
 }
 
 // 삭제 시 "Delete" 대신 "삭제"로 표시
 override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
     return "삭제"
     
 }
 
 // Override to support rearranging the table view.
 // 목록 순서 바꾸기
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     let itemToMove = items[(fromIndexPath as NSIndexPath).row]
     let itemImageToMove = itemsImageFile[(fromIndexPath as NSIndexPath).row]
     items.remove(at: (fromIndexPath as NSIndexPath).row)
     itemsImageFile.remove(at: (fromIndexPath as NSIndexPath).row)
     items.insert(itemToMove, at: (to as NSIndexPath).row)
     itemsImageFile.insert(itemImageToMove, at: (to as NSIndexPath).row)
 }
 

 /*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
 }
 */
 
 
 // MARK: - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 // 세그웨이를 이용하여 디테일 뷰로 전환하기
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     if segue.identifier == "sgDetail" {
         let cell = sender as! UITableViewCell
         let indexPath = self.tvListView.indexPath(for: cell)
         let detailView = segue.destination as! DetailViewController
         detailView.receiveItem(items[((indexPath as NSIndexPath?)?.row)!])
     }
 }
 

}

