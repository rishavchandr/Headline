//
//  Network.swift
//  Headline
//
//  Created by Rishav chandra on 02/08/24.
//

import Foundation

class Network : ObservableObject {
    
     @Published var posts = [post]()
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task =   session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let result =  try decoder.decode(Data.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
