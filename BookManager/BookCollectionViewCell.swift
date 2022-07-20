//
//  BookCollectionViewCell.swift
//  BookManager
//
//  Created by 강민혜 on 7/21/22.
//

import UIKit
import Kingfisher

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookRateLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    
    func setItemUI(data: Book) {
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        
        // 배경색상 랜덤
        self.backgroundColor = .mainColorSet.randomElement()
        
        bookTitleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        bookTitleLabel.textColor = .white
        bookTitleLabel.text = data.title
        
        bookRateLabel.font = UIFont.systemFont(ofSize: 10)
        bookRateLabel.textColor = .label
        bookRateLabel.text = String(data.rate)
        
        // 이미지 세팅하기
        bookImageView.contentMode = .scaleAspectFill
        let url = URL(string: data.imageURL)
        bookImageView.kf.setImage(with: url)
    }
}
