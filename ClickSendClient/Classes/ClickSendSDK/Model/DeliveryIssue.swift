//
// DeliveryIssue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Issues with message delivery */

public struct DeliveryIssue: Codable {

    /** The message id of the message. */
    public var messageId: String?
    /** The type of message, must be one of the following values SMS, MMS, VOICE, EMAIL_MARKETING, EMAIL_TRANSACTIONAL, FAX, POST. */
    public var type: String
    /** The description of the message. */
    public var _description: String
    /** The user&#39;s comments. */
    public var clientComments: String?
    /** The user&#39;s email address. */
    public var emailAddress: String

    public init(messageId: String?, type: String, _description: String, clientComments: String?, emailAddress: String) {
        self.messageId = messageId
        self.type = type
        self._description = _description
        self.clientComments = clientComments
        self.emailAddress = emailAddress
    }

    public enum CodingKeys: String, CodingKey { 
        case messageId = "message_id"
        case type
        case _description = "description"
        case clientComments = "client_comments"
        case emailAddress = "email_address"
    }


}

