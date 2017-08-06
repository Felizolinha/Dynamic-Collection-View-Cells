//
//  TagCollectionViewCell.swift
//  DynamicCollectionView
//
//  Created by Matheus Felizola Freires on 05/08/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell, DynamicCollectionViewCellProtocol {
    static let identifier = "tagCell"

    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var mainView: UIView!

    func display(text: String) {
        tagLabel.text = text
    }
}
