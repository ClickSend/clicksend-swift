# The official swift library for ClickSend v3 REST API

This is the official [ClickSend](https://clicksend.com) SDK. Documentation can be found [here](https://developers.clicksend.com/docs/rest/v3/?swift#introduction).

## Requirements
  
- [Sign Up](https://www.clicksend.com/signup) for a free ClickSend account.
- Copy your API key from the [API Credentials](https://dashboard.clicksend.com/#/account/subaccount) area.

## Installation

Put the package under your project folder and add the following in import:
```
    "./clicksend-swift"
```

## Documentation

Documentation for our SDK and REST API can be found [here](https://developers.clicksend.com/docs/rest/v3/?swift#introduction).

## Getting Started (sms/send example)

Please follow the [installation](#installation) procedure and then run the following code:
```
import Alamofire

if let authHeader = Request.authorizationHeader(user: "USERNAME", password: "PASSWORD") {
    SDKClientAPI.customHeaders = [authHeader.key : authHeader.value]
}

let message = SmsMessage(from: "sendmobile", 
                        body: "Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.", 
                        to: "+0451111111", 
                        source: "swift", 
                        schedule: nil, 
                        customString: nil,
                        listId: nil, 
                        country: nil, 
                        fromEmail: nil)

let smsCollection = SmsMessageCollection(messages: [message])
SMSAPI.smsSendPost(smsMessages: smsCollection) { (dataString, error) in

    guard let dataString = dataString else {
        print(error!)
        return
    }

    if let data = dataString.data(using: String.Encoding.utf8) {
        do {
            if let dictonary = try (JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary) {
                print(dictonary)
            } else {
                print("bad json")
            }
        } catch let error as NSError {
            print(error)
        }
    }
}
```

