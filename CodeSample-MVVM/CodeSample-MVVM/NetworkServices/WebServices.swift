//
//  WebServices.swift
//  CodeSample-MVVM
//
//  Created by Aklesh on 31/05/22.
//

import Foundation

class WebServices :  NSObject {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(Employees.self, from: data)
            
                    completion(empData)
            }
            
        }.resume()
    }
    
}
