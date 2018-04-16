//
//  Board.swift
//  Checkers
//
//  Created by  on 4/16/18.
//  Copyright © 2018 Lin Li. All rights reserved.
//

import UIKit


class Board {
    
    var rows: Int, columns: Int

    
    var tiles = [Tile]()
    var backgroundView: UIView
    
    init(rows: Int, columns: Int)
    {
        self.rows = rows
        self.columns = columns
        
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        let blockWidth = (height - 300.0) / CGFloat(rows)
        let center = CGPoint(x: width * 0.5, y: height * 0.5)
        self.backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: (blockWidth + 2.0) * CGFloat(columns), height: (blockWidth + 2.0) * CGFloat(rows)))
        //        self.backgroundView.backgroundColor = UIColor.grapefruitDark
        self.backgroundView.center = center
        
        for i in 0..<(rows * columns)
        {
            let row = i / columns + 1
            let column = (i % columns) + 1
            let pos = TilePosition(row: row, column: column)
            let rect = CGRect(x:CGFloat(column - 1) * (blockWidth + 2.0) , y: CGFloat(row - 1) * (blockWidth + 2.0), width: blockWidth, height: blockWidth)
            let tile = Tile(position: pos, name: i + 1, frame: rect)
            tiles.append(tile)
            backgroundView.addSubview(tile)
        }
        
    }
    
//    func shuffle(numberOfMoves: Int) {
//        for _ in 0..<numberOfMoves {
//            // find all possible moves.  up to 4.
//            var possibleTiles: [Tile] = []
//            for tile in self.tiles {
//                if isNextToEmptySquare(position: tile.position) {
//                    possibleTiles.append(tile)
//                    //                    print("found possible tile: \(tile.name)")
//                }
//            }
//            
//            // select a random one of the possible moves and move
//            let randIndex = Int(arc4random_uniform(UInt32(possibleTiles.count)))
//            
//            let tileToMove = possibleTiles[randIndex]
//            self.move(startPosition: tileToMove.position)
//        }
//        // reset moves to 0, because you are shuffling and starting over
//        self.moves = 0
//    }
//    
//    // this function will move swap the tile in the start position with the emptyTile.  The check if its valid happens in the game.
//    func move(startPosition: TilePosition) {
//        // get the tile you want to move
//        if let tile = self.tileAt(position: startPosition) {
//            let holdingFrame = emptyTile.frame
//            let holdingPosition = emptyTile.position
//            // swap emptyTile with tile's frame and position
//            emptyTile.frame = tile.frame
//            tile.frame = holdingFrame
//            
//            emptyTile.position = tile.position
//            tile.position = holdingPosition
//            moves += 1
//        }
//    }
//    
//    func isNextToEmptySquare(position: TilePosition) -> Bool
//    {
//        return
//            (position.row == emptyTile.position.row && abs(position.column - emptyTile.position.column) == 1) ||
//                (position.column == emptyTile.position.column && abs(position.row - emptyTile.position.row) == 1)
//    }
//    
//    func tileAt(position: TilePosition) -> Tile?
//    {
//        for tile in self.tiles
//        {
//            if tile.position.row == position.row && tile.position.column == position.column
//            {
//                return tile
//            }
//        }
//        return nil
//    }
//    
//    func isSolved() -> Bool {
//        for i in 0..<(rows * columns - 1)
//        {
//            let pos = TilePosition(row: i / columns + 1, column: (i % columns) + 1)
//            if let tile = tileAt(position: pos) {
//                if tile.name != i + 1 {
//                    return false
//                }
//            }
//            
//        }
//        return true
//    }
//    
//    // this will bring board back to the solved position
//    func resetBoard()
//    {
//        for i in 0..<(rows * columns - 1)
//        {
//            let pos = TilePosition(row: i / columns + 1, column: (i % columns) + 1)
//            if let tile = tileAt(position: pos) {
//                tile.name = i + 1
//                tile.setTileTitle()
//            }
//        }
//        emptyTile = tileAt(position: TilePosition(row: rows, column: columns))!
//        emptyTile.name = 0
//        emptyTile.setTileTitle()
//        
//        // reset moves to 0, because you are shuffling and starting over
//        self.moves = 0
//    }
    
    
}

