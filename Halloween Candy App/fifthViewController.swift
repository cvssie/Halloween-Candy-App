//
//  fifthViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 10/31/23.
//

import UIKit

class fifthViewController: UIViewController {
    var imagePass: String?
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Cassandra Kauhane"
        textView.text = "Hi my names Cassandra but I go by Cassie. I am 20 and majoring in Creative Media at UHWO. I love chocolate candies more than other ones but I like anything thats crunchy."
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "Cass")
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
