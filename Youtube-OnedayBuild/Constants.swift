//
//  Constants.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 15/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation


struct Constants {
    static var API_KEY = "AIzaSyBn1ZCj75tX8usumfAqchKQuXsWrSYtqC0"
    static var PLAYIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYIST_ID)&key=\(Constants.API_KEY)"
}
