//
//  NetworkService.swift
//  filtro-tempo-real
//
//  Created by Robson Novato Lobao on 26/07/22.
//

import Foundation
import Alamofire

struct MoviesResult: Codable {
    var Search: [Movies]
    
}

struct Movies: Codable {
    let Title: String
    let Year: String
    let imdbID: String
    let `Type`: String
    let Poster: String
}

class NetworkService {
    static private var alamoFireManager: Session? = {
        let configuration = URLSessionConfiguration.default
        configuration.requestCachePolicy = .reloadIgnoringCacheData
        let alamoFireManager = Alamofire.Session(configuration: configuration)
        return alamoFireManager
    }()
    
    static func request<T: Codable>(url: String,method: HTTPMethod , params: [String:Any]? = nil, obj: T.Type, sucess: @escaping (T)-> Void, error: @escaping (Error)-> Void) {
        alamoFireManager?.request(url, method: method, parameters: params, encoding: JSONEncoding.prettyPrinted).responseJSON { response in
            switch response.result {
            case .success:
                do {
                    let resultObj = try JSONDecoder().decode(obj.self, from: response.data ?? Data())
                    sucess(resultObj)
                } catch let decodeErr {
                    error(decodeErr)
                }
                return
            case .failure:
                error(response.error!)
                return
            }
        }
    }
    
    func getMovies(sucess: @escaping (MoviesResult)-> Void,error: @escaping (Error)-> Void) {
        NetworkService.request(url: "https://www.omdbapi.com/?apikey=3aea79ac&s=fast%20and&type=movie", method: .get, obj: MoviesResult.self) { result in
            sucess(result)
        } error: { e in
            error(e)
        }
    }
}
