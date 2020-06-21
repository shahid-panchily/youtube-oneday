//
//  Response.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 21/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation

struct Response : Decodable {
    
    var items : [Video]?
    
    enum Codingkeys : String, CodingKey {
        
        case items
        
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Codingkeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
    
    
}
