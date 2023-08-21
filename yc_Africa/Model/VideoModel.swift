//
//  VideoModel.swift
//  yc_Africa
//
//  Created by yc on 2023/08/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}
