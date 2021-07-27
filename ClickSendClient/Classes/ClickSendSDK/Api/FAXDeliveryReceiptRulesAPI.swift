//
// FAXDeliveryReceiptRulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FAXDeliveryReceiptRulesAPI {
    /**
     Delete fax delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxDeliveryReceiptAutomationDelete(receiptRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxDeliveryReceiptAutomationDeleteWithRequestBuilder(receiptRuleId: receiptRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete fax delivery receipt automation
     - DELETE /automations/fax/receipts/{receipt_rule_id}
     - Delete fax delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter receiptRuleId: (path) Receipt rule id 

     - returns: RequestBuilder<String> 
     */
    open class func faxDeliveryReceiptAutomationDeleteWithRequestBuilder(receiptRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/fax/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get specific fax delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxDeliveryReceiptAutomationGet(receiptRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxDeliveryReceiptAutomationGetWithRequestBuilder(receiptRuleId: receiptRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific fax delivery receipt automation
     - GET /automations/fax/receipts/{receipt_rule_id}
     - Get specific fax delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter receiptRuleId: (path) Receipt rule id 

     - returns: RequestBuilder<String> 
     */
    open class func faxDeliveryReceiptAutomationGetWithRequestBuilder(receiptRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/fax/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create fax delivery receipt automations
     
     - parameter deliveryReceiptRule: (body) fax delivery receipt rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxDeliveryReceiptAutomationPost(deliveryReceiptRule: DeliveryReceiptRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxDeliveryReceiptAutomationPostWithRequestBuilder(deliveryReceiptRule: deliveryReceiptRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create fax delivery receipt automations
     - POST /automations/fax/receipts
     - Create fax delivery receipt automations
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter deliveryReceiptRule: (body) fax delivery receipt rule model 

     - returns: RequestBuilder<String> 
     */
    open class func faxDeliveryReceiptAutomationPostWithRequestBuilder(deliveryReceiptRule: DeliveryReceiptRule) -> RequestBuilder<String> {
        let path = "/automations/fax/receipts"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deliveryReceiptRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update fax delivery receipt automation
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter deliveryReceiptRule: (body) Delivery receipt rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxDeliveryReceiptAutomationPut(receiptRuleId: Int, deliveryReceiptRule: DeliveryReceiptRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxDeliveryReceiptAutomationPutWithRequestBuilder(receiptRuleId: receiptRuleId, deliveryReceiptRule: deliveryReceiptRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update fax delivery receipt automation
     - PUT /automations/fax/receipts/{receipt_rule_id}
     - Update fax delivery receipt automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter receiptRuleId: (path) Receipt rule id 
     - parameter deliveryReceiptRule: (body) Delivery receipt rule model 

     - returns: RequestBuilder<String> 
     */
    open class func faxDeliveryReceiptAutomationPutWithRequestBuilder(receiptRuleId: Int, deliveryReceiptRule: DeliveryReceiptRule) -> RequestBuilder<String> {
        var path = "/automations/fax/receipts/{receipt_rule_id}"
        let receiptRuleIdPreEscape = "\(receiptRuleId)"
        let receiptRuleIdPostEscape = receiptRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{receipt_rule_id}", with: receiptRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deliveryReceiptRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all fax delivery receipt automations
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxDeliveryReceiptAutomationsGet(q: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxDeliveryReceiptAutomationsGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all fax delivery receipt automations
     - GET /automations/fax/receipts
     - Get all fax delivery receipt automations
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func faxDeliveryReceiptAutomationsGetWithRequestBuilder(q: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/automations/fax/receipts"
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
