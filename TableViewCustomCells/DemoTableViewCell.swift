//
//  DemoTableViewCell.swift
//  TableViewCustomCells
//
//  Created by Sitaram Gupta on 8/16/21.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myLable : UILabel!
    @IBOutlet var myImageView : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
