//
//  File.swift
//  Checkers
//
//  Created by Lin Li on 4/23/18.
//  Copyright © 2018 Lin Li. All rights reserved.
//

import Foundation
import UIKit

class Piece : UIView {
    var color: UIColor {
        didSet {
            self.backgroundColor = color
        }
    }
    
    init(frame: CGRect, color: UIColor) {
        self.color = color
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

