//
//  UICollectionView+reloadDynamicData.swift
//  DynamicCollectionView
//
//  Created by Matheus Felizola Freires on 06/08/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

extension UICollectionView {
    /**
     Should be used instead of `reloadData()` if your cells are according to **DynamicCollectionViewCellProtocol**.

     - Attention: The **estimatedItemSize** of the collection view's Flow Layout should be set to **UICollectionViewFlowLayoutAutomaticSize** for this to work as expected.
     - Author: Matheus Felizola Freires
     */
    func reloadDynamicData() {
        self.reloadData()
        self.collectionViewLayout.invalidateLayout()
    }
}
