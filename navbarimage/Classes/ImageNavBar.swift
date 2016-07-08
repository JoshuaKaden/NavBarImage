//
//  ImageNavBar.swift
//  navbarimage
//
//  Created by Kaden, Joshua on 7/8/16.
//  Copyright © 2016 Kaden, Joshua. All rights reserved.
//

import UIKit

final class ImageNavBar: UINavigationBar {

    let imageView = UIImageView(image: UIImage(named: "topbanner"))

    override func willMoveToWindow(newWindow: UIWindow?) {
        super.willMoveToWindow(newWindow)
        guard let _ = newWindow else { return }
        
        barTintColor = UIColor.blackColor()
        clipsToBounds = true
        
        imageView.contentMode = .Center
        self.addSubview(imageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageX = (self.bounds.width / 2) - (imageView.bounds.width / 2)
        let imageY = (self.bounds.height / 2) - (imageView.bounds.height / 2)
        imageView.frame = CGRect(x: imageX, y: imageY, width: imageView.bounds.width, height: imageView.bounds.height)
    }
    
}
