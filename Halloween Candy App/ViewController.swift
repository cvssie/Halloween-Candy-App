//
//  ViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 10/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var candyImage: UIImageView!
    
    @IBOutlet weak var homeLabel: UILabel!
    
    
    
    @IBAction func learnMore(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    homeLabel.text = "Featured Candy: Crunch"
    imageView.image = UIImage(named: "background")
    candyImage.image = UIImage(named: "crunch")
}
        
    
   
    
    

}

