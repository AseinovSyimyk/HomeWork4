//
//  ViewController.swift
//  HomeWork4
//
//  Created by User on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView = UITableView()
    
    private let cell = "cell"
    private var goodsList: [Goods] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        initData()
    }
    
    private func initData() {
        goodsList = [
            Goods(image: "Furniture", name: "Furniture", count: 10,price: 25000),
            Goods(image: "Kitchenware", name: "Kitchenware", count: 10,price: 100000),
            Goods(image: "Reading Table", name: "Reading Table", count: 10,price: 10000),
            Goods(image: "TV", name: "tv", count: 10,price: 30000),
        ]
    }
    private func initUI(){
        view.addSubview(tableView)
        tableView.register(GoodsTableViewCell.self, forCellReuseIdentifier: cell)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cell,for: indexPath)as! GoodsTableViewCell
        cell.initCellData(goodsList[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt")
        let vc = SecondViewController()
        vc.goods = goodsList[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}



