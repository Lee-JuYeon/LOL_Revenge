//
//  InternetChecker.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import Foundation

class InternetChecker {
    func checkInternetConnection(completion: @escaping (Bool, String) -> Void) {
            guard let url = URL(string: "https://www.google.com") else {
                completion(false, "잘못된 URL")
                return
            }
            
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                DispatchQueue.main.async {
                    if let error = error {
                        let reason = "인터넷 연결 안 됨: \(error.localizedDescription)"
                        completion(false, reason)
                    } else if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                        completion(true, "인터넷 연결됨")
                    } else {
                        let reason = "서버 응답 오류"
                        completion(false, reason)
                    }
                }
            }.resume()
        }
}
