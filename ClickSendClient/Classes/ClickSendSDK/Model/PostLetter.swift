//
// PostLetter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PostLetter model */

public struct PostLetter: Codable {

    /** URL of file to send */
    public var fileUrl: String
    /** Whether letter is priority */
    public var priorityPost: Int?
    /** Array of PostRecipient models */
    public var recipients: [PostRecipient]
    /** Whether using our template */
    public var templateUsed: Int?
    /** Whether letter is duplex */
    public var duplex: Int?
    /** Whether letter is in colour */
    public var colour: Int?
    /** Source being sent from */
    public var source: String?

    public init(fileUrl: String, priorityPost: Int?, recipients: [PostRecipient], templateUsed: Int?, duplex: Int?, colour: Int?, source: String?) {
        self.fileUrl = fileUrl
        self.priorityPost = priorityPost
        self.recipients = recipients
        self.templateUsed = templateUsed
        self.duplex = duplex
        self.colour = colour
        self.source = source
    }

    public enum CodingKeys: String, CodingKey { 
        case fileUrl = "file_url"
        case priorityPost = "priority_post"
        case recipients
        case templateUsed = "template_used"
        case duplex
        case colour
        case source
    }


}

