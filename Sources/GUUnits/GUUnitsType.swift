/*
 * GUUnitsType.swift 
 * GUUnits 
 *
 * Created by Callum McColl on 29/07/2020.
 * Copyright © 2020 Callum McColl. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials
 *    provided with the distribution.
 *
 * 3. All advertising materials mentioning features or use of this
 *    software must display the following acknowledgement:
 *
 *        This product includes software developed by Callum McColl.
 *
 * 4. Neither the name of the author nor the names of contributors
 *    may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * -----------------------------------------------------------------------
 * This program is free software; you can redistribute it and/or
 * modify it under the above terms or under the terms of the GNU
 * General Public License as published by the Free Software Foundation;
 * either version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see http://www.gnu.org/licenses/
 * or write to the Free Software Foundation, Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA  02110-1301, USA.
 *
 */

public protocol GUUnitsType {

    associatedtype RawValue

    var rawValue: RawValue { get }

    init(rawValue: RawValue)

}

extension GUUnitsType where Self: CVarArg, Self.RawValue: CVarArg {
    
    public var _cVarArgEncoding: [Int] {
        self.rawValue._cVarArgEncoding
    }
    
}

extension GUUnitsType where Self: CustomReflectable, Self.RawValue: CustomReflectable {
    
    public var customMirror: Mirror {
        return self.rawValue.customMirror
    }
    
}

extension GUUnitsType where Self: Decodable, Self.RawValue: Decodable {
    
    public init(from decoder: Decoder) throws {
        self.init(rawValue: try RawValue(from: decoder))
    }
    
}

extension GUUnitsType where Self: Encodable, Self.RawValue: Encodable {
    
    public func encode(to encoder: Encoder) throws {
        return try self.rawValue.encode(to: encoder)
    }
    
}

extension GUUnitsType where Self: Hashable, Self.RawValue: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        self.rawValue.hash(into: &hasher)
    }
    
}

/*
extension GUUnitsType where Self: AdditiveArithmetic, Self.RawValue: AdditiveArithmetic {

    public static func +(lhs: Self, rhs: Self) -> Self {
        return Self(rawValue: lhs.rawValue + rhs.rawValue)
    }

    public static func - (lhs: Self, rhs: Self) -> Self {
        return Self(rawValue: lhs.rawValue - rhs.rawValue)
    }
    
}

extension GUUnitsType where Self: Numeric, Self.RawValue: Numeric {
    
    public typealias Magnitude = Self

    public static func * (lhs: Self, rhs: Self) -> Self {
        return Self(rawValue: lhs.rawValue * rhs.rawValue)
    }

    public static func *= (lhs: inout Self, rhs: Self) {
        var raw = lhs.rawValue
        raw *= rhs.rawValue
        lhs = Self(rawValue: raw)
    }
    
}

extension GUUnitsType where Self: FloatingPoint, Self.RawValue: FloatingPoint {
    
    public typealias Exponent = RawValue.Exponent
    
}

extension GUUnitsType where Self: ExpressibleByIntegerLiteral, Self.RawValue: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: RawValue.IntegerLiteralType) {
        self.init(rawValue: RawValue(integerLiteral: value))
    }
    
}

extension GUUnitsType where Self: ExpressibleByFloatLiteral, Self.RawValue: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: RawValue.FloatLiteralType) {
        self.init(rawValue: RawValue(floatLiteral: value))
    }
    
}
*/
