//
//  NetworkingManager.swift
//  SwiftBitCoinMvvm
//
//  Created by 3bood on 15/11/1444 AH.
//

import Foundation
import Combine
class NetworkingManager {
    enum NetworkingError: LocalizedError {
        case badURLResponse(url:URL)
        case unknowon
        
        var errorDescription: String? {
            switch self{
            case .badURLResponse(url:let url): return "Bad Response \(url)"
            case .unknowon: return "Unknown error"
                
            }
        }
    }
    static func dawnload(url: URL) ->  AnyPublisher<Data,Error>{
    return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({try handleURLResponse(output: $0,url: url) })
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output,url:URL)throws -> Data{
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    static func handleCompletion(complition: Subscribers.Completion<Error>) {
        switch complition {
        case .finished:
            break
            
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
