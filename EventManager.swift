struct EventManager {
    static func track(_ event: Event) {
        var attributes = [String: Any]()
        for attribute in event.attributes {
            if let attribute = attribute {
                attributes.addEventAttribute(attribute)
            }
        }
        // push to desired analytics library which usually takes 2 params
        // param1: event name - event.name
        // param2: attribute dictionary - attributes
    }
    
    static func trackPerson(with name: String, age: Int, gender: Gender) {
        var attributes = [AttributeSetOne]()
        attributes.append(AttributeSetOne.name(name))
        attributes.append(AttributeSetOne.age(age))
        attributes.append(AttributeSetOne.gender(gender))
        let event = Event(name: .person, attributes: attributes)
        track(event)
    }
    
    static func trackOrder(with amount: Float, units: Float) {
        var attributes = [AttributeSetTwo]()
        attributes.append(AttributeSetTwo.amount(amount))
        attributes.append(AttributeSetTwo.unitsAlloted(units))
        let event = Event(name: .order, attributes: attributes)
        track(event)
    }
}
