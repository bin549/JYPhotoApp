import UIKit

class CustomTextField: UITextField {
    enum CustomTextFieldType {
        case username
        case email
        case password
    }
    
    private let authFieldType: CustomTextFieldType
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        self.backgroundColor = .secondarySystemBackground
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 10
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.leftViewMode = .always
//        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: self.frame.size.height))
        
        let imageView = UIImageView()
        let usernameImage = UIImage(named: "user")
        let emailImage = UIImage(named: "mail")
        let passwordImage = UIImage(named: "lock")
        switch fieldType {
        case .username:
            self.placeholder = "用户名"
            imageView.image = usernameImage
        case .email:
            self.placeholder = "邮箱"
            imageView.image = emailImage
            self.keyboardType = .emailAddress
            self.textContentType = .emailAddress
        case .password:
            self.placeholder = "密码"
            imageView.image = passwordImage
            self.textContentType = .oneTimeCode
            self.isSecureTextEntry = true
        }
        imageView.frame = CGRect(x:5, y:0, width: self.frame.width, height: self.frame.height)
        self.leftView = imageView
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
