import Foundation

extension Environment {
    static let global: Environment = {
        
        let clock = BuiltIn(arity: 0, body: { _ -> Literal in
            return .number(CFAbsoluteTimeGetCurrent())
        })
        
        return Environment(parent: nil)
        .defining(name: "clock", value: .function(clock))
    }()
}
