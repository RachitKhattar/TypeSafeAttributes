enum AttributeSetOne: EventAttributeProtocol {
    case name(String)
    case gender(Gender)
    case age(Int)
    
    var title: String {
        switch self {
        case .name(_):
            return "Name"
        case .gender(_):
            return "Gender"
        case .age(_):
            return "Age"
        }
    }
    
    var value: Any {
        switch self {
        case .name(let value):
            return value
        case .gender(let value):
            return value.rawValue
        case .age(let value):
            return value
        }
    }
}
