//
//  Model.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 16/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation
 

class Model {
    
    
    func getVideos() {
        
        let url = URL(string: Constants.API_URL)
        
        guard  url != nil else{
            return
        }
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if data != nil || error != nil {
                
              return
                
                
            }
            
//            parsing a data
        }
        dataTask.resume()
        
    }
    
    
    
    
    
    
    
}
