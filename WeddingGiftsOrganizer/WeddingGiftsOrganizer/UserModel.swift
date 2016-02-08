import Foundation

class UserModel {
    let name:String
    let email:String
    let username:String
    let password:String
    
    init(withName name: String, email: String, username: String, andPassword password: String) {
        self.name = name;
        self.email = email;
        self.username = username;
        self.password = password;
    }
}