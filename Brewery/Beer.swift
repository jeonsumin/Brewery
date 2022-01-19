//
//  Beer.swift
//  Brewery
//
//  Created by Terry on 2022/01/19.
//

import Foundation

struct Beer: Decodable {
    let id : Int?
    let name, brewersTips,taglineString,description,brewers_tips, imageURL: String?
    let foodParing: [String]?
    
    // API 데이터 내용이 태그 형태로 보이지 않아서 별도 처리
    var tegLine: String {
        let tags = taglineString?.components(separatedBy: ". ")
        let hashTags = tags?.map {
            "#" + $0.replacingOccurrences(of: " ", with: "")
                .replacingOccurrences(of: ".", with: "")
                .replacingOccurrences(of: ",", with: " #")
        }
        return hashTags?.joined(separator: " ") ?? "" 
    }
    
    enum CodinKeys: String, CodingKey {
        case id, name, description
        case taglineString = "tagline"
        case imageURL = "image_url"
        case brewersTips = "brewers_tips"
        case foodParing = "food_paring"
    }
}
