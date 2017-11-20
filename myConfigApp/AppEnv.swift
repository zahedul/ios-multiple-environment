//
//  AppEnv.swift
//  myConfigApp
//
//  Created by Zahedul Alam on 11/20/17.
//  Copyright © 2017 Zahedul Alam. All rights reserved.
//

import Foundation

struct Configuration {
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "AppEnv") as? String {
            if configuration.range(of: "dev") != nil {
                return Environment.Dev
            }
        }
        
        return Environment.Prod
    }()
}

enum Environment: String {
    case Dev = "dev"
    case Prod = "prod"
    
    var baseURL: String {
        switch self {
        case .Dev: return "http://www.dev-api.com/"
        case .Prod: return "https://www.prod-api.com/"
        }
    }
    
    var key: String {
        switch self {
        case .Dev: return "dev-key"
        case .Prod: return "prod-key"
        }
    }
    
    var GoogleApiKey: String {
        switch self {
        case .Dev: return "google-dev-api-key"
        case .Prod: return "google-prod-api-key"
        }
    }
    
    var demoData: String {
        return self.baseURL + "demo-data/"
    }
    
}
