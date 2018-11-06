//
// ResellerAccountTransferCredit.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ResellerAccountTransferCredit model */

public struct ResellerAccountTransferCredit: Codable {

    /** User ID of client */
    public var clientUserId: Int
    /** Balance to transfer */
    public var balance: Int
    /** Currency of balance to transfer */
    public var currency: String

    public init(clientUserId: Int, balance: Int, currency: String) {
        self.clientUserId = clientUserId
        self.balance = balance
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey { 
        case clientUserId = "client_user_id"
        case balance
        case currency
    }


}
