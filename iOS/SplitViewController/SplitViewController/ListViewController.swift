//
//  ListViewController.swift
//  SplitViewController
//
//  Created by 千葉 誠 on 2015/01/08.
//  Copyright (c) 2015年 千葉 誠. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController,
//    UITableViewDataSource,
    UITableViewDelegate
{
    let cities = ["Tokyo", "Kanagawa", "Saitama", "Hokkaidou", "Aomori", "Iwate", "Akira", "Fukuoka", "Chiba", "Shiga", "Saga"]
    var listViewDataSource : ListViewDataSource?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        self.listViewDataSource = ListViewDataSource(cities: self.cities)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self.listViewDataSource
    }
}