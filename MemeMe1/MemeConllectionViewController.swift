//
//  MemeConllectionViewController.swift
//  MemeMe1
//
//  Created by Anan Yousef on 9/4/20.
//  Copyright © 2020 Anan Yousef. All rights reserved.
//

import UIKit

class MemeConllectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate;
        let appDelegate = object as! AppDelegate;
        return appDelegate.memes;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Meme", for: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.memeImage.image = meme.memedImage
//        cell. = meme.topText + meme.bottomText
        
        return cell
    }
}
