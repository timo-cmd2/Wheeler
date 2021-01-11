import Foundation

/** Instantiation for classes, methods and functions in wheeler */
protocol Callable {
    var arity: Int { get }
    var description: String { get }
    
    @discardableResult
    func call(_ :[Literal]) throws -> Literal
}
