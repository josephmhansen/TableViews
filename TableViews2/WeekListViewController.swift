//
//  WeekListViewController.swift
//  TableViews2
//
//  Created by Joseph Hansen on 7/6/16.
//  Copyright © 2016 Joseph Hansen. All rights reserved.
//

import UIKit

class WeekListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    let weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//MARK: - TableViewDataSource Methods
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)
     
        
        let day = weekdays[indexPath.row]
        cell.textLabel?.text = day
        
        return cell
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weekdays.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return (self.view.layer.frame.height - 64) / 7
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //how are we getting there? DONE
        // Where are we going? DONE
        //what am i taking? where is it currently? DONE
        //did i bring it? did i arrive?
        if segue.identifier == "toDetailSegue" {
            let detailVC = segue.destinationViewController as? DayDetailViewController
            if let indexPath = myTableView.indexPathForSelectedRow {
                let day = weekdays[indexPath.row]
                detailVC?.day = day
            }
        }
    }
    
}
