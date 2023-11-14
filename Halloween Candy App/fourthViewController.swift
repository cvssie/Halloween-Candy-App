//
//  fourthViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 10/31/23.
//

import UIKit

class fourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var sourCandy = ["Sour Patch Kids", "Trolli Sour Crawlers", "Sour Punch", "Warheads"]
    
    var sourRating = ["4 Stars", "5 Stars", "4 Stars", "3 Stars"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourCandy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = sourCandy[indexPath.row]
        cell.detailTextLabel?.text = sourRating[indexPath.row]
              cell.textLabel?.text = text
              return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
}
    
    @IBOutlet weak var tableView: UITableView!
    var CategoryThreeImages = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        CategoryThreeImages = dict!.object(forKey:"CategoryThreeImages") as! [String]
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! thirdDetailViewController;            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = CategoryThreeImages[imageIndex!]
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
