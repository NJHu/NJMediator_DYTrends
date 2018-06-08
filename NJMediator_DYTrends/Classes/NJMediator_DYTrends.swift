
import NJKit

extension NJMediator {
    
    //        (lldb) po #selector(nj_backBtnClick(btn:))
    //        nj_backBtnClickWithBtn:
    public func Mediator_DYTrends_MainController() -> UIViewController? {
        let nameSpace = "DYTrends"
        let target = "Trends"
        let action = "mainViewControllerWithParams:"
        
        

        let result = self.perform(nameSpace: nameSpace, target: target, action: action, params: nil, shouldCacheTarget: true)

        return result as? UIViewController
        
//        scheme://[nameSpace].[target]/[action]?[params]
//        let action = "mainViewControllerWithParams_"
//        let url = URL.init(string: "https://\(nameSpace).\(target)/\(action)?a=1&b=3&id=123456789")!
//        return self.perform(url: url, completion: { (dict) in
//            print(dict)
//        }) as? UIViewController
        
    }
}
