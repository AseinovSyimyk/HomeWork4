//
//  GoodsTableViewCell.swift
//  HomeWork4
//
//  Created by User on 30/10/23.
//

import UIKit

class GoodsTableViewCell: UITableViewCell {
    
    private let BGView = UIView()
    
    private let goodsImage: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 11
        view.contentMode = .scaleAspectFit
        return view
    }()
    private let goodsName: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
     let goodsCount: UILabel = {
        let label = UILabel()
        label.textColor = (UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1))
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initCellUI()
        initImage()
        initNameLabel()
        initCountLabel()
    }
    
    private func initCellUI(){
        contentView.addSubview(BGView)
        BGView.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
        BGView.topAnchor.constraint(equalTo: contentView.topAnchor),
        BGView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        BGView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20),
        BGView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),        BGView.heightAnchor.constraint(equalToConstant: 220)
       ])
}
    private func initNameLabel() {
       
            BGView.addSubview(goodsName)
        
            goodsName.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            goodsName.topAnchor.constraint(equalTo: goodsImage.bottomAnchor),
            goodsName.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor),
           ])
    }
    private func initCountLabel() {
        BGView.addSubview(goodsCount)
        goodsCount.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
        goodsCount.topAnchor.constraint(equalTo: goodsName.bottomAnchor),
        goodsCount.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor),
       ])
    }
    private func initImage(){
        BGView.addSubview(goodsImage)
        goodsImage.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
        goodsImage.topAnchor.constraint(equalTo: BGView.topAnchor,constant: 20),
        goodsImage.trailingAnchor.constraint(equalTo: BGView.trailingAnchor),
        goodsImage.leadingAnchor.constraint(equalTo: BGView.leadingAnchor),
        goodsImage.bottomAnchor.constraint(equalTo: BGView.bottomAnchor),
        goodsImage.heightAnchor.constraint(equalToConstant: 166)
       ])
        
    }
    func initCellData(_ goods: Goods) {
        goodsImage.image = UIImage(named: goods.image)
        goodsName.text = goods.name
        goodsCount.text = "\(goods.count) + items"
    }
    required init?(coder: NSCoder) {
        fatalError("init(Coder:) has not been implemented")
        
    }
}


