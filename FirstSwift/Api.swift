//
//  Api.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/27.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import Alamofire

class Api {
    static let shared = Api()//使得之后调用API类都只需要实例化一次
    
    let  host = "http://anime.yangdev.com"
    
    init() {
        
    }
    
    func listAll(_ closure: @escaping ([[String: Any]]) -> Void) {
        Alamofire.request("\(host)/anime/listAll", method: .post).responseJSON { (response) in
            guard let jsonDictionary = response.result.value as? [String: Any],
                let data = jsonDictionary["data"] as? [[String: Any]] else {
                    return
            }
            closure(data)
            print("Async reached here!!!!!!!!")
        }
        print("Sync reached here!!!!!!!!")
    }
    
    let destination: DownloadRequest.DownloadFileDestination = { _, _ in
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = documentsURL.appendingPathComponent("myLogo.png")
        //两个参数表示如果有同名文件则会覆盖，如果路径中文件夹不存在则会自动创建
        return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
    }
    
    func downloadPicture(picUrl: String ) -> Void {
        Alamofire.download(picUrl, to: destination).response{ response in
            print(response)
            
//            if let imagePath = response.destinationURL?.path{
//                let image = UIImage(contentsOfFile: imagePath)
//            }
        }
    }
    
//    func listAll(_ closure: ([[String: Any]])) -> Void {
//        Alamofire.request("\(host)/anime/listAll", method: .post).responseJSON { (response) in
//            guard let jsonDictionary = response.result.value as? [String: Any],
//                let data = jsonDictionary["data"] as? [[String: Any]] else {
//                    return
//            }
//           closure(data)
//        }
//    }
    
}
