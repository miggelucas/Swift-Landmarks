//
//  ModelData.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 07/11/22.
//

import Foundation


//var landmarks : [Landmark] = loadJson(filename: "landmarkData.json") ?? []
//struct ResponseData: Decodable {
//    var landmarks: [Landmark]
//}
//
//func loadJson(filename fileName: String) -> [Landmark]? {
//    if let url = Bundle.main.url(forResource: fileName, withExtension: nil) {
//        do {
//            let data = try Data(contentsOf: url)
//            let decoder = JSONDecoder()
//            let jsonData = try decoder.decode(ResponseData.self, from: data)
//            return jsonData.landmarks
//        } catch {
//            print("error:\(error)")
//        }
//    }
//    return nil
//}


var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
