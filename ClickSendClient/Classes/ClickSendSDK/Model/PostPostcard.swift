//
// PostPostcard.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PostPostcard model */

public struct PostPostcard: Codable {

    /** Postcard file URLs */
    public var fileUrls: [String]
    /** Array of recipients */
    public var recipients: [PostRecipient]

    public init(fileUrls: [String], recipients: [PostRecipient]) {
        self.fileUrls = fileUrls
        self.recipients = recipients
    }

    public enum CodingKeys: String, CodingKey { 
        case fileUrls = "file_urls"
        case recipients
    }


}

