# The official swift library for ClickSend v3 REST API

This is the official [ClickSend](https://clicksend.com) SDK. Documentation can be found [here](https://developers.clicksend.com/docs/rest/v3/?swift#introduction).

## Requirements
  
- [Sign Up](https://www.clicksend.com/signup) for a free ClickSend account.
- Copy your API key from the [API Credentials](https://dashboard.clicksend.com/#/account/subaccount) area.

## Installation

### Manual
You can integrate ClicksendSwift into your project manually.

 1. Open up Terminal, cd into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:
Open Terminal
`git init`
2. Add ClickSend-swift as a git submodule by running the following command:
 git submodule add https://github.com/ClickSend/clicksend-swift.git
3. Next, go inside the submodule directory "clicksend-swift" and Drag "ClickSendClient" folder inside your project
4. Lastly, Install Alamofire using Cocoapods
    1. CocoapodsCocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your Podfile:
        1. Open up Terminal, cd into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:
        2. Open Terminal
        3. `pod init`
        4. Podfile will be generated and inside that Podfile add 
        5. pod 'Alamofire', '~> 4.9.1' and save
        6. Go back to Terminal and run `pod install`
    2. After installing Alamofire sing cocoapods, make sure to Open the Project using "project_name.xcworkspace"
5. Congrats, You are good to go!

### Cocoapods

CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your Podfile:
pod 'ClickSendSwift'

## Documentation

Documentation for our SDK and REST API can be found [here](https://developers.clicksend.com/docs/rest/v3/?swift#introduction).

## Getting Started (sms/send example)

Please follow the [installation](#installation) procedure and then run the following code:
```
import Alamofire

if let authHeader = Request.authorizationHeader(user: "USERNAME", password: "PASSWORD") {
    ClickSendClientAPI.customHeaders = [authHeader.key : authHeader.value]
}

let message1 = SmsMessage(
        body: "Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.", 
        to: "+0451111111", 
        source: "swift"
)

let message2 = SmsMessage(
        body: "Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.", 
        source: "swift", 
        listId: 1234
)

let smsCollection = SmsMessageCollection(messages: [message1, message2])
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

