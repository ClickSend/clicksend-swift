//
// PostLetterAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PostLetterAPI {
    /**
     export post letter history
     
     - parameter filename: (query) Filename to export to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLettersExportGet(filename: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postLettersExportGetWithRequestBuilder(filename: filename).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     export post letter history
     - GET /post/letters/history/export
     - export post letter history
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
    open class func postLettersExportGetWithRequestBuilder(filename: String) -> RequestBuilder<String> {
        let path = "/post/letters/history/export"
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
     Get all post letter history
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLettersHistoryGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postLettersHistoryGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all post letter history
     - GET /post/letters/history
     - Get all post letter history
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
    open class func postLettersHistoryGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/post/letters/history"
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
     Calculate post letter price
     
     - parameter postLetter: (body) PostLetter model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLettersPricePost(postLetter: PostLetter, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postLettersPricePostWithRequestBuilder(postLetter: postLetter).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate post letter price
     - POST /post/letters/price
     - Calculate post letter price
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter postLetter: (body) PostLetter model 

     - returns: RequestBuilder<String> 
     */
    open class func postLettersPricePostWithRequestBuilder(postLetter: PostLetter) -> RequestBuilder<String> {
        let path = "/post/letters/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postLetter)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send post letter
     
     - parameter postLetter: (body) PostLetter model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLettersSendPost(postLetter: PostLetter, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        postLettersSendPostWithRequestBuilder(postLetter: postLetter).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send post letter
     - POST /post/letters/send
     - Send post letter
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter postLetter: (body) PostLetter model 

     - returns: RequestBuilder<String> 
     */
    open class func postLettersSendPostWithRequestBuilder(postLetter: PostLetter) -> RequestBuilder<String> {
        let path = "/post/letters/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postLetter)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
