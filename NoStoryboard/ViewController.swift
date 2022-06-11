//
//  ViewController.swift
//  NoStoryboard
//
//  Created by mac on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    let table = UITableView()
    let identifier = "MyCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        parseJson()
        table.rowHeight = 100
        table.frame = view.frame
        table.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        table.reloadData()
        table.dataSource = self
        table.delegate = self
        view.backgroundColor = .systemBlue
        view.addSubview(table)
    }

    private func parseJson() {
        let exampleUrl = URL(string: "https://rickandmortyapi.com/api/character")!
        do {
            let jsonData = try Data(contentsOf: exampleUrl)
            let result = try JSONDecoder().decode(Object.self, from: jsonData)
            print(result)
        } catch {   
           print(error)
        }
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.imageView?.image = UIImage.init(systemName: "pencil.circle")
        return cell
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
}
