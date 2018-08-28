//
//  CollectionViewController.swift
//  CollectionViews
//
//  Created by oscar on 27/08/2018.
//  Copyright © 2018 rosolowski. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let objects = Mock.load()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.identifier)
    }
    
}

extension CollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as! ImageCell
        
        let mock = objects[indexPath.row]
        
        cell.configure(with: mock.image)
        
        return cell
    }
}
