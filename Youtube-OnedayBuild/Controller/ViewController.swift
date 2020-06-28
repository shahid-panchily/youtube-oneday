//
//  ViewController.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 14/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource, Modeldelegate {
   
    
    

    
    @IBOutlet weak var tableView: UITableView!
    
    
 var model = Model()
    
 var videos = [Video]()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        model.getVideos()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        model.delegate = self
    }
    
    func videoFetched(_ videos: [Video]) {
        
        self.videos = videos
        
        tableView.reloadData()
    }
    
    
    
    
    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return videos.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell
        
        let video = self.videos[indexPath.row]
        
        
        cell.setCall(video)
        
        return cell
        
       }
    


}

