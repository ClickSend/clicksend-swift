//
// MMSAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MMSAPI {
    /**
     Get Price for MMS sent
     
     - parameter mmsMessages: (body) MmsMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsPricePost(mmsMessages: MmsMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsPricePostWithRequestBuilder(mmsMessages: mmsMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Price for MMS sent
     - POST /mms/price
     - Get Price for MMS sent
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter mmsMessages: (body) MmsMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func mmsPricePostWithRequestBuilder(mmsMessages: MmsMessageCollection) -> RequestBuilder<String> {
        let path = "/mms/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mmsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all delivery receipts
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsReceiptsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsReceiptsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all delivery receipts
     - GET /mms/receipts
     - Get all delivery receipts
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func mmsReceiptsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/mms/receipts"
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
     Mark delivery receipts as read
     
     - parameter dateBefore: (body) DateBefore model (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsReceiptsReadPut(dateBefore: DateBefore? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsReceiptsReadPutWithRequestBuilder(dateBefore: dateBefore).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark delivery receipts as read
     - PUT /mms/receipts-read
     - Mark delivery receipts as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter dateBefore: (body) DateBefore model (optional)

     - returns: RequestBuilder<String> 
     */
    open class func mmsReceiptsReadPutWithRequestBuilder(dateBefore: DateBefore? = nil) -> RequestBuilder<String> {
        let path = "/mms/receipts-read"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dateBefore)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send MMS
     
     - parameter mmsMessages: (body) MmsMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsSendPost(mmsMessages: MmsMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsSendPostWithRequestBuilder(mmsMessages: mmsMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send MMS
     - POST /mms/send
     - Send MMS
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter mmsMessages: (body) MmsMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func mmsSendPostWithRequestBuilder(mmsMessages: MmsMessageCollection) -> RequestBuilder<String> {
        let path = "/mms/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mmsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}