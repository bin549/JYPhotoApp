import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "person.crop.square")
        vc1.title = "首页"
        vc2.title = "最新上映"
        vc3.title = "搜索结果"
        vc4.title = "个人中心"
        tabBar.tintColor = .label
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
}
