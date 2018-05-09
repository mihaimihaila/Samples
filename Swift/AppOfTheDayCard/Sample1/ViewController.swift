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
        
        view.backgroundColor = .lightGray
        
        let cardView = buildCard()
        
        view.addSubview(cardView)
        
        cardView.widthAnchor.constraint(equalToConstant: 320).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 480).isActive = true
        cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func buildCard() -> UIView {
        let mainImage = UIImage(named: "image2.jpg")
        let mainImageView = UIImageView(image: mainImage)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.contentMode = .scaleAspectFill
        
        let logoImage = UIImage(named: "image1.png")
        let logoImageView = UIImageView(image: logoImage)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.layer.cornerRadius = 16
        logoImageView.clipsToBounds = true
        
        let header = UILabel(frame: .zero)
        header.numberOfLines = 3
        header.translatesAutoresizingMaskIntoConstraints = false
        header.text = "APP\nOF THE\nDAY"
        header.textColor = .white
        header.font = UIFont.preferredFont(forTextStyle: .title1).withSize(48)
        
        let title = UILabel(frame: .zero)
        title.numberOfLines = 2
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Jigsaw Puzzle Frenzy"
        title.textColor = .white
        title.font = UIFont.preferredFont(forTextStyle: .title3)
        
        let subtitle = UILabel(frame: .zero)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        subtitle.text = "Play a new puzzle every day"
        subtitle.textColor = .white
        subtitle.font = UIFont.preferredFont(forTextStyle: .body)
        
        let getButton = UIButton(frame: .zero)
        getButton.translatesAutoresizingMaskIntoConstraints = false
        getButton.setTitle("GET", for: .normal)
        getButton.setTitleColor(.blue, for: .normal)
        getButton.backgroundColor = .white
        getButton.contentEdgeInsets = .init(top: 4, left: 16, bottom: 4, right: 16)
        getButton.layer.cornerRadius = 16
        
        let purchaseDisclaimer = UILabel(frame: .zero)
        purchaseDisclaimer.translatesAutoresizingMaskIntoConstraints = false
        purchaseDisclaimer.text = "In-App Purchases"
        purchaseDisclaimer.textColor = .white
        purchaseDisclaimer.font = UIFont.preferredFont(forTextStyle: .caption2)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let overlay = UIVisualEffectView(effect: blurEffect)
        overlay.alpha = 0.6
        
        overlay.translatesAutoresizingMaskIntoConstraints = false
        
        // Define card layout
        
        let titleContainer =  UIView.gridLayoutView(items: [GridItem(title,
                                                                     horizontalAlignment: .left),
                                                            GridItem(subtitle,
                                                                     row: 1,
                                                                     horizontalAlignment: .left)],
                                                    rowDefinitions: [RowDefinition(),
                                                                     RowDefinition(isAuto: true)],
                                                    columnDefinitions:[ColumnDefinition()])
        
        let buttonContainer =  UIView.gridLayoutView(items: [GridItem(getButton,
                                                                      row: 1),
                                                            GridItem(purchaseDisclaimer,
                                                                     row: 2,
                                                                     verticalAlignment: .top)],
                                                    rowDefinitions: [RowDefinition(),
                                                                     RowDefinition(isAuto: true),
                                                                     RowDefinition(),],
                                                    columnDefinitions:[ColumnDefinition()])
        
        let container = UIView.gridLayoutView(items: [GridItem(mainImageView,
                                                               position: .init(rowSpan: 2, columnSpan: 3)),
                                                      GridItem(overlay,
                                                               position: .init(row: 1, columnSpan: 3),
                                                               horizontalAlignment: .stretch,
                                                               verticalAlignment: .stretch),
                                                      GridItem(header,
                                                               position: .init(columnSpan: 3),
                                                               horizontalAlignment: .left,
                                                               verticalAlignment: .bottom,
                                                               margin: .init(top: 0, left: 12, bottom: 12, right: 0)),
                                                      GridItem(logoImageView,
                                                               row: 1,
                                                               horizontalAlignment: .left,
                                                               margin: .init(top: 8, left: 8, bottom: 8, right: 8)),
                                                      GridItem(titleContainer,
                                                               row: 1,
                                                               column: 1),
                                                      GridItem(buttonContainer,
                                                               row: 1,
                                                               column: 2)],
                                              rowDefinitions: [RowDefinition(),
                                                               RowDefinition(isAuto: true)],
                                              columnDefinitions: [ColumnDefinition(isAuto: true),
                                                                  ColumnDefinition(),
                                                                  ColumnDefinition(isAuto: true)])
        
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        buttonContainer.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        container.backgroundColor = .red
        container.layer.cornerRadius = 12
        container.clipsToBounds = true
        
        return container
    }
}
