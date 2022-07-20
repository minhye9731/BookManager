//
//  BookManageCollectionViewController.swift
//  BookManager
//
//  Created by 강민혜 on 7/21/22.
//

import UIKit
import Toast
import Kingfisher

class BookManageCollectionViewController: UICollectionViewController {
    
    // 서적데이터 인스턴스 생성
    var bookList = BookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayoutConfigure()
    }
    
    func setLayoutConfigure() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    }
    
    // item 수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.book.count
    }
    
    // item 설정
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        
        // 배경색상&레이아웃&이미지 설정 with extension
        let data = bookList.book[indexPath.row]
        item.setItemUI(data: data)
        
        return item
    }
  
    // 아이템 선택시 팝업
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        view.makeToast("월간 베스트 \(indexPath.item + 1)위 도서를 선택했습니다.", duration: 2, position: .center)
    }
}
