//
// PostPostcardAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PostPostcardAPI {
    /**
     Export postcard history to a CSV file
     
     - parameter filename: (query) Filename to export to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPostcardsHistoryExportGet(filename: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postPostcardsHistoryExportGetWithRequestBuilder(filename: filename).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Export postcard history to a CSV file
     - GET /post/postcards/history/export
     - Export postcard history to a CSV file
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter filename: (query) Filename to export to 

     - returns: RequestBuilder<String> 
     */
    open class func postPostcardsHistoryExportGetWithRequestBuilder(filename: String) -> RequestBuilder<String> {
        let path = "/post/postcards/history/export"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "filename": filename
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve the history of postcards sent or scheduled
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPostcardsHistoryGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postPostcardsHistoryGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve the history of postcards sent or scheduled
     - GET /post/postcards/history
     - Retrieve the history of postcards sent or scheduled
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func postPostcardsHistoryGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/post/postcards/history"
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
     Calculate price for sending one or more postcards
     
     - parameter postPostcards: (body) PostPostcard model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPostcardsPricePost(postPostcards: PostPostcard, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postPostcardsPricePostWithRequestBuilder(postPostcards: postPostcards).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate price for sending one or more postcards
     - POST /post/postcards/price
     - Calculate price for sending one or more postcards
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter postPostcards: (body) PostPostcard model 

     - returns: RequestBuilder<String> 
     */
    open class func postPostcardsPricePostWithRequestBuilder(postPostcards: PostPostcard) -> RequestBuilder<String> {
        let path = "/post/postcards/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postPostcards)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send one or more postcards
     
     - parameter postPostcards: (body) PostPostcard model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPostcardsSendPost(postPostcards: PostPostcard, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postPostcardsSendPostWithRequestBuilder(postPostcards: postPostcards).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send one or more postcards
     - POST /post/postcards/send
     - Send one or more postcards
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter postPostcards: (body) PostPostcard model 

     - returns: RequestBuilder<String> 
     */
    open class func postPostcardsSendPostWithRequestBuilder(postPostcards: PostPostcard) -> RequestBuilder<String> {
        let path = "/post/postcards/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postPostcards)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
