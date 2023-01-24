import Foundation

/// 프로퍼티의 값을 대문자로 지정
@propertyWrapper
struct UpperCased {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue value: String) {
        self.wrappedValue = value
    }
}

/// 프로퍼티의 값을 소문자로 지정
@propertyWrapper
struct LowerCased {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.lowercased() }
    }
    
    init(wrappedValue value: String) {
        self.wrappedValue = value
    }
}
