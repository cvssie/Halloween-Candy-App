//
//  thirdDetailViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 11/9/23.
//

import UIKit

class thirdDetailViewController: UIViewController {


    
    @IBOutlet weak var imageView: UIImageView!
   

    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)}
        // Do any additional setup after loading the view.
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
