extension Dictionary where Key == String, Value == Any {
    mutating func addEventAttribute(_ attribute: EventAttributeProtocol) {
        self[attribute.title] = attribute.value
    }
}
