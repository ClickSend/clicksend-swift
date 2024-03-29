//
// GlobalSendingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class GlobalSendingAPI {
    /**
     List of countries
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listCountriesGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        listCountriesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List of countries
     - GET /country-list
     - List of countries with IDs that can be used in selecting countries for Global sending.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<String> 
     */
    open class func listCountriesGetWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/country-list"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Agree to rules and regulation
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userCountriesAgreePost(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        userCountriesAgreePostWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Agree to rules and regulation
     - POST /user-countries/agree
     - To agree on rules and regulations of selected countries and confirm selection.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<String> 
     */
    open class func userCountriesAgreePostWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/user-countries/agree"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get Countries for Global Sending
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userCountriesGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        userCountriesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Countries for Global Sending
     - GET /user-countries
     - Get the list of selected countries.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<String> 
     */
    open class func userCountriesGetWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/user-countries"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Select Countries for Global Sending
     
     - parameter countryListIds: (body) Id of countr(ies) you want to select, you can get them from GET /country-list response 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userCountriesPost(countryListIds: CountryListIds, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        userCountriesPostWithRequestBuilder(countryListIds: countryListIds).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Select Countries for Global Sending
     - POST /user-countries
     - Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter countryListIds: (body) Id of countr(ies) you want to select, you can get them from GET /country-list response 

     - returns: RequestBuilder<String> 
     */
    open class func userCountriesPostWithRequestBuilder(countryListIds: CountryListIds) -> RequestBuilder<String> {
        let path = "/user-countries"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: countryListIds)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
