/**
* This file is part of the Wheeler programming-language which
* was started on 03.01.2021 by Timo Sarkar and is beeing mantained
* since, frequently. The Wheeler programming language is licensed 
* under the CC0 1.0 Universal License.
*/
import Foundation

public final class WheelerMain {
    public final class Logger {
        public var output: ( String ) -> Void
        public var input:  ( String ) -> Void
    }
}

/* tokenizer */
enum TokenType {
    /* trying to fix this part soon */
    case LeftParen, RightParen
    case LeftBrace, RightBrace
    
    case comma
    case dot
    case minus
    case plus
    case semicolon
    case slash
    case star

    case bang, bangEqual
    case equal, equalEqual
    case greater, greaterEqual
    case less, lessEqual
  
    case identifier
    case string
    case number
    case and

    case Break
    case eof
}

struct Token: CustomStringConvertible {
    let type: TokenType
    let lexeme: String
    let literal: Any?
    let line: Int

    init( type: TokenType, lexeme: String, literal: Any? = nil, line: Int ) {
        self.type = type
        self.lexeme = lexeme
        self.literal = literal
        self.line = line
    }

    var description: String {
        let literalText: String
        if let literal = literal {
            literalText = " -> '\( literal )'"
        } else {
            literalText = ""
        }
        return "\( type ): '\( lexeme )'\( literalText )"
    }
}
