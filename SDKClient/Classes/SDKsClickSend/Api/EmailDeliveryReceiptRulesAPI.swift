//
// EmailDeliveryReceiptRulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class EmailDeliveryReceiptRulesAPI {
    /**
     Delete email delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailDeliveryReceiptAutomationDelete(receiptRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailDeliveryReceiptAutomationDeleteWithRequestBuilder(receiptRuleId: receiptRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete email delivery receipt automation
     - DELETE /automations/email/receipts/{receipt_rule_id}
     - Delete email delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter receiptRuleId: (path) Receipt rule id 

     - returns: RequestBuilder<String> 
     */
    open class func emailDeliveryReceiptAutomationDeleteWithRequestBuilder(receiptRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/email/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get specific email delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailDeliveryReceiptAutomationGet(receiptRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailDeliveryReceiptAutomationGetWithRequestBuilder(receiptRuleId: receiptRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific email delivery receipt automation
     - GET /automations/email/receipts/{receipt_rule_id}
     - Get specific email delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter receiptRuleId: (path) Receipt rule id 

     - returns: RequestBuilder<String> 
     */
    open class func emailDeliveryReceiptAutomationGetWithRequestBuilder(receiptRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/email/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create email delivery receipt automations
     
     - parameter deliveryReceiptRule: (body) Email delivery receipt rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailDeliveryReceiptAutomationPost(deliveryReceiptRule: DeliveryReceiptRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailDeliveryReceiptAutomationPostWithRequestBuilder(deliveryReceiptRule: deliveryReceiptRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create email delivery receipt automations
     - POST /automations/email/receipts
     - Create email delivery receipt automations
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter deliveryReceiptRule: (body) Email delivery receipt rule model 

     - returns: RequestBuilder<String> 
     */
    open class func emailDeliveryReceiptAutomationPostWithRequestBuilder(deliveryReceiptRule: DeliveryReceiptRule) -> RequestBuilder<String> {
        let path = "/automations/email/receipts"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deliveryReceiptRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update email delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter deliveryReceiptRule: (body) Delivery receipt rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailDeliveryReceiptAutomationPut(receiptRuleId: Int, deliveryReceiptRule: DeliveryReceiptRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailDeliveryReceiptAutomationPutWithRequestBuilder(receiptRuleId: receiptRuleId, deliveryReceiptRule: deliveryReceiptRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update email delivery receipt automation
     - PUT /automations/email/receipts/{receipt_rule_id}
     - Update email delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter deliveryReceiptRule: (body) Delivery receipt rule model 

     - returns: RequestBuilder<String> 
     */
    open class func emailDeliveryReceiptAutomationPutWithRequestBuilder(receiptRuleId: Int, deliveryReceiptRule: DeliveryReceiptRule) -> RequestBuilder<String> {
        var path = "/automations/email/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deliveryReceiptRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all email delivery receipt automations
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailDeliveryReceiptAutomationsGet(q: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailDeliveryReceiptAutomationsGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all email delivery receipt automations
     - GET /automations/email/receipts
     - Get all email delivery receipt automations
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func emailDeliveryReceiptAutomationsGetWithRequestBuilder(q: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/automations/email/receipts"
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

}
