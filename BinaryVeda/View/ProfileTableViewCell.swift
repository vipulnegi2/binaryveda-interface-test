//
//  ProfileTableViewCell.swift
//  BinaryVeda
//
//  Created by Vipul Negi on 27/10/21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var switchButton: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
