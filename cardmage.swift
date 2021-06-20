//
//  carImage.swift
//  newLibrary
//
//  Created by wanted on 3/30/1400 AP.
//

import Foundation
import UIKit


class CardImageView: UIView {
    
    var image : UIImageView?
    var blur1 : UIImageView?
    var blur2 : UIImageView?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
      
    }

    func set_layer(image1:UIImageView){
        image1.layer.cornerRadius = image1.frame.height / 20
        image1.layer.masksToBounds = true
    }
    
    func set_image(image1:UIImage){
        
        self.backgroundColor = .clear
        let height = self.layer.frame.size.height
        let widht = self.layer.frame.size.width

        
        blur1 = UIImageView(frame: CGRect(x: 10, y: 0, width: widht - 20, height: height))
        self.addSubview(blur1!)
        blur1?.alpha = 0.5

        
        blur2 = UIImageView(frame: CGRect(x: 5, y: 10, width: widht - 10, height: height - 10))
        self.addSubview(blur2!)
        blur2?.alpha = 0.8

        
        image = UIImageView(frame: CGRect(x: 0, y: 20, width: widht, height: height - 20))
        self.addSubview(image!)
        
        set_layer(image1: blur1!)
        set_layer(image1: blur2!)
        set_layer(image1: image!)
        
        image!.image = image1
        blur1!.image = image1
        blur2!.image = image1
        image?.backgroundColor = .red
    }

}
