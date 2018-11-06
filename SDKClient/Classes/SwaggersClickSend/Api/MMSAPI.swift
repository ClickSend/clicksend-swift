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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mmsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mmsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}