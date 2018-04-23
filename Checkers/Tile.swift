//
//  Tile.swift
//  Checkers
//
//  Created by  on 4/16/18.
//  Copyright © 2018 Lin Li. All rights reserved.
//

import UIKit

class Tile : UIButton
{
    // this will carry the row and column
    var position: TilePosition
    var name: Int
//    var bordersEmptyTile: Bool
    
    init(position: TilePosition, name: Int, frame: CGRect) {
        self.position = position
        self.name = name

        super.init(frame: frame)
        
        self.setTitleColor(.black, for: .normal)
        
        if position.column % 2 == 0 && position.row % 2 != 0 {
            self.backgroundColor = UIColor.white
        }
        
        if position.column % 2 == 0 && position.row % 2 == 0 {
            self.backgroundColor = UIColor.brown
        }
        
        if position.row % 2 == 0 && position.column % 2 != 0 {
            self.backgroundColor = UIColor.white
        }
        
        if position.row % 2 != 0 && position.column % 2 != 0 {
            self.backgroundColor = UIColor.brown
        }
        
//        self.backgroundColor = UIColor.blueJeansLight
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 2.0
        self.setTileTitle()
        
    }
    
    func setTileTitle() {
        if self.name == 0 {
            // this is the empty tile
            self.setTitle("", for: .normal)
        } else {
            // this is every other tile
            self.setTitle("", for: .normal)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
struct TilePosition
{
    var row: Int, column: Int
}
