//
//  TableViewCell.swift
//  Notes
//
//  Created by Seif Yasser on 9/13/18.
//  Copyright © 2018 Seif Yasser. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var laTitle: UILabel!
    @IBOutlet weak var tvDetailsView: UITextView!
    @IBOutlet weak var tfDateandTime: UITextField!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(note : MyNotes) {
        laTitle.text = note.title
        tvDetailsView.text = note.datails
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        tfDateandTime.text = dateFormatter.string(from: note.dateAndtime! as Date)
    }

}
