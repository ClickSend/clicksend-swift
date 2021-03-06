//
// FieldsFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** From Email object. */

public struct FieldsFields: Codable {

    /** Your phone number in E.164 format. Must be provided if no fax number or email. */
    public var phoneNumber: String?
    /**  */
    public var custom1: String?
    /** Your email. Must be provided if no phone number or fax number. */
    public var email: String?
    /** Your fax number. Must be provided if no phone number or email. */
    public var faxNumber: String?
    /** Your first name. */
    public var firstName: String?
    /** Your street address */
    public var addressLine1: String?
    /**  */
    public var addressLine2: String?
    /** Your nearest city */
    public var addressCity: String?
    /** Your current state */
    public var addressState: String?
    /** Your current postcode */
    public var addressPostalCode: String?
    /** Your current country */
    public var addressCountry: String?
    /** Your organisation name */
    public var organizationName: String?
    /**  */
    public var custom2: String?
    /**  */
    public var custom3: String?
    /**  */
    public var custom4: String?
    /** Your last name */
    public var lastName: String?

    public init(phoneNumber: String?, custom1: String?, email: String?, faxNumber: String?, firstName: String?, addressLine1: String?, addressLine2: String?, addressCity: String?, addressState: String?, addressPostalCode: String?, addressCountry: String?, organizationName: String?, custom2: String?, custom3: String?, custom4: String?, lastName: String?) {
        self.phoneNumber = phoneNumber
        self.custom1 = custom1
        self.email = email
        self.faxNumber = faxNumber
        self.firstName = firstName
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.addressCity = addressCity
        self.addressState = addressState
        self.addressPostalCode = addressPostalCode
        self.addressCountry = addressCountry
        self.organizationName = organizationName
        self.custom2 = custom2
        self.custom3 = custom3
        self.custom4 = custom4
        self.lastName = lastName
    }

    public enum CodingKeys: String, CodingKey { 
        case phoneNumber = "phone_number"
        case custom1 = "custom_1"
        case email
        case faxNumber = "fax_number"
        case firstName = "first_name"
        case addressLine1 = "address_line_1"
        case addressLine2 = "address_line_2"
        case addressCity = "address_city"
        case addressState = "address_state"
        case addressPostalCode = "address_postal_code"
        case addressCountry = "address_country"
        case organizationName = "organization_name"
        case custom2 = "custom_2"
        case custom3 = "custom_3"
        case custom4 = "custom_4"
        case lastName = "last_name"
    }


}

