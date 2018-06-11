import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example

    
    router.get("qwe") { req in
        return"qwe address line"
    }
    
    router.get("send") { req -> Message in
        let msg = Message(id: UUID(), username: "@twostraws", content: "Hello, world!", date: Date())
        return msg
    }
    
    router.get("hello", String.parameter) { req -> String  in
        
        let name = try req.parameters.next(String.self)
        
        return "Hello, \(name)"
    }
}
