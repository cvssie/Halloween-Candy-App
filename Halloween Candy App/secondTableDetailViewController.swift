//
//  secondTableDetailViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 11/2/23.
//

import UIKit

class secondTableDetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Peanut M&M's"
        // Do any additional setup after loading the view.
        crunchCandy.text = "I like the Peanut M&Ms more than regular M&M's because of the peanuts. I enjoy the crunch and sometimes it gets addicting"
    }
    
    @IBOutlet weak var crunchCandy: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
