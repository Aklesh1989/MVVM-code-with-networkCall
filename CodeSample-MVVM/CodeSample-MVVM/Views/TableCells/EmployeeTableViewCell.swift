//
//  File.swift
//  CodeSample-MVVM
//
//  Created by Aklesh on 31/05/22.
//

import Foundation
import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    var employee : EmployeeData? {
        didSet {
            employeeIdLabel.text = "\(employee?.id)"
            employeeNameLabel.text = employee?.employeeName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
