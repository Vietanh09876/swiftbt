
import UIKit

class RegisterViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var starcityimage: UIImageView!
    
    @IBOutlet weak var backimage: UIImageView!
    
    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var sdtfield: UITextField!
    
    @IBOutlet weak var mkfield: UITextField!
    
    @IBOutlet weak var registerbutton: UIButton!
    
    @IBOutlet weak var hotlinelabel: UILabel!
   
    @IBOutlet weak var warninglabel: UILabel!
    
    var hotlinemutablestring = NSMutableAttributedString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        
        starcityimage.image = UIImage(named: "starcity")
        starcityimage.center = CGPoint(x: view.center.x, y: view.center.y-200)
        
        backimage.isUserInteractionEnabled = true
        backimage.image = UIImage(systemName: "arrow.backward")
        backimage.tintColor = UIColor(red: 0.33, green: 0.58, blue: 0.53, alpha: 1.00)
        backimage.frame.size = CGSize(width: 30, height: 100)
        backimage.frame.origin = CGPoint(x: 15, y: 44)
        
        sdtfield.frame.size = CGSize(width: 300, height: sdtfield.frame.size.height+10)
        sdtfield.center = CGPoint(x: view.center.x, y: view.center.y-10)
        sdtfield.attributedPlaceholder = NSAttributedString(string: "Số điện thoại",attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        sdtfield.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        sdtfield.keyboardType = .phonePad
        
        namefield.frame.size = CGSize(width: 300, height: namefield.frame.size.height+10)
        namefield.center = CGPoint(x: view.center.x, y: sdtfield.center.y-60)
        namefield.attributedPlaceholder = NSAttributedString(string: "Họ & tên",attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        namefield.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        
        
        
        mkfield.frame.size = CGSize(width: 300, height: mkfield.frame.size.height+10)
        mkfield.center = CGPoint(x: view.center.x, y: sdtfield.center.y+60)
        mkfield.attributedPlaceholder = NSAttributedString(string: "Mật khẩu",attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        mkfield.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        mkfield.isSecureTextEntry = true
        
        registerbutton.frame.size = CGSize(width: 150, height: 44)
        registerbutton.center = CGPoint (x: mkfield.center.x+75, y: mkfield.center.y+60)
        registerbutton.backgroundColor = UIColor(red: 0.33, green: 0.58, blue: 0.53, alpha: 1.00)
        registerbutton.setTitle("Đăng ký", for: .normal)
        registerbutton.setTitleColor(.white, for: .normal)
        registerbutton.titleLabel?.textAlignment = .center
        registerbutton.layer.cornerRadius = 2
        registerbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        hotlinemutablestring = NSMutableAttributedString(string: "HotLine: 1800.1186", attributes: nil)
        hotlinemutablestring.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 0.33, green: 0.58, blue: 0.53, alpha: 1.00), range: NSRange(location: 8, length: 10))
        
        hotlinelabel.frame.size = CGSize(width: 200, height: hotlinelabel.frame.size.height)
        hotlinelabel.textAlignment = .center
        hotlinelabel.attributedText = hotlinemutablestring
        hotlinelabel.center.x = view.center.x
        
        warninglabel.frame.size = CGSize(width: 300, height: warninglabel.frame.size.height)
        warninglabel.textAlignment = .center
        warninglabel.textColor = .red
        warninglabel.text = ""
        warninglabel.center = CGPoint(x: view.center.x, y: registerbutton.center.y+60)
    }
    

    @IBAction func pressback(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressregister(_ sender: Any) {
        let name = namefield.text!
        let phone = sdtfield.text!
        let mk = mkfield.text!
        if name == "" || phone == "" || mk == "" {
            warninglabel.text = "Bạn chưa điền đủ thông tin"
            return
        }
        else {
            return
        }
        
    }
}
