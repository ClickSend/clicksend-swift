//
// List.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Your list. */

public struct List: Codable {

    /** Your list name. */
    public var listName: String

    public init(listName: String) {
        self.listName = listName
    }

    public enum CodingKeys: String, CodingKey { 
        case listName = "list_name"
    }


}

