//
//  ViewControllerCell.swift
//  MenuVC
//
//  Created by Shailendra Kumar Ram on 18/11/19.
//  Copyright © 2019 nitin chawla. All rights reserved.
//

import UIKit

class ViewControllerCell: UITableViewCell {
    
      @IBOutlet weak var lbl:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
