//
//  DataSource.swift
//  DelegateTableDemo
//
//  Created by Vu Ngoc Cong on 3/22/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    
    var arr = Array(10...19)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arr[indexPath.row])
        return cell
    }
}
