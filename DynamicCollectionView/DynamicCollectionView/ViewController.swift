//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Matheus Felizola Freires on 05/08/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var tags = ["Tag 1", "Tag 12", "Tag 123", "Tag 1234", "Tag 12345"]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "TagCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: TagCollectionViewCell.identifier)

        //Provide the cell data and allow the view controller to do the necessary setups for the dynamic cell sizes.
        collectionView.dataSource = self
        collectionView.collectionViewLayout = DynamicFlowLayout()

        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tags.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TagCollectionViewCell.identifier, for: indexPath) as! TagCollectionViewCell

        cell.display(text: tags[indexPath.row])

        return cell
    }

    //This is where the cell size is updated.
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = cell as? TagCollectionViewCell {
            cell.updateDynamicCellSize()
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        tags.remove(at: indexPath.row)
        collectionView.reloadDynamicData()
    }
}




