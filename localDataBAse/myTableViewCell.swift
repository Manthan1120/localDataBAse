//
//  myTableViewCell.swift
//  localDataBAse
//
//  Created by R86 on 03/04/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lableForId : UILabel!
    @IBOutlet weak var lableForName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
