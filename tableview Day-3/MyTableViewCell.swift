//
//  MyTableViewCell.swift
//  tableview Day-3
//
//  Created by R94 on 27/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var l1: UILabel!
    
    @IBOutlet weak var l2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
