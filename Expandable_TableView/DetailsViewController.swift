//
//  DetailsViewController.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/13/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var sentData1: String!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    @IBOutlet weak var detailTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData1
        detailTitle.text = sentData1

        // Do any additional setup after loading the view.
        
        if detailTitle.text == "Shirts" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road."
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
