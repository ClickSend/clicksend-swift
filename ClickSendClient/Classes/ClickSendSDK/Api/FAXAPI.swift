//
// FAXAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FAXAPI {
    /**
     Get a list of Fax History.
     
     - parameter dateFrom: (query) Customize result by setting from date (timestsamp) Example: 1457572619. (optional)
     - parameter dateTo: (query) Customize result by setting to date (timestamp) Example: 1457573000. (optional)
     - parameter q: (query) Custom query Example: status:Sent,status_code:201. (optional)
     - parameter order: (query) Order result by Example: date_added:desc,list_id:desc. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxHistoryGet(dateFrom: Int? = nil, dateTo: Int? = nil, q: String? = nil, order: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxHistoryGetWithRequestBuilder(dateFrom: dateFrom, dateTo: dateTo, q: q, order: order, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of Fax History.
     - GET /fax/history
     - Get a list of Fax History.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter dateFrom: (query) Customize result by setting from date (timestsamp) Example: 1457572619. (optional)
     - parameter dateTo: (query) Customize result by setting to date (timestamp) Example: 1457573000. (optional)
     - parameter q: (query) Custom query Example: status:Sent,status_code:201. (optional)
     - parameter order: (query) Order result by Example: date_added:desc,list_id:desc. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func faxHistoryGetWithRequestBuilder(dateFrom: Int? = nil, dateTo: Int? = nil, q: String? = nil, order: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/fax/history"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "date_from": dateFrom?.encodeToJSON(), 
            "date_to": dateTo?.encodeToJSON(), 
            "q": q, 
            "order": order, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Calculate Total Price for Fax Messages sent
     
     - parameter faxMessage: (body) FaxMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxPricePost(faxMessage: FaxMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxPricePostWithRequestBuilder(faxMessage: faxMessage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate Total Price for Fax Messages sent
     - POST /fax/price
     - Calculate Total Price for Fax Messages sent
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter faxMessage: (body) FaxMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func faxPricePostWithRequestBuilder(faxMessage: FaxMessageCollection) -> RequestBuilder<String> {
        let path = "/fax/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: faxMessage)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get a single fax receipt based on message id.
     
     - parameter messageId: (path) ID of the message receipt to retrieve 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsByMessageIdGet(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsByMessageIdGetWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single fax receipt based on message id.
     - GET /fax/receipts/{message_id}
     - Get a single fax receipt based on message id.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter messageId: (path) ID of the message receipt to retrieve 

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsByMessageIdGetWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/fax/receipts/{message_id}"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all delivery receipts
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all delivery receipts
     - GET /fax/receipts
     - Get all delivery receipts
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
    open class func faxReceiptsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/fax/receipts"
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
     Add a delivery receipt
     
     - parameter url: (body) Url model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsPost(url: Url, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsPostWithRequestBuilder(url: url).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a delivery receipt
     - POST /fax/receipts
     - Add a delivery receipt
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter url: (body) Url model 

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsPostWithRequestBuilder(url: Url) -> RequestBuilder<String> {
        let path = "/fax/receipts"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: url)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Mark delivery receipts as read
     
     - parameter dateBefore: (body) DateBefore model (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxReceiptsReadPut(dateBefore: DateBefore? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxReceiptsReadPutWithRequestBuilder(dateBefore: dateBefore).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark delivery receipts as read
     - PUT /fax/receipts-read
     - Mark delivery receipts as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter dateBefore: (body) DateBefore model (optional)

     - returns: RequestBuilder<String> 
     */
    open class func faxReceiptsReadPutWithRequestBuilder(dateBefore: DateBefore? = nil) -> RequestBuilder<String> {
        let path = "/fax/receipts-read"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dateBefore)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a fax using supplied supported file-types.
     
     - parameter faxMessage: (body) FaxMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxSendPost(faxMessage: FaxMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxSendPostWithRequestBuilder(faxMessage: faxMessage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send a fax using supplied supported file-types.
     - POST /fax/send
     - Send a fax using supplied supported file-types.
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter faxMessage: (body) FaxMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func faxSendPostWithRequestBuilder(faxMessage: FaxMessageCollection) -> RequestBuilder<String> {
        let path = "/fax/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: faxMessage)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
