//
// EmailToSmsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class EmailToSmsAPI {
    /**
     Get list of email to sms allowed addresses
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of email to sms allowed addresses
     - GET /sms/email-sms
     - Get list of email to sms allowed addresses
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/email-sms"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create email to sms allowed address
     
     - parameter emailSmsAddress: (body) EmailSMSAddress model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsPost(emailSmsAddress: EmailSMSAddress, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsPostWithRequestBuilder(emailSmsAddress: emailSmsAddress).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create email to sms allowed address
     - POST /sms/email-sms
     - Create email to sms allowed address
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter emailSmsAddress: (body) EmailSMSAddress model 

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsPostWithRequestBuilder(emailSmsAddress: EmailSMSAddress) -> RequestBuilder<String> {
        let path = "/sms/email-sms"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emailSmsAddress)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete email to sms stripped string rule
     
     - parameter ruleId: (path) Your rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsStrippedStringDelete(ruleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsStrippedStringDeleteWithRequestBuilder(ruleId: ruleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete email to sms stripped string rule
     - DELETE /sms/email-sms-stripped-strings/{rule_id}
     - Delete email to sms stripped string rule
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter ruleId: (path) Your rule id 

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsStrippedStringDeleteWithRequestBuilder(ruleId: Int) -> RequestBuilder<String> {
        var path = "/sms/email-sms-stripped-strings/{rule_id}"
        let ruleIdPreEscape = "\(ruleId)"
        let ruleIdPostEscape = ruleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{rule_id}", with: ruleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get email to sms stripped string rule
     
     - parameter ruleId: (path) Your rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsStrippedStringGet(ruleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsStrippedStringGetWithRequestBuilder(ruleId: ruleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get email to sms stripped string rule
     - GET /sms/email-sms-stripped-strings/{rule_id}
     - Get email to sms stripped string rule
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter ruleId: (path) Your rule id 

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsStrippedStringGetWithRequestBuilder(ruleId: Int) -> RequestBuilder<String> {
        var path = "/sms/email-sms-stripped-strings/{rule_id}"
        let ruleIdPreEscape = "\(ruleId)"
        let ruleIdPostEscape = ruleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{rule_id}", with: ruleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create email to sms stripped string rule
     
     - parameter strippedString: (body) StrippedString model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsStrippedStringPost(strippedString: StrippedString, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsStrippedStringPostWithRequestBuilder(strippedString: strippedString).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create email to sms stripped string rule
     - POST /sms/email-sms-stripped-strings
     - Create email to sms stripped string rules
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter strippedString: (body) StrippedString model 

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsStrippedStringPostWithRequestBuilder(strippedString: StrippedString) -> RequestBuilder<String> {
        let path = "/sms/email-sms-stripped-strings"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: strippedString)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update email to sms stripped string rule
     
     - parameter strippedString: (body) StrippedString model 
     - parameter ruleId: (path) Your rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsStrippedStringPut(strippedString: StrippedString, ruleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsStrippedStringPutWithRequestBuilder(strippedString: strippedString, ruleId: ruleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update email to sms stripped string rule
     - PUT /sms/email-sms-stripped-strings/{rule_id}
     - Update email to sms stripped string rule
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter strippedString: (body) StrippedString model 
     - parameter ruleId: (path) Your rule id 

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsStrippedStringPutWithRequestBuilder(strippedString: StrippedString, ruleId: Int) -> RequestBuilder<String> {
        var path = "/sms/email-sms-stripped-strings/{rule_id}"
        let ruleIdPreEscape = "\(ruleId)"
        let ruleIdPostEscape = ruleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{rule_id}", with: ruleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: strippedString)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get list of email to sms stripped string rules
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsEmailSmsStrippedStringsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsEmailSmsStrippedStringsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of email to sms stripped string rules
     - GET /sms/email-sms-stripped-strings
     - Get list of email to sms stripped string rules
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsEmailSmsStrippedStringsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/email-sms-stripped-strings"
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
