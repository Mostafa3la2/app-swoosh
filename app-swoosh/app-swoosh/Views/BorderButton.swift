//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Mostafa Alaa on 7/5/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth=3.0
        layer.borderColor=UIColor.white.cgColor
        
    }
    
    

}
