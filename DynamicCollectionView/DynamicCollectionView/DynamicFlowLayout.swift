//
//  DynamicFlowLayout.swift
//  DynamicCollectionView
//
//  Created by Matheus Felizola Freires on 05/08/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

/**
    A Flow Layout subclass that supports dynamic cell sizes.
*/
class DynamicFlowLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
    }
}
