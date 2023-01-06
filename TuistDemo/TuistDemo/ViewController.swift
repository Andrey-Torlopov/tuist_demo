import UIKit
//import PodA
//import ScreenA

class ViewController: UIViewController {

    private lazy var button: UIButton = {
        $0.setTitle("Push", for: .normal)
        $0.setTitleColor(.red, for: .normal)
        $0.addTarget(self, action: #selector(buttonHandle), for: .touchUpInside)
        return $0
    }(UIButton(type: .system))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        test()
    }
    
    private func configure() {
        view.backgroundColor = .gray
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func test() {
        print(#function)
//        let a = Foo()
//        a.foo()
    }
    // MARK: - Handle
    
    @objc private func buttonHandle() {
        print(#function)
//        let vc = ScreenViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
    }
}
