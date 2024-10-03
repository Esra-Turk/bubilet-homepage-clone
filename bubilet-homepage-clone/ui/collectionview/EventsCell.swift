//
//  EventsCell.swift
//  bubilet-homepage-clone
//
//  Created by Esra Türk on 2.10.2024.
//

import UIKit

class EventsCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewEvent: UIImageView!
    @IBOutlet weak var labelPerformer: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet weak var sittingArea: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        priceButton.layer.cornerRadius = 15
        priceButton.layer.masksToBounds = true
        priceButton.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 14)
        priceButton.contentHorizontalAlignment = .left
        priceButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
        if let buttonTitleColor = UIColor(named: "background-green") {
            priceButton.setTitleColor(buttonTitleColor, for: .normal)
        }
        
        labelPerformer.font = UIFont(name: "Montserrat-Regular", size: 13)
        placeLabel.font = UIFont(name: "Montserrat-Regular", size: 10)
        dateLabel.font = UIFont(name: "Montserrat-Regular", size: 10)
    }
    

    @IBAction func cartButton(_ sender: Any) {
    }
    
}
