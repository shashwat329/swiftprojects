//this is created to retrive and decode data from the api and to create a instance of our forecast struct

import Foundation
class APIService{
    public static let shared = APIService()
    
    public enum APIError: Error{
        case error(_ errorString: String)
    }
    
    public func getJSON<T: Decodable>(urlString: String,
                                      dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
                                      keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                                      compeletion: @escaping (Result<T,APIError>) ->Void){
        
        guard let url = URL(string: urlString) else{
            compeletion(.failure(.error(NSLocalizedString("Error: invaild URL", comment: ""))))
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request ){(data,response,error) in
            if let error = error{
                compeletion(.failure(.error("Error:\(error.localizedDescription)")))
                return
            }
            guard let data = data else{
                compeletion(.failure(.error(NSLocalizedString("Error : data us corrupt.", comment: ""))))
                return
            }
            let decoder = JSONDecoder()
            do{
                let decodedData = try decoder.decode(T.self, from: data)
                compeletion(.success(decodedData))
                return
            } catch let decodingError{
                compeletion(.failure(APIError.error("Error: \(decodingError.localizedDescription)")))
                return
            }
            
        }.resume()
    }
}
