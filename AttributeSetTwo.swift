enum AttributeSetTwo: EventAttributeProtocol {
    case amount(Float)
    case unitsAlloted(Float)
    
    var title: String {
        switch self {
        case .amount(_):
            return "Amount"
        case .unitsAlloted(_):
            return "Units Alloted"
        }
    }
    
    var value: Any {
        switch self {
        case .amount(let value):
            return value
        case .unitsAlloted(let value):
            return value
        }
    }
}
