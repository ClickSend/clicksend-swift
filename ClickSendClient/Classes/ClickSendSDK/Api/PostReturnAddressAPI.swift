//
// PostReturnAddressAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PostReturnAddressAPI {
    /**
     Delete specific post return address
     
     - parameter returnAddressId: (path) Return address ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReturnAddressesByReturnAddressIdDelete(returnAddressId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postReturnAddressesByReturnAddressIdDeleteWithRequestBuilder(returnAddressId: returnAddressId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete specific post return address
     - DELETE /post/return-addresses/{return_address_id}
     - Delete specific post return address
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter returnAddressId: (path) Return address ID 

     - returns: RequestBuilder<String> 
     */
    open class func postReturnAddressesByReturnAddressIdDeleteWithRequestBuilder(returnAddressId: Int) -> RequestBuilder<String> {
        var path = "/post/return-addresses/{return_address_id}"
        let returnAddressIdPreEscape = "\(returnAddressId)"
        let returnAddressIdPostEscape = returnAddressIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{return_address_id}", with: returnAddressIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get specific post return address
     
     - parameter returnAddressId: (path) Return address ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReturnAddressesByReturnAddressIdGet(returnAddressId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postReturnAddressesByReturnAddressIdGetWithRequestBuilder(returnAddressId: returnAddressId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific post return address
     - GET /post/return-addresses/{return_address_id}
     - Get specific post return address
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter returnAddressId: (path) Return address ID 

     - returns: RequestBuilder<String> 
     */
    open class func postReturnAddressesByReturnAddressIdGetWithRequestBuilder(returnAddressId: Int) -> RequestBuilder<String> {
        var path = "/post/return-addresses/{return_address_id}"
        let returnAddressIdPreEscape = "\(returnAddressId)"
        let returnAddressIdPostEscape = returnAddressIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{return_address_id}", with: returnAddressIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update post return address
     
     - parameter returnAddressId: (path) Return address ID 
     - parameter returnAddress: (body) Address model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReturnAddressesByReturnAddressIdPut(returnAddressId: Int, returnAddress: Address, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postReturnAddressesByReturnAddressIdPutWithRequestBuilder(returnAddressId: returnAddressId, returnAddress: returnAddress).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update post return address
     - PUT /post/return-addresses/{return_address_id}
     - Update post return address
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter returnAddressId: (path) Return address ID 
     - parameter returnAddress: (body) Address model 

     - returns: RequestBuilder<String> 
     */
    open class func postReturnAddressesByReturnAddressIdPutWithRequestBuilder(returnAddressId: Int, returnAddress: Address) -> RequestBuilder<String> {
        var path = "/post/return-addresses/{return_address_id}"
        let returnAddressIdPreEscape = "\(returnAddressId)"
        let returnAddressIdPostEscape = returnAddressIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{return_address_id}", with: returnAddressIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: returnAddress)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get list of post return addresses
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReturnAddressesGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postReturnAddressesGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of post return addresses
     - GET /post/return-addresses
     - Get list of post return addresses
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func postReturnAddressesGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/post/return-addresses"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create post return address
     
     - parameter returnAddress: (body) Address model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReturnAddressesPost(returnAddress: Address, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postReturnAddressesPostWithRequestBuilder(returnAddress: returnAddress).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create post return address
     - POST /post/return-addresses
     - Create post return address
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter returnAddress: (body) Address model 

     - returns: RequestBuilder<String> 
     */
    open class func postReturnAddressesPostWithRequestBuilder(returnAddress: Address) -> RequestBuilder<String> {
        let path = "/post/return-addresses"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: returnAddress)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
