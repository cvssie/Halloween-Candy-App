//
//  thirdViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 10/31/23.
//

import UIKit

class thirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var hardCandy = ["Jolly Rancher", "Lifesavers", "Lollipop", "Sweet Tarts"]
    
    var hardCandyRating = ["5 Stars", "4 Stars", "4 Stars", "3 Stars"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hardCandy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = hardCandy[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    var CategoryTwoImages = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        CategoryTwoImages = dict!.object(forKey:"CategoryTwoImages") as! [String]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! secondTableDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = CategoryTwoImages[imageIndex!]
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
}
