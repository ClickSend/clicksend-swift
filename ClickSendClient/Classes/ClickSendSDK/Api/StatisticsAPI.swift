//
// StatisticsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class StatisticsAPI {
    /**
     Get sms statistics
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func statisticsSmsGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        statisticsSmsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get sms statistics
     - GET /statistics/sms
     - Get sms statistics
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<String> 
     */
    open class func statisticsSmsGetWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/statistics/sms"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get voice statistics
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func statisticsVoiceGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        statisticsVoiceGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get voice statistics
     - GET /statistics/voice
     - Get voice statistics
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<String> 
     */
    open class func statisticsVoiceGetWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/statistics/voice"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
