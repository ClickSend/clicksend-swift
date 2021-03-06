//
// PostRecipient.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PostRecipient model */

public struct PostRecipient: Codable {

    /** Name of address */
    public var addressName: String
    /** First line of address */
    public var addressLine1: String
    /** Second line of address */
    public var addressLine2: String?
    /** City */
    public var addressCity: String
    /** State */
    public var addressState: String
    /** Postal code */
    public var addressPostalCode: String
    /** Country */
    public var addressCountry: String
    /** ID of return address to use */
    public var returnAddressId: Int
    /** When to send letter (0/null&#x3D;now) */
    public var schedule: Int?

    public init(addressName: String, addressLine1: String, addressLine2: String?, addressCity: String, addressState: String, addressPostalCode: String, addressCountry: String, returnAddressId: Int, schedule: Int?) {
        self.addressName = addressName
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.addressCity = addressCity
        self.addressState = addressState
        self.addressPostalCode = addressPostalCode
        self.addressCountry = addressCountry
        self.returnAddressId = returnAddressId
        self.schedule = schedule
    }

    public enum CodingKeys: String, CodingKey { 
        case addressName = "address_name"
        case addressLine1 = "address_line_1"
        case addressLine2 = "address_line_2"
        case addressCity = "address_city"
        case addressState = "address_state"
        case addressPostalCode = "address_postal_code"
        case addressCountry = "address_country"
        case returnAddressId = "return_address_id"
        case schedule
    }


}

