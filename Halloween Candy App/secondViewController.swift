//
//  secondViewController.swift
//  Halloween Candy App
//
//  Created by Cassie Kauhane on 10/31/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    var chocolates = ["Peanut M&M's", "Hersheys Almond", "Crunch", "Reeses"]
   
    var chocolateRating = ["5 Stars", "4 Stars", "5 Stars", "4 Stars"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
              
        let text = chocolates[indexPath.row]
        cell.detailTextLabel?.text = chocolateRating[indexPath.row]
              cell.textLabel?.text = text
              return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return chocolates.count
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! secondTableDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                   
                }
            }
}

