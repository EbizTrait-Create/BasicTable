//
//  ViewController.swift
//  BasicTable
//
//  Created by eBizTrait on 8/1/19.
//  Copyright © 2019 eBizTrait. All rights reserved.
//

import UIKit

class BTVC: UIViewController {
    
    // MARK: -  Variables | Outlets
    var arrList = [ModelArray]()
    @IBOutlet weak var tblBasic: UITableView!
    
    // MARK: -  View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigUI()
        ConfigureData()
        
    }

    // MARK: -  Configuration
    fileprivate func ConfigUI() {
        //Set Up UI Component Here
        tblBasic.register(UINib(nibName: "CellBasic", bundle: nil), forCellReuseIdentifier: "CellBasic")
        tblBasic.tableFooterView = UIView(frame: .zero)
    }
    
    fileprivate func ConfigureData() {
        arrList.append(ModelArray(Name: "John", Address: "A1 Street", Age: 21,UserImage: UIImage(named: "User1")!))
        arrList.append(ModelArray(Name: "Jack", Address: "A2 Street", Age: 25,UserImage: UIImage(named: "User1")!))
        arrList.append(ModelArray(Name: "Tyson", Address: "A3 Street", Age: 15,UserImage: UIImage(named: "User1")!))
        arrList.append(ModelArray(Name: "Merry", Address: "A4 Street", Age: 19,UserImage: UIImage(named: "User1")!))
        ConfigTable()
    }

    fileprivate func ConfigTable() {
       tblBasic.dataSource = self
       tblBasic.delegate = self
       tblBasic.reloadData()
    }

}

// MARK: - Table view Data Sorce Delegate
extension BTVC : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellBasic", for: indexPath) as? CellBasic
        let objArray = arrList[indexPath.row]
        cell?.lblName.text = objArray.Name
        cell?.lblAddress.text = objArray.Address
        cell?.lblAge.text = "\(objArray.Age)"
        cell?.imgUser.image = objArray.UserImage
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100.0
    }
}
