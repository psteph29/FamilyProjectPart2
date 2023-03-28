//
//  SelectFamilyMemberTableViewController.swift
//  FamilyProjectPart2
//
//  Created by Paige Stephenson on 3/27/23.
//

import UIKit

class SelectFamilyMemberTableViewController: UITableViewController {
    
    
    var familyMember: [FamilyMember] = [
        FamilyMember(name: "Ryan", age: 52, photo: "Dad", description: "Ryan is an avid hiker who lives to bag peaks."),
        FamilyMember(name: "Peggy", age: 49, photo: "Mom", description: "Peggy has a good sense of humor and is  a great listener."),
        FamilyMember(name: "Paige", age: 23, photo: "Paige", description: "Paige is freaking out."),
        FamilyMember(name: "Wesley", age: 21, photo: "Wesley", description: "Wesley likes to say he is a goon."),
        FamilyMember(name: "Ellie", age: 18, photo: "Ellie", description: "Ellie is an experience and once you meet her, you will always want to be around her."),
        FamilyMember(name: "Cat", age: 16, photo: "Cat", description: "She is training to play in the world cup with her soccer ball filled with treats." )
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return familyMember.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FamilyMemberCell", for: indexPath)
        let person = familyMember[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name)"
        content.secondaryText = "\(person.age)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard tableView.indexPathForSelectedRow != nil else { return }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        let person = familyMember[indexPath.row]
        guard segue.identifier == "pickedFamilyMember", let detailVC = segue.destination as? PersonalDetailsViewController else { return }
        
        detailVC.selectedFamilyMember = person
        
                
    }

    
}
