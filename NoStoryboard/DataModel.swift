//
//  DataModel.swift
//  NoStoryboard
//
//  Created by mac on 09.06.2022.
//

import Foundation

struct Object: Codable {
    let info: Info
    let results: [Results]
}

struct Results: Codable {
    var id: Int
    var name: String
    var status: String
    var gender: String
    var image: String
}

struct Info: Codable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}
