@objc(YandexLogin)
class YandexLogin: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }
    
    @objc(activate:)
    func activate(appId: String) -> Void {
        do {
            try YXLSdk.shared.activate(withAppId: appId)
        } catch {
            // process error
        }
    }
}
