//
//  CollectionViewCell.swift
//  newApp
//
//  Created by Ahmed kamal on 8/2/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var isActive:Bool = false
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
@IBOutlet weak var rateingStackView: UIStackView!
   
@IBOutlet weak var btnFavorite: UIButton!
     var selectProduct = 0
override func awakeFromNib() {
    super.awakeFromNib()
   
}

   
    @IBAction func btnFavorite(_ sender: UIButton) {
    if isActive {
        isActive = false
        btnFavorite.setImage(UIImage(named: "favouritenone"), for: .normal)
    }else{
        //sender.pulsate()
        isActive = true
        btnFavorite.setImage(UIImage(named: "favourite"), for: .normal)
    }
    
}
}
