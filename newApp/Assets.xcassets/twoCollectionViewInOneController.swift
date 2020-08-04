//
//  twoCollectionViewInOneController.swift
//  newApp
//
//  Created by Ahmed kamal on 8/3/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class customCellClass: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
}

class twoCollectionViewInOneController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
   
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnCollection1: UIButton!
    @IBOutlet weak var btnCollection2: UIButton!
    
    var arrOfImages = [     UIImage(named:"1"),
                            UIImage(named:"2") ,
                            UIImage(named:"3") ,
                            UIImage(named:"1"),
                            UIImage(named:"2") ,
                            UIImage(named:"3") ,
                            UIImage(named:"1") ,
                            UIImage(named:"2"),
                            UIImage(named:"3"),
                            UIImage(named:"1") ,
                            UIImage(named:"2"),
                            UIImage(named:"3"),
                            UIImage(named:"1") ,
                            UIImage(named:"2"),
                            UIImage(named:"3"),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfImages.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCellClass", for: indexPath) as! customCellClass
        
         cell.imgView.image = arrOfImages[indexPath.row]
        
       // cell.imgView.image = UIImage(named:arrOfImages[indexPath.row])
           return UICollectionViewCell()
       }

    @IBAction func btnCollection1(_ sender: Any) {
    }
    
    @IBAction func btnCollection2(_ sender: Any) {
    }
}
