import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return  try req.make(ViewRenderer.self).render("myView")
    }
    
    router.get("qwe") { req in
        return"qwe address line"
    }
}
