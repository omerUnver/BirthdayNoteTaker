//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by M.Ömer Ünver on 4.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let kaydedilenIsımler = UserDefaults.standard.object(forKey: "name")
        let kaydedilenTarihler = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? vs. as!
        
        if let newName = kaydedilenIsımler as? String{
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirthday = kaydedilenTarihler as? String{
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
        
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        //kullanıcının cihazına verileri kaydetmek için userDefaults kullanıyoruz
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameText.text!)"
        birthdayLabel.text = "Birthday: \(birthdayText.text!)"
        
        
    }
    
    @IBAction func deleteClick(_ sender: Any) {
        let kaydedilenIsımler = UserDefaults.standard.object(forKey: "name")
        let kaydedilenTarihler = UserDefaults.standard.object(forKey: "birthday")
        
        if (kaydedilenIsımler as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if (kaydedilenTarihler as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
        
    }
    
    
    
    
    
    
}

