//
//  ThoughtCell.swift
//  App_IOS
//
//  Created by iOSLab on 30/11/24.
//

import UIKit

class ThoughtCell: UITableViewCell {
    @IBOutlet weak var thoughtTextView: UITextView!
    
    func setup (text: String) {
        thoughtTextView.text = text
    }
}
