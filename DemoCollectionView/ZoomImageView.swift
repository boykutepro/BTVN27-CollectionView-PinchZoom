//
//  ZoomImageView.swift
//  DemoCollectionView
//
//  Created by Thiện Tùng on 1/16/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class ZoomImageView: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.image = image
        photoImageView.isUserInteractionEnabled = true
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinched(_:)))
        photoImageView.addGestureRecognizer(pinchGesture)
        
    }
    @objc func pinched(_ pinched: UIPinchGestureRecognizer){
        if pinched.state == .ended{
            photoImageView.transform = CGAffineTransform.identity
        }else{
            photoImageView.transform = CGAffineTransform(scaleX: pinched.scale , y: pinched.scale)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
