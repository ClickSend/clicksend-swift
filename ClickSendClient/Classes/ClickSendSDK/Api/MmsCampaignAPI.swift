//
// MmsCampaignAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MmsCampaignAPI {
    /**
     Get specific mms campaign
     
     - parameter mmsCampaignId: (path) ID of MMS campaign to retrieve 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignByMmsCampaignIdGet(mmsCampaignId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignByMmsCampaignIdGetWithRequestBuilder(mmsCampaignId: mmsCampaignId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific mms campaign
     - GET /mms-campaigns/{mms_campaign_id}
     - Get specific mms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter mmsCampaignId: (path) ID of MMS campaign to retrieve 

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignByMmsCampaignIdGetWithRequestBuilder(mmsCampaignId: Int) -> RequestBuilder<String> {
        var path = "/mms-campaigns/{mms_campaign_id}"
        let mmsCampaignIdPreEscape = "\(mmsCampaignId)"
        let mmsCampaignIdPostEscape = mmsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{mms_campaign_id}", with: mmsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update mms campaign
     
     - parameter mmsCampaignId: (path) ID of MMS campaign to update 
     - parameter campaign: (body) MmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignsByMmsCampaignIdPut(mmsCampaignId: Int, campaign: MmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignsByMmsCampaignIdPutWithRequestBuilder(mmsCampaignId: mmsCampaignId, campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update mms campaign
     - PUT /mms-campaigns/{mms_campaign_id}
     - Update mms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter mmsCampaignId: (path) ID of MMS campaign to update 
     - parameter campaign: (body) MmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignsByMmsCampaignIdPutWithRequestBuilder(mmsCampaignId: Int, campaign: MmsCampaign) -> RequestBuilder<String> {
        var path = "/mms-campaigns/{mms_campaign_id}"
        let mmsCampaignIdPreEscape = "\(mmsCampaignId)"
        let mmsCampaignIdPostEscape = mmsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{mms_campaign_id}", with: mmsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Cancel mms campaign
     
     - parameter mmsCampaignId: (path) ID of MMS Campaign to cancel 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignsCancelByMmsCampaignIdPut(mmsCampaignId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignsCancelByMmsCampaignIdPutWithRequestBuilder(mmsCampaignId: mmsCampaignId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Cancel mms campaign
     - PUT /mms-campaigns/{mms_campaign_id}/cancel
     - Cancel sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter mmsCampaignId: (path) ID of MMS Campaign to cancel 

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignsCancelByMmsCampaignIdPutWithRequestBuilder(mmsCampaignId: Int) -> RequestBuilder<String> {
        var path = "/mms-campaigns/{mms_campaign_id}/cancel"
        let mmsCampaignIdPreEscape = "\(mmsCampaignId)"
        let mmsCampaignIdPostEscape = mmsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{mms_campaign_id}", with: mmsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = ClickSendClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of mms campaigns
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of mms campaigns
     - GET /mms-campaigns
     - Get list of mms campaigns
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/mms-campaigns"
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
     Calculate price for mms campaign
     
     - parameter campaign: (body) MmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignsPricePost(campaign: MmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignsPricePostWithRequestBuilder(campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate price for mms campaign
     - POST /mms-campaigns/price
     - Calculate price for sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter campaign: (body) MmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignsPricePostWithRequestBuilder(campaign: MmsCampaign) -> RequestBuilder<String> {
        let path = "/mms-campaigns/price"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create mms campaign
     
     - parameter campaign: (body) MmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mmsCampaignsSendPost(campaign: MmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        mmsCampaignsSendPostWithRequestBuilder(campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create mms campaign
     - POST /mms-campaigns/send
     - Create mms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]
     
     - parameter campaign: (body) MmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func mmsCampaignsSendPostWithRequestBuilder(campaign: MmsCampaign) -> RequestBuilder<String> {
        let path = "/mms-campaigns/send"
        let URLString = ClickSendClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClickSendClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
