//
//  secondTableViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 11/7/23.
//

import UIKit

class secondTableViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textBox: UITextView!
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "Jolly Ranchers"
        textBox.text = "I like Jolly Ranchers because the flavors are all good and its very nostalgic to me"
        // Do any additional setup after loading the view.
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)}
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
