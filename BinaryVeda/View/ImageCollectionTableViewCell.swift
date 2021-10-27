//
//  ImageCollectionTableViewCell.swift
//  BinaryVeda
//
//  Created by Vipul Negi on 27/10/21.
//

import UIKit

class ImageCollectionTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray = [#imageLiteral(resourceName: "abstract1"),#imageLiteral(resourceName: "abstract2"),#imageLiteral(resourceName: "abstract3"),#imageLiteral(resourceName: "abstract4"),#imageLiteral(resourceName: "abstract5"),#imageLiteral(resourceName: "abstract6"),#imageLiteral(resourceName: "abstract1"),#imageLiteral(resourceName: "abstract2"),#imageLiteral(resourceName: "abstract3"),#imageLiteral(resourceName: "abstract4"),#imageLiteral(resourceName: "abstract5"),#imageLiteral(resourceName: "abstract6")]
    let layout = UICollectionViewFlowLayout()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = layout
        layout.scrollDirection = .vertical
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ImageCollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell
        cell?.imageview.image = imageArray[indexPath.row]
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/2)-10, height: (collectionView.frame.size.width/2))
    }
    
    
}
