//
// InboundFAXRulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class InboundFAXRulesAPI {
    /**
     Delete inbound fax automation
     
     - parameter inboundRuleId: (path) Inbound rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxInboundAutomationDelete(inboundRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxInboundAutomationDeleteWithRequestBuilder(inboundRuleId: inboundRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete inbound fax automation
     - DELETE /automations/fax/inbound/{inbound_rule_id}
     - Delete inbound fax automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter inboundRuleId: (path) Inbound rule id 

     - returns: RequestBuilder<String> 
     */
    open class func faxInboundAutomationDeleteWithRequestBuilder(inboundRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/fax/inbound/{inbound_rule_id}"
        let inboundRuleIdPreEscape = "\(inboundRuleId)"
        let inboundRuleIdPostEscape = inboundRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inbound_rule_id}", with: inboundRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get specific inbound fax automation
     
     - parameter inboundRuleId: (path) Inbound rule id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxInboundAutomationGet(inboundRuleId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxInboundAutomationGetWithRequestBuilder(inboundRuleId: inboundRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific inbound fax automation
     - GET /automations/fax/inbound/{inbound_rule_id}
     - Get specific inbound fax automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter inboundRuleId: (path) Inbound rule id 

     - returns: RequestBuilder<String> 
     */
    open class func faxInboundAutomationGetWithRequestBuilder(inboundRuleId: Int) -> RequestBuilder<String> {
        var path = "/automations/fax/inbound/{inbound_rule_id}"
        let inboundRuleIdPreEscape = "\(inboundRuleId)"
        let inboundRuleIdPostEscape = inboundRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inbound_rule_id}", with: inboundRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create new inbound fax automation
     
     - parameter inboundFaxRule: (body) Inbound fax rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxInboundAutomationPost(inboundFaxRule: InboundFaxRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxInboundAutomationPostWithRequestBuilder(inboundFaxRule: inboundFaxRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new inbound fax automation
     - POST /automations/fax/inbound
     - Create new inbound fax automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter inboundFaxRule: (body) Inbound fax rule model 

     - returns: RequestBuilder<String> 
     */
    open class func faxInboundAutomationPostWithRequestBuilder(inboundFaxRule: InboundFaxRule) -> RequestBuilder<String> {
        let path = "/automations/fax/inbound"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inboundFaxRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update inbound fax automation
     
     - parameter inboundRuleId: (path) Inbound rule id 
     - parameter inboundFaxRule: (body) Inbound fax rule model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxInboundAutomationPut(inboundRuleId: Int, inboundFaxRule: InboundFaxRule, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxInboundAutomationPutWithRequestBuilder(inboundRuleId: inboundRuleId, inboundFaxRule: inboundFaxRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update inbound fax automation
     - PUT /automations/fax/inbound/{inbound_rule_id}
     - Update inbound fax automation
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter inboundRuleId: (path) Inbound rule id 
     - parameter inboundFaxRule: (body) Inbound fax rule model 

     - returns: RequestBuilder<String> 
     */
    open class func faxInboundAutomationPutWithRequestBuilder(inboundRuleId: Int, inboundFaxRule: InboundFaxRule) -> RequestBuilder<String> {
        var path = "/automations/fax/inbound/{inbound_rule_id}"
        let inboundRuleIdPreEscape = "\(inboundRuleId)"
        let inboundRuleIdPostEscape = inboundRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inbound_rule_id}", with: inboundRuleIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inboundFaxRule)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all inbound fax automations
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func faxInboundAutomationsGet(q: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        faxInboundAutomationsGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all inbound fax automations
     - GET /automations/fax/inbound
     - Get all inbound fax automations
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func faxInboundAutomationsGetWithRequestBuilder(q: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/automations/fax/inbound"
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
