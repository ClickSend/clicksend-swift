//
// SMSAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SMSAPI {
    /**
     Update all scheduled message as cancelled
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCancelAllPut(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCancelAllPutWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update all scheduled message as cancelled
     - PUT /sms/cancel-all
     - Update all scheduled message as cancelled
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String> 
     */
    open class func smsCancelAllPutWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/sms/cancel-all"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update scheduled message as cancelled
     
     - parameter messageId: (path) The message ID you want to cancel 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCancelByMessageIdPut(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCancelByMessageIdPutWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update scheduled message as cancelled
     - PUT /sms/{message_id}/cancel
     - Update scheduled message as cancelled
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter messageId: (path) The message ID you want to cancel 

     - returns: RequestBuilder<String> 
     */
    open class func smsCancelByMessageIdPutWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/sms/{message_id}/cancel"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export all sms history
     
     - parameter filename: (query) Filename to download history as 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsHistoryExportGet(filename: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsHistoryExportGetWithRequestBuilder(filename: filename).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Export all sms history
     - GET /sms/history/export
     - Export all sms history
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter filename: (query) Filename to download history as 

     - returns: RequestBuilder<String> 
     */
    open class func smsHistoryExportGetWithRequestBuilder(filename: String) -> RequestBuilder<String> {
        let path = "/sms/history/export"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "filename": filename
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all sms history
     
     - parameter q: (query) Custom query Example: from:{number},status_code:201. (optional)
     - parameter dateFrom: (query) Start date (optional)
     - parameter dateTo: (query) End date (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsHistoryGet(q: String? = nil, dateFrom: Int? = nil, dateTo: Int? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsHistoryGetWithRequestBuilder(q: q, dateFrom: dateFrom, dateTo: dateTo, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all sms history
     - GET /sms/history
     - Get all sms history
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter q: (query) Custom query Example: from:{number},status_code:201. (optional)
     - parameter dateFrom: (query) Start date (optional)
     - parameter dateTo: (query) End date (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsHistoryGetWithRequestBuilder(q: String? = nil, dateFrom: Int? = nil, dateTo: Int? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/history"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "date_from": dateFrom?.encodeToJSON(), 
            "date_to": dateTo?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all inbound sms
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsInboundGet(q: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsInboundGetWithRequestBuilder(q: q, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all inbound sms
     - GET /sms/inbound
     - Get all inbound sms
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter q: (query) Your keyword or query. (optional)
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsInboundGetWithRequestBuilder(q: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/inbound"
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

    /**
     Create inbound sms
     
     - parameter url: (body) Url model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsInboundPost(url: Url, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsInboundPostWithRequestBuilder(url: url).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create inbound sms
     - POST /sms/inbound
     - Create inbound sms
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter url: (body) Url model 

     - returns: RequestBuilder<String> 
     */
    open class func smsInboundPostWithRequestBuilder(url: Url) -> RequestBuilder<String> {
        let path = "/sms/inbound"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: url)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Mark inbound SMS as read
     
     - parameter messageId: (path) Message ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsInboundReadByMessageIdPut(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsInboundReadByMessageIdPutWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark inbound SMS as read
     - PUT /sms/inbound-read/{message_id}
     - Mark specific inbound SMS as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter messageId: (path) Message ID 

     - returns: RequestBuilder<String> 
     */
    open class func smsInboundReadByMessageIdPutWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/sms/inbound-read/{message_id}"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Mark inbound SMS as read
     
     - parameter dateBefore: (body) DateBefore model (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsInboundReadPut(dateBefore: DateBefore? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsInboundReadPutWithRequestBuilder(dateBefore: dateBefore).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark inbound SMS as read
     - PUT /sms/inbound-read
     - Mark all inbound SMS as read optionally before a certain date
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter dateBefore: (body) DateBefore model (optional)

     - returns: RequestBuilder<String> 
     */
    open class func smsInboundReadPutWithRequestBuilder(dateBefore: DateBefore? = nil) -> RequestBuilder<String> {
        let path = "/sms/inbound-read"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dateBefore)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Calculate sms price
     
     - parameter smsMessages: (body) SmsMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsPricePost(smsMessages: SmsMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsPricePostWithRequestBuilder(smsMessages: smsMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate sms price
     - POST /sms/price
     - Calculate sms price
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsMessages: (body) SmsMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func smsPricePostWithRequestBuilder(smsMessages: SmsMessageCollection) -> RequestBuilder<String> {
        let path = "/sms/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Mark specific delivery receipt as read
     
     - parameter messageId: (path) The message ID you want to mark as read 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsReceiptReadByMessageIdPut(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsReceiptReadByMessageIdPutWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark specific delivery receipt as read
     - PUT /sms/receipts-read/{message_id}
     - Mark specific delivery receipt as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter messageId: (path) The message ID you want to mark as read 

     - returns: RequestBuilder<String> 
     */
    open class func smsReceiptReadByMessageIdPutWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/sms/receipts-read/{message_id}"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a Specific Delivery Receipt
     
     - parameter messageId: (path) Message ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsReceiptsByMessageIdGet(messageId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsReceiptsByMessageIdGetWithRequestBuilder(messageId: messageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a Specific Delivery Receipt
     - GET /sms/receipts/{message_id}
     - Get a Specific Delivery Receipt
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter messageId: (path) Message ID 

     - returns: RequestBuilder<String> 
     */
    open class func smsReceiptsByMessageIdGetWithRequestBuilder(messageId: String) -> RequestBuilder<String> {
        var path = "/sms/receipts/{message_id}"
        let messageIdPreEscape = "\(messageId)"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{message_id}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all delivery receipts
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsReceiptsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsReceiptsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all delivery receipts
     - GET /sms/receipts
     - Get all delivery receipts
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsReceiptsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/receipts"
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
     Add a delivery receipt
     
     - parameter url: (body) Url model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsReceiptsPost(url: Url, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsReceiptsPostWithRequestBuilder(url: url).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a delivery receipt
     - POST /sms/receipts
     - Add a delivery receipt
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter url: (body) Url model 

     - returns: RequestBuilder<String> 
     */
    open class func smsReceiptsPostWithRequestBuilder(url: Url) -> RequestBuilder<String> {
        let path = "/sms/receipts"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: url)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Mark delivery receipts as read
     
     - parameter dateBefore: (body) DateBefore model (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsReceiptsReadPut(dateBefore: DateBefore? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsReceiptsReadPutWithRequestBuilder(dateBefore: dateBefore).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark delivery receipts as read
     - PUT /sms/receipts-read
     - Mark delivery receipts as read
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter dateBefore: (body) DateBefore model (optional)

     - returns: RequestBuilder<String> 
     */
    open class func smsReceiptsReadPutWithRequestBuilder(dateBefore: DateBefore? = nil) -> RequestBuilder<String> {
        let path = "/sms/receipts-read"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dateBefore)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send sms message(s)
     
     - parameter smsMessages: (body) SmsMessageCollection model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsSendPost(smsMessages: SmsMessageCollection, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsSendPostWithRequestBuilder(smsMessages: smsMessages).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Send sms message(s)
     - POST /sms/send
     -  # Send one or more SMS messages  You can post up to 1000 messages with each API call. You can send to a mix of contacts and contact lists, as long as the total number of recipients is up to 1000.  The response contains status and details for each recipient.  *Refer to [Application Status Codes](https://dashboard.clicksend.com/#/signup/step1/) for the possible response message status strings.* 
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsMessages: (body) SmsMessageCollection model 

     - returns: RequestBuilder<String> 
     */
    open class func smsSendPostWithRequestBuilder(smsMessages: SmsMessageCollection) -> RequestBuilder<String> {
        let path = "/sms/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsMessages)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete sms template
     
     - parameter templateId: (path) Template id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsTemplatesByTemplateIdDelete(templateId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsTemplatesByTemplateIdDeleteWithRequestBuilder(templateId: templateId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete sms template
     - DELETE /sms/templates/{template_id}
     - Delete sms template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter templateId: (path) Template id 

     - returns: RequestBuilder<String> 
     */
    open class func smsTemplatesByTemplateIdDeleteWithRequestBuilder(templateId: Int) -> RequestBuilder<String> {
        var path = "/sms/templates/{template_id}"
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
     Update sms template
     
     - parameter templateId: (path) Template id 
     - parameter smsTemplate: (body) Template item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsTemplatesByTemplateIdPut(templateId: Int, smsTemplate: SmsTemplate, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsTemplatesByTemplateIdPutWithRequestBuilder(templateId: templateId, smsTemplate: smsTemplate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update sms template
     - PUT /sms/templates/{template_id}
     - Update sms template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter templateId: (path) Template id 
     - parameter smsTemplate: (body) Template item 

     - returns: RequestBuilder<String> 
     */
    open class func smsTemplatesByTemplateIdPutWithRequestBuilder(templateId: Int, smsTemplate: SmsTemplate) -> RequestBuilder<String> {
        var path = "/sms/templates/{template_id}"
        let templateIdPreEscape = "\(templateId)"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsTemplate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get lists of all sms templates
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsTemplatesGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsTemplatesGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get lists of all sms templates
     - GET /sms/templates
     - Get lists of all sms templates
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsTemplatesGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms/templates"
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
     Create sms template
     
     - parameter smsTemplate: (body) SmsTemplate model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsTemplatesPost(smsTemplate: SmsTemplate, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsTemplatesPostWithRequestBuilder(smsTemplate: smsTemplate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create sms template
     - POST /sms/templates
     - Create sms template
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsTemplate: (body) SmsTemplate model 

     - returns: RequestBuilder<String> 
     */
    open class func smsTemplatesPostWithRequestBuilder(smsTemplate: SmsTemplate) -> RequestBuilder<String> {
        let path = "/sms/templates"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: smsTemplate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
