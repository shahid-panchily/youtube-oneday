//
//  CachedFile.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 28/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation

class CachedManager {
    
    static var cache = [String:Data]()
    
    static func setvideoCache(_ url : String, _ data:Data?) {
        
        
       cache[url] = data
        
        
    }
    
    static func getVideoCache(_ url: String) ->  Data? {
        
        
        return cache[url]
        
    }
    
}
