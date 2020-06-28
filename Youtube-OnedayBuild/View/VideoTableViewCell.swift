//
//  VideoTableViewCell.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 27/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var titileLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var video: Video?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func setCall(_ v:Video) {
        
        self.video = v
        
        self.titileLabel.text = video?.title
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMMM d, yyyy"
        self.dateLabel.text = df.string(from: video!.published)
        
        guard ((self.video?.thumbnail) != "") else {
            return
        }
        
        if let cachedData = CachedManager.getVideoCache(self.video!.thumbnail){
             
            self.thumbnailImageView.image = UIImage(data: cachedData)
            return
        }
        
        let url = URL(string: self.video!.thumbnail)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            
            if error == nil && data != nil {
                
                CachedManager.setvideoCache(self.video!.thumbnail, data)
                
                
                if url!.absoluteString != self.video!.thumbnail {
                    
                    
                    return
                }
                
                let image = UIImage(data: data!)
                
                DispatchQueue.main.async {
                    self.thumbnailImageView.image = image
                }
                
            }
        }
        dataTask.resume()
        
    }

}
