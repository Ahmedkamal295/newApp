//
//  ViewController.swift
//  newApp
//
//  Created by Ahmed kamal on 8/2/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var numberCartlbl: UILabel!
    
    var imgArr = [     UIImage(named:"1"),
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
       
var nameProduct = [("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),("Burger sandwiches"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        numberCartlbl.layer.cornerRadius = numberCartlbl.frame.size.width / 2
        numberCartlbl.clipsToBounds  = true
    }
   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
                let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
                let rotationAngleRadians = 90.0 * CGFloat(Double.pi/180.0)
                // let rotationTransform = CATransform3DMakeRotation(rotationAngleRadians, 0, 0, 1)
                cell.layer.transform = rotationTransform
                UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity })
        
        
        cell.contentView.layer.masksToBounds = true
        cell.backgroundColor = UIColor.white
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        
        //   cell.selectionStyle = .none
        cell.lbl.text = nameProduct[indexPath.row]
        cell.img.image = imgArr[indexPath.row]
        
        return cell
    }
    func bestFrameSize() -> CGFloat {
           let frameHeight = self.view.frame.height
           let frameWidth = self.view.frame.width
           let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
           return bestFrameSize
       }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                  let bounds = collectionView.bounds
                  let heightVal = self.view.frame.height
                  let widthVal = self.view.frame.width
                  let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
                  return CGSize(width: cellsize - 10   , height: 209 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
