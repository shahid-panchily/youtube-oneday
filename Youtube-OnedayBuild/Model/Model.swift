//
//  Model.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 16/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation

protocol Modeldelegate {
    func videoFetched(_ videos:[Video])
}
 

class Model {
    
    
    
    var delegate : Modeldelegate?
    
    func getVideos() {
        
        let url = URL(string: Constants.API_URL)
        
        guard  url != nil else{
            return
        }
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil {
              return
            }
            
//            parsing a data
            
            do {
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                     
               
                
                if response.items != nil {
                    
                    
                    DispatchQueue.main.async {
                        
                         self.delegate?.videoFetched( response.items!)
                    }
                   
                    
                }
                
            }
            catch
            
            {
                
                
            }
            
            
            
        }
        dataTask.resume()
        
    }
    
    
    
    
    
    
    
}
