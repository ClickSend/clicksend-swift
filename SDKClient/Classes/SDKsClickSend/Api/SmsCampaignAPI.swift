//
// SmsCampaignAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SmsCampaignAPI {
    /**
     Get specific sms campaign
     
     - parameter smsCampaignId: (path) ID of SMS campaign to retrieve 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignBySmsCampaignIdGet(smsCampaignId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignBySmsCampaignIdGetWithRequestBuilder(smsCampaignId: smsCampaignId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get specific sms campaign
     - GET /sms-campaigns/{sms_campaign_id}
     - Get specific sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsCampaignId: (path) ID of SMS campaign to retrieve 

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignBySmsCampaignIdGetWithRequestBuilder(smsCampaignId: Int) -> RequestBuilder<String> {
        var path = "/sms-campaigns/{sms_campaign_id}"
        let smsCampaignIdPreEscape = "\(smsCampaignId)"
        let smsCampaignIdPostEscape = smsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sms_campaign_id}", with: smsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update sms campaign
     
     - parameter smsCampaignId: (path) ID of SMS campaign to update 
     - parameter campaign: (body) SmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignsBySmsCampaignIdPut(smsCampaignId: Int, campaign: SmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignsBySmsCampaignIdPutWithRequestBuilder(smsCampaignId: smsCampaignId, campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update sms campaign
     - PUT /sms-campaigns/{sms_campaign_id}
     - Update sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsCampaignId: (path) ID of SMS campaign to update 
     - parameter campaign: (body) SmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignsBySmsCampaignIdPutWithRequestBuilder(smsCampaignId: Int, campaign: SmsCampaign) -> RequestBuilder<String> {
        var path = "/sms-campaigns/{sms_campaign_id}"
        let smsCampaignIdPreEscape = "\(smsCampaignId)"
        let smsCampaignIdPostEscape = smsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sms_campaign_id}", with: smsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Cancel sms campaign
     
     - parameter smsCampaignId: (path) ID of SMS Campaign to cancel 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignsCancelBySmsCampaignIdPut(smsCampaignId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignsCancelBySmsCampaignIdPutWithRequestBuilder(smsCampaignId: smsCampaignId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Cancel sms campaign
     - PUT /sms-campaigns/{sms_campaign_id}/cancel
     - Cancel sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter smsCampaignId: (path) ID of SMS Campaign to cancel 

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignsCancelBySmsCampaignIdPutWithRequestBuilder(smsCampaignId: Int) -> RequestBuilder<String> {
        var path = "/sms-campaigns/{sms_campaign_id}/cancel"
        let smsCampaignIdPreEscape = "\(smsCampaignId)"
        let smsCampaignIdPostEscape = smsCampaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sms_campaign_id}", with: smsCampaignIdPostEscape, options: .literal, range: nil)
        let URLString = SDKClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of sms campaigns
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignsGet(page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignsGetWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of sms campaigns
     - GET /sms-campaigns
     - Get list of sms campaigns
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter page: (query) Page number (optional, default to 1)
     - parameter limit: (query) Number of records per page (optional, default to 10)

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignsGetWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<String> {
        let path = "/sms-campaigns"
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
     Calculate price for sms campaign
     
     - parameter campaign: (body) SmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignsPricePost(campaign: SmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignsPricePostWithRequestBuilder(campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Calculate price for sms campaign
     - POST /sms-campaigns/price
     - Calculate price for sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter campaign: (body) SmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignsPricePostWithRequestBuilder(campaign: SmsCampaign) -> RequestBuilder<String> {
        let path = "/sms-campaigns/price"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create sms campaign
     
     - parameter campaign: (body) SmsCampaign model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func smsCampaignsSendPost(campaign: SmsCampaign, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        smsCampaignsSendPostWithRequestBuilder(campaign: campaign).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create sms campaign
     - POST /sms-campaigns/send
     - Create sms campaign
     - BASIC:
       - type: basic
       - name: BasicAuth
     - examples: [{contentType=application/json, example=""}]
     
     - parameter campaign: (body) SmsCampaign model 

     - returns: RequestBuilder<String> 
     */
    open class func smsCampaignsSendPostWithRequestBuilder(campaign: SmsCampaign) -> RequestBuilder<String> {
        let path = "/sms-campaigns/send"
        let URLString = SDKClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: campaign)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SDKClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
