//
//  ViewController.swift
//  Checkers
//
//  Created by Lin Li on 4/16/18.
//  Copyright © 2018 Lin Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var board: Board = Board(rows: 8, columns: 8)
    override func viewDidLoad() {
        super.viewDidLoad()

        board = Board(rows: 8, columns: 8)
        createGameBoard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        let tile = context.nextFocusedView
        tile?.layer.shadowOffset = CGSize(width: 0, height: 10)
        tile?.layer.shadowOpacity = 0.6
        tile?.layer.shadowRadius = 15
        tile?.layer.shadowColor = UIColor.black.cgColor
        context.previouslyFocusedView?.layer.shadowOpacity = 0
    }
    
    func createGameBoard() {
        self.view.addSubview(board.backgroundView)
        
        // add target to each tile
        for tile in board.tiles {
            tile.addTarget(self, action: #selector(tileTapped), for: .primaryActionTriggered)
        }
        
    }
    
    @objc func tileTapped(sender: UIButton) {
        print("tile tapped")
        let tile = sender as! Tile
        // check if it is a valid piece
        if board.isValidTile(tile: tile) {
            // highlight available moves
            if tile.containsPiece == true {
            board.highlightMoves(tile: tile)
            }
            
            // tap available tile and move
            
            if board.possibleMoves.contains(tile) {
                
                
                
            }
            
            // check if move has multiple moves
        }
        
        
        
    }

}

