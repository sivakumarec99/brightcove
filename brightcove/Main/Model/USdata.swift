//
//  USdata.swift
//  brightcove
//
//  Created by Sivakumar R on 20/07/23.
//

import Foundation


import Foundation
struct Json4Swift_Base : Codable {
    let id : Int?
    let url : String?
    let name : String?
    let season : Int?
    let number : Int?
    let type : String?
    let airdate : String?
    let airtime : String?
    let airstamp : String?
    let runtime : Int?
    let rating : Rating?
    let image : String?
    let summary : String?
    let show : Show?
    let _links : _Links?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case url = "url"
        case name = "name"
        case season = "season"
        case number = "number"
        case type = "type"
        case airdate = "airdate"
        case airtime = "airtime"
        case airstamp = "airstamp"
        case runtime = "runtime"
        case rating = "rating"
        case image = "image"
        case summary = "summary"
        case show = "show"
        case _links = "_links"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        season = try values.decodeIfPresent(Int.self, forKey: .season)
        number = try values.decodeIfPresent(Int.self, forKey: .number)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        airdate = try values.decodeIfPresent(String.self, forKey: .airdate)
        airtime = try values.decodeIfPresent(String.self, forKey: .airtime)
        airstamp = try values.decodeIfPresent(String.self, forKey: .airstamp)
        runtime = try values.decodeIfPresent(Int.self, forKey: .runtime)
        rating = try values.decodeIfPresent(Rating.self, forKey: .rating)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        summary = try values.decodeIfPresent(String.self, forKey: .summary)
        show = try values.decodeIfPresent(Show.self, forKey: .show)
        _links = try values.decodeIfPresent(_Links.self, forKey: ._links)
    }

}

struct Rating : Codable {
    let average : String?

    enum CodingKeys: String, CodingKey {

        case average = "average"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        average = try values.decodeIfPresent(String.self, forKey: .average)
    }

}

struct Show : Codable {
    let href : String?

    enum CodingKeys: String, CodingKey {

        case href = "href"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        href = try values.decodeIfPresent(String.self, forKey: .href)
    }

}

struct _Links : Codable {
    let detailLink : DetailLink?
    let show : Show?

    enum CodingKeys: String, CodingKey {

        case detailLink = "self"
        case show = "show"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        detailLink = try values.decodeIfPresent(DetailLink.self, forKey: .detailLink)
        show = try values.decodeIfPresent(Show.self, forKey: .show)
    }

}

struct DetailLink : Codable {
    let href : String?

    enum CodingKeys: String, CodingKey {

        case href = "href"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        href = try values.decodeIfPresent(String.self, forKey: .href)
    }

}

