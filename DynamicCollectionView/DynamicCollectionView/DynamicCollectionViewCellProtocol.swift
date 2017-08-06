//
//  DynamicCollectionViewCellProtocol.swift
//  DynamicCollectionView
//
//  Created by Matheus Felizola Freires on 06/08/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

/**
 Collection view cells that are supposed to have dynamic sizes should implement this protocol.
 - Author: Matheus Felizola Freires
*/
protocol DynamicCollectionViewCellProtocol: class {
    ///This is the view that will be resized by AutoLayout.
    weak var mainView: UIView! {get set}
}

extension DynamicCollectionViewCellProtocol where Self:UICollectionViewCell {
    /**
     This method should be called from inside the `collectionView(_ collectionView:, willDisplay cell:, forItemAt indexPath:)` method like this:

        if let cell = cell as? (cell class that conforms to DynamicCollectionViewCellProtocol) {
            cell.updateDynamicCellSize()
        }

     - Author: Matheus Felizola Freires
     */
    func updateDynamicCellSize() {
        self.layoutIfNeeded()
        self.contentView.frame.size = self.mainView.frame.size
    }
}
