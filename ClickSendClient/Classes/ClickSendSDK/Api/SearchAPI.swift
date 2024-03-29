//
// SearchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SearchAPI {
    /**
     Get list of searched contact list
     
     - parameter q: (query) Your keyword or query. 
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchContactsListsGet(q: String, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        searchContactsListsGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of searched contact list
     - GET /search/contacts-lists
     - Get list of searched contact list
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter q: (query) Your keyword or query. 
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func searchContactsListsGetWithRequestBuilder(q: String, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/search/contacts-lists"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
