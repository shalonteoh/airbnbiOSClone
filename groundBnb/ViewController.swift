//
//  ViewController.swift
//  groundBnb
//
//  Created by Shalon Teoh on 18/11/2020.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let nearbyList : [ [String : String] ] = [
        ["place":"Tanjung Tokong", "distance":"20KM away"],
        ["place":"Bayan Lepas", "distance":"5KM away"],
        ["place":"Jelutong", "distance":"10KM away"],
        ["place":"Georgetown", "distance":"15KM away"],
        ["place":"Butterworth", "distance":"40KM away"],
        ["place":"Air Itam", "distance":"15KM away"],
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nearbyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nearbyCell", for: indexPath) as! NearbyCollectionViewCell
        
        cell.imageView.image = UIImage(named: "nearby\(indexPath.row+1)")
        cell.placeLabel.text = nearbyList[indexPath.row]["place"]
        cell.distanceLabel.text = nearbyList[indexPath.row]["distance"]
        return cell
    }
      

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

