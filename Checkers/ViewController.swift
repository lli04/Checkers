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

    func createGameBoard() {
        self.view.addSubview(board.backgroundView)
        
        // add target to each tile
        for tile in board.tiles {
            tile.addTarget(self, action: #selector(tileTapped), for: .primaryActionTriggered)
        }
        
    }
    
    @objc func tileTapped(sender: UIButton) {
        print("tile tapped")
    }

}

