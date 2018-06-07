
import NJKit

extension NJMediator {
    
    public func DYTrends_MainController() -> UIViewController? {
        let target = "Trends"
        let action = "viewController"
        return self.perform(target: target, action: action, params: nil, shouldCacheTarget: false) as? UIViewController
    }
}
