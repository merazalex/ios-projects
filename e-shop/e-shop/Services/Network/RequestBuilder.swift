//
//  RequestBuilder.swift
//  e-shop
//
//  Created by Alex Meraz on 6/25/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//
//https://medium.com/@danielemargutti/network-layers-in-swift-7fc5628ff789

import Foundation

// Define the type of data we expect as response
enum DataType {
    case JSON
    case Data
}

enum HTTPMethod: String {
    case post   = "POST"
    case put    = "PUT"
    case get    = "GET"
    case delete = "DELETE"
    case patch  = "PATCH"
}

enum RequestParameters {
    case body(_ : [String: Any]?)
    case url(_ : [String: Any]?)
}

protocol Request {
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: RequestParameters { get }
    var headers: [String: Any]? { get }
    var dataType: DataType { get }
}

//Example of UserRequest
enum UserRequests: Request {
    
    case login(username: String, password: String)
    case avatar(username: String)
    
    var path: String {
        switch self {
        case .login(_,_):
            return "/users/login"
        case .avatar(_):
            return "/usets/avatar"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .login(_,_):
            return .post
        case .avatar(_):
            return .get
        }
    }
    
    var parameters: RequestParameters {
        switch self {
        case .login(let username, let password):
            return .body(["user" : username, "pass" : password])
        case .avatar(let username):
            return .url(["username" : username])
        }
    }
    
    var headers: [String : Any]? {
        switch self {
        default:
            return nil
        }
    }
    
    var dataType: DataType {
        switch self {
        case .login(_,_):
            return .JSON
        case .avatar(_):
            return .Data
        }
    }
}
