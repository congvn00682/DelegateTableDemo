//
//  ViewController.swift
//  DelegateTableDemo
//
//  Created by Vu Ngoc Cong on 3/22/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PassDataViewControllerDelegate{
    
    
    var dataSource = DataSource()
    @IBOutlet weak var dataTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTable.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = dataTable.indexPathForSelectedRow
        if let passDataVC = segue.destination as? PassDataViewController {
            passDataVC.number = dataSource.arr[(index?.row)!]
            passDataVC.delegate = self
        }
    }
    
    func endEditingNumber(number: Int?) {
        if let index = dataTable.indexPathForSelectedRow {
            dataSource.arr[index.row] = number!
            dataTable.reloadData()
        }
    }

}

