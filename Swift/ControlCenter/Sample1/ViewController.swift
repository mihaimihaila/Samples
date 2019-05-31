//
//  ViewController.swift
//  Sample1
//
//  Created by Mihai Mihaila on 2018-05-01.
//  Copyright © 2018 Mihai Mihaila. All rights reserved.
//

import UIKit
import GridLayout

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let controlCenter = buildControlCenter()
        controlCenter.backgroundColor = .lightGray
        
        view.addSubview(controlCenter)
        
        _ = controlCenter.constraint(width: 320, height: 480)
        controlCenter.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        controlCenter.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func buildControlCenter() -> UIView {
        var items = [GridItem]()
        items.append(GridItem(buildPanel(), position: Position(rowSpan: 2, columnSpan: 2), margin: 8).stretched())
        items.append(GridItem(buildButton(), margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 1, margin: 12).stretched())
        items.append(GridItem(buildButton(), column: 1, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 1, column: 1, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 2, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 2, column: 1, margin: 12).stretched())
        items.append(GridItem(buildButton(), position: Position(row: 3, columnSpan: 2), margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 4, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 4, column: 1, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 5, margin: 12).stretched())
        items.append(GridItem(buildButton(), row: 5, column: 1, margin: 12).stretched())
        items.append(GridItem(buildPanel(), position: Position(column: 2, rowSpan: 2, columnSpan: 2), margin: 8).stretched())
        items.append(GridItem(buildButton(), position: Position(row: 2, column: 2, rowSpan: 2), margin: 8).stretched())
        items.append(GridItem(buildButton(), position: Position(row: 2, column: 3, rowSpan: 2, columnSpan: 2), margin: 8).stretched())
        items.append(GridItem(buildButton(), row: 4, column: 2, margin: 8).stretched())
        items.append(GridItem(buildButton(), row: 4, column: 3, margin: 8).stretched())

        return UIView.gridLayoutView(items: items,
                                     rows: [.fill, .fill, .fill, .fill, .fill, .fill],
                                     columns: [.fill, .fill, .fill, .fill])
    }
    
    // mock button
    func buildButton() -> UIView {
        let buttonView = UIView.spacer(color: .darkGray)
        buttonView.layer.cornerRadius = 12
        
        return buttonView
    }
    
    // mock background panel
    func buildPanel() -> UIView {
        let buttonView = UIView.spacer(color: .gray)
        buttonView.layer.cornerRadius = 12
        
        return buttonView
    }
}
