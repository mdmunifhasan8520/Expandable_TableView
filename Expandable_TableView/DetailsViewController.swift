//
//  DetailsViewController.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/13/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit
import WebKit

class DetailsViewController: UIViewController, WKNavigationDelegate {
    
    var sentData1: String!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    @IBOutlet weak var detailTitle: UILabel!
    
   
    @IBOutlet weak var myWeb: WKWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData1
        detailTitle.text = sentData1

        // Do any additional setup after loading the view.
        
        if detailTitle.text == "Trafic light" {
            
            detailTextView.text = "A road signal for directing vehicular traffic by means of colored lights, typically red for stop, green for go, and yellow for proceed with caution. Also called stoplight, traffic signal."
            
            let htmlPath = Bundle.main.path(forResource: "html/index_2_light", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
        }
        
        if detailTitle.text == "Round About" {
            
            detailTextView.text = "Indicates that a roundabout is ahead. Slow down when you see this sign."
            
            let htmlPath = Bundle.main.path(forResource: "html/index", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
        }
        if detailTitle.text == "Double Bend First Left" {
            
            detailTextView.text = "These signs indicate that ahead are dangerous or unexpected bends in the road, some being continuous, others being sharp-ended.Signs indicate the curves are to the left whether the degree to which the curves or bends are sharp. They may also indicate a series of curves or bends ahead."
            
            let htmlPath = Bundle.main.path(forResource: "html/Double_Bend_First_Left", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        if detailTitle.text == "Dual Carriageway Ends" {
            
            detailTextView.text = "A dual carriageway is a road which has two lanes of traffic travelling in each direction with a strip of grass or concrete down the middle to separate the two lots of traffic."
        }
        if detailTitle.text == "Height Limit Ahead" {
            
            detailTextView.text = "Prohibiting vehicles above a certain height are used mainly at non—arch bridges and other structures.These signs should not be used at arch bridges, as the main risk to these is from vehicles which, although low enough to pass through the central part of the arch, might strike the curved shoulder of the structure."
            
            let htmlPath = Bundle.main.path(forResource: "html/Height_limit", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        if detailTitle.text == "Road Narrow On Both Sides" {
            
            detailTextView.text = "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide."
            
            
        }
        if detailTitle.text == "Road Narrows In The Right" {
            
            detailTextView.text = "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide."
            
            
        }
        if detailTitle.text == "Sharp Bend To The Right" {
            
            detailTextView.text = "These signs indicate that ahead are dangerous or unexpected bends in the road, some being continuous, others being sharp-ended.Signs indicate the curves are to the right whether the degree to which the curves or bends are sharp. They may also indicate a series of curves or bends ahead."
            
            let htmlPath = Bundle.main.path(forResource: "html/Sharp_bend_right", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        
        if detailTitle.text == "Steep Hill Downwards" {
            
            detailTextView.text = "The sign indicates a steep hill downwards.Having or being a slope or gradient approaching the perpendicular."
            
            
        }
        if detailTitle.text == "Steep Hill Upwards" {
            
            detailTextView.text = "The sign indicates a steep hill upwards.A steep slope rises at a very sharp angle and is difficult to go up."
            
            
        }
        
        if detailTitle.text == "Two Way Traffic Straight Ahead" {
            
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
