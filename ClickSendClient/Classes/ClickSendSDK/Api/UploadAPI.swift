//
// UploadAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UploadAPI {
    /**
     Upload File
     
     - parameter uploadFile: (body) Your file to be uploaded 
     - parameter convert: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadsPost(uploadFile: UploadFile, convert: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        uploadsPostWithRequestBuilder(uploadFile: uploadFile, convert: convert).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload File
     - POST /uploads
     - Upload File
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter uploadFile: (body) Your file to be uploaded 
     - parameter convert: (query)  

     - returns: RequestBuilder<String> 
     */
    open class func uploadsPostWithRequestBuilder(uploadFile: UploadFile, convert: String) -> RequestBuilder<String> {
        let path = "/uploads"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadFile)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "convert": convert
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
