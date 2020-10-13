import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "todos_1"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String
    
    @Field(key: "completed")
    var completed: Bool

    init() { }

    init(id: UUID? = nil, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }
}
