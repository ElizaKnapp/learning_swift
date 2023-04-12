//
//  NetworkManager.swift
//  lotus
//
//  Created by Eliza Knapp on 4/11/23.
//

import Foundation
import UIKit

func apiCall() {
    guard let url = URL(string: "http://127.0.0.1:5000/user") else {
        return
    }
    
    print("Making api call...")
    
    var request = URLRequest(url: url)
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let body: [String: AnyHashable] = [
        "username": "eliza",
        "password": "dsfjasl",
        "email": "eliza@gmail.com",
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    // make request
    let task = URLSession.shared.dataTask(with: request) {data, _, error in
        guard let data = data, error == nil else {
            return
        }
        
        do  {
            let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print("SUCCESS: \(response)")
        }
        catch {
            print(error)
        }
    }
    task.resume()
}
