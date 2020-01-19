//
//  RidePost.swift
//  Hack_Carpool
//
//  Created by James Lemkin on 1/19/20.
//  Copyright © 2020 James Lemkin. All rights reserved.
//

import UIKit

class RidePost: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var timePostedText: UILabel!
    
    @IBOutlet weak var openSeatsText: UILabel!
    
    @IBOutlet weak var bodyText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
