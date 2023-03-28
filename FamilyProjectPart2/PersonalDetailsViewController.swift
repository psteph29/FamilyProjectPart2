//
//  PersonalDetailsViewController.swift
//  FamilyProjectPart2
//
//  Created by Paige Stephenson on 3/27/23.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var personalImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedFamilyMember: FamilyMember?

  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Do any additional setup after loading the view.
        
        guard let selectedFamilyMember else { return }
        
        nameLabel.text = selectedFamilyMember.name
        personalImage.image = UIImage(named: selectedFamilyMember.photo)
        descriptionLabel.text = selectedFamilyMember.description
        
    }
}
