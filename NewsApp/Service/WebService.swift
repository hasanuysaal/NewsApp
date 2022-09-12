//
//  WebService.swift
//  NewsApp
//
//  Created by Hasan Uysal on 12.09.2022.
//

import Foundation

class WebService {
    
    func downloadNews(url : URL, completion: @escaping ([News]?) -> () ){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                let newsArr = try? JSONDecoder().decode([News].self, from: data)
                
                if let newsArr = newsArr {
                    completion(newsArr)
                }
                
            }
        }.resume()
        
    }
    
    
}
