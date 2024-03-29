//
// UserEmailTemplatesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UserEmailTemplatesAPI {
    /**
     Delete user email template
     
     - parameter templateId: (path) Email template id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTemplateDelete(templateId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailTemplateDeleteWithRequestBuilder(templateId: templateId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete user email template
     - DELETE /email/templates/{template_id}
     - Delete user email template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter templateId: (path) Email template id 

     - returns: RequestBuilder<String> 
     */
    open class func emailTemplateDeleteWithRequestBuilder(templateId: Int) -> RequestBuilder<String> {
        var path = "/email/templates/{template_id}"
        let templateIdPreEscape = "\(templateId)"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get specific user email template
     
     - parameter templateId: (path) Email template id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTemplateGet(templateId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailTemplateGetWithRequestBuilder(templateId: templateId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific user email template
     - GET /email/templates/{template_id}
     - Get specific user email templates
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter templateId: (path) Email template id 

     - returns: RequestBuilder<String> 
     */
    open class func emailTemplateGetWithRequestBuilder(templateId: Int) -> RequestBuilder<String> {
        var path = "/email/templates/{template_id}"
        let templateIdPreEscape = "\(templateId)"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create email template
     
     - parameter emailTemplate: (body) Email template model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTemplatePost(emailTemplate: EmailTemplateNew, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailTemplatePostWithRequestBuilder(emailTemplate: emailTemplate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create email template
     - POST /email/templates
     - Create email template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter emailTemplate: (body) Email template model 

     - returns: RequestBuilder<String> 
     */
    open class func emailTemplatePostWithRequestBuilder(emailTemplate: EmailTemplateNew) -> RequestBuilder<String> {
        let path = "/email/templates"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emailTemplate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update email template
     
     - parameter templateId: (path) Email template id 
     - parameter emailTemplate: (body) Email template model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTemplatePut(templateId: Int, emailTemplate: EmailTemplateUpdate, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailTemplatePutWithRequestBuilder(templateId: templateId, emailTemplate: emailTemplate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update email template
     - PUT /email/templates/{template_id}
     - Update email template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter templateId: (path) Email template id 
     - parameter emailTemplate: (body) Email template model 

     - returns: RequestBuilder<String> 
     */
    open class func emailTemplatePutWithRequestBuilder(templateId: Int, emailTemplate: EmailTemplateUpdate) -> RequestBuilder<String> {
        var path = "/email/templates/{template_id}"
        let templateIdPreEscape = "\(templateId)"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emailTemplate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all user email templates
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTemplatesGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        emailTemplatesGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all user email templates
     - GET /email/templates
     - Get all user email templates
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func emailTemplatesGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/email/templates"
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

}
