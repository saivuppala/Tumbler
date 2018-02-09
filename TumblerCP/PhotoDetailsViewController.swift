//
//  PhotoDetailsViewController.swift
//  TumblerCP
//
//  Created by Sai Vuppala on 2/7/18.
//  Copyright © 2018 Sai Vuppala. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var big: UIImageView!
    var post: NSDictionary!
    //var photoURL: URL?
   // var img: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = post.value(forKeyPath: "photos") as? [NSDictionary] {
            print ("check")
            print (photos[0].value(forKeyPath: "original_size.url") as? String)
            let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
            
            if let imageUrl = URL(string: imageUrlString!) {
                self.big.af_setImage(withURL: imageUrl)
            } else {
                print("imageUrlString is nil")
            }
        } else {
            print("photos is nil")
        }
    }
        //big.image = img

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
