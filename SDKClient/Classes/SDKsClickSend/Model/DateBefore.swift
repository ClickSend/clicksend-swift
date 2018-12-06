//
// DateBefore.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** All dates before specified timestam. */

public struct DateBefore: Codable {

    /** An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. */
    public var dateBefore: Double?

    public init(dateBefore: Double?) {
        self.dateBefore = dateBefore
    }

    public enum CodingKeys: String, CodingKey { 
        case dateBefore = "date_before"
    }


}

