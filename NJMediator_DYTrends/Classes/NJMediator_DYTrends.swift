
import NJMediator

fileprivate let kMediator_Target_NameSpace = "DYTrends"

fileprivate let kMediator_Target_Trends = "Trends"

fileprivate let kMediator_Action_NativeFetchTrendsMainViewController = "mainViewControllerWithParams:"

extension NJMediator {
    //        (lldb) po #selector(nj_backBtnClick(btn:))
    //        nj_backBtnClickWithBtn:
    public func Mediator_DYTrends_MainController() -> UIViewController? {

        let result = self.perform(nameSpace: kMediator_Target_NameSpace, target: kMediator_Target_Trends, action: kMediator_Action_NativeFetchTrendsMainViewController, params: nil, shouldCacheTarget: true)

        return result as? UIViewController
        
//        scheme://[nameSpace].[target]/[action]?[params]
//        let action = "mainViewControllerWithParams_"
//        let url = URL.init(string: "https://\(nameSpace).\(target)/\(action)?a=1&b=3&id=123456789")!
//        return self.perform(url: url, completion: { (dict) in
//            print(dict)
//        }) as? UIViewController
        
    }
}
