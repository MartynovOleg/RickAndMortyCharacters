//
//  ViewController.swift
//  NoStoryboard
//
//  Created by mac on 17.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.reloadData()
        return table
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Таблица"
        view.backgroundColor = .systemBlue
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemOrange
//        cell.didAddSubview(UIView.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 100)))
        return cell
    }


}

