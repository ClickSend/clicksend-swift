//
// VoiceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class VoiceAPI {
    /**
     Update all voice messages as cancelled
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceCancelAllPut(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceCancelAllPutWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update all voice messages as cancelled
     - PUT /voice/cancel-all
     - Update all voice messages as cancelled
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String> 
     */
    open class func voiceCancelAllPutWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/voice/cancel-all"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update voice message status as cancelled
     
     - parameter messageId: (path) Your voice message id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceCancelByMessageIdPut(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceCancelByMessageIdPutWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update voice message status as cancelled
     - PUT /voice/{message_id}/cancel
     - Update voice message status as cancelled
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter messageId: (path) Your voice message id 

     - returns: RequestBuilder<String> 
     */
    open class func voiceCancelByMessageIdPutWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/voice/{message_id}/cancel"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export voice history
     
     - parameter filename: (query) Filename to export to 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceHistoryExportGet(filename: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceHistoryExportGetWithRequestBuilder(filename: filename).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Export voice history
     - GET /voice/history/export
     - Export voice history
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter filename: (query) Filename to export to 

     - returns: RequestBuilder<String> 
     */
    open class func voiceHistoryExportGetWithRequestBuilder(filename: String) -> RequestBuilder<String> {
        let path = "/voice/history/export"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "filename": filename
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all voice history
     
     - parameter dateFrom: (query) Timestamp (from) used to show records by date. (optional)
     - parameter dateTo: (query) Timestamp (to) used to show records by date (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceHistoryGet(dateFrom: Int? = nil, dateTo: Int? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceHistoryGetWithRequestBuilder(dateFrom: dateFrom, dateTo: dateTo, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all voice history
     - GET /voice/history
     - Get all voice history
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter dateFrom: (query) Timestamp (from) used to show records by date. (optional)
     - parameter dateTo: (query) Timestamp (to) used to show records by date (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func voiceHistoryGetWithRequestBuilder(dateFrom: Int? = nil, dateTo: Int? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/voice/history"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "date_from": dateFrom?.encodeToJSON(), 
            "date_to": dateTo?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all voice languages
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceLangGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceLangGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all voice languages
     - GET /voice/lang
     - Get all voice languages
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String> 
     */
    open class func voiceLangGetWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/voice/lang"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Calculate voice price
     
     - parameter voiceMessages: (body) VoiceMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voicePricePost(voiceMessages: VoiceMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voicePricePostWithRequestBuilder(voiceMessages: voiceMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate voice price
     - POST /voice/price
     - Calculate voice price
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter voiceMessages: (body) VoiceMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func voicePricePostWithRequestBuilder(voiceMessages: VoiceMessageCollection) -> RequestBuilder<String> {
        let path = "/voice/price"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voiceMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all voice receipts
     
     - parameter q: (query) Your keyword or query. 
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceReceiptsGet(q: String, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceReceiptsGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all voice receipts
     - GET /voice/receipts
     - Get all voice receipts
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter q: (query) Your keyword or query. 
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func voiceReceiptsGetWithRequestBuilder(q: String, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/voice/receipts"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Send voice message(s)
     
     - parameter voiceMessages: (body) VoiceMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func voiceSendPost(voiceMessages: VoiceMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        voiceSendPostWithRequestBuilder(voiceMessages: voiceMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send voice message(s)
     - POST /voice/send
     - Send a voice call
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter voiceMessages: (body) VoiceMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func voiceSendPostWithRequestBuilder(voiceMessages: VoiceMessageCollection) -> RequestBuilder<String> {
        let path = "/voice/send"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voiceMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
