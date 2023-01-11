//
//  ViewController.swift
//  tableviewHeadersandFooters
//
//  Created by chaitanya on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var tableViewData = ["ashok","raju","nani","chaitanya","rakesh","ashok","raju","nani","chaitanya","rakesh","ashok","raju","nani","chaitanya","rakesh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    // MARK: -  UITableview Delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = tableViewData[indexPath.row]
        return cell!
    }
    //MARK: - Header And Footer Delegate Methods
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableview.frame.width, height: 200))
        headerView.backgroundColor = .green
        
        let headerimage = UIImageView(frame: headerView.bounds)
        headerimage.contentMode = .scaleToFill
        headerimage.image = UIImage(named: "SwiftCourseImage")
        headerView.addSubview(headerimage)
        return headerView
    }
     
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableview.frame.width, height: 50))
        footerView.backgroundColor = .green
          
        
        let footerLabel = UILabel(frame: footerView.bounds)
        footerLabel.textAlignment = .center
        footerLabel.text = "Thank You"
        footerView.addSubview(footerLabel)
    
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
}
