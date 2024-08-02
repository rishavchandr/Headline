//
//  Data.swift
//  Headline
//
//  Created by Rishav chandra on 02/08/24.
//

import Foundation

struct Data: Decodable {
    let hits: [post]
}

struct post: Decodable , Identifiable{
    var id : String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
