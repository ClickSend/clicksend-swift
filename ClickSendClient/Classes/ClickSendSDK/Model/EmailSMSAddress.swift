//
// EmailSMSAddress.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Email-to-SMS Allowed Address */

public struct EmailSMSAddress: Codable {

    /** Your email address */
    public var emailAddress: String
    /** Your sender id */
    public var from: String
    /** Your subaccount id */
    public var subaccountId: String?

    public init(emailAddress: String, from: String, subaccountId: String?) {
        self.emailAddress = emailAddress
        self.from = from
        self.subaccountId = subaccountId
    }

    public enum CodingKeys: String, CodingKey { 
        case emailAddress = "email_address"
        case from
        case subaccountId = "subaccount_id"
    }


}
