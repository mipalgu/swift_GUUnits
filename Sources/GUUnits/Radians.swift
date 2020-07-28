/*
* Radians.swift
* GUUnits
*
* Created by Callum McColl on 05/06/2019.
* Copyright © 2019 Callum McColl. All rights reserved.
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

import CGUUnits

public struct Radians {

    enum InternalRepresentation {    
        
        case Int8(_ value: Int8)
        
        case Int16(_ value: Int16)
        
        case Int32(_ value: Int32)
        
        case Int64(_ value: Int64)
        
        case Int(_ value: Int)
        
        case UInt8(_ value: UInt8)
        
        case UInt16(_ value: UInt16)
        
        case UInt32(_ value: UInt32)
        
        case UInt64(_ value: UInt64)
        
        case UInt(_ value: UInt)
        
        case Float(_ value: Float)
        
        case Double(_ value: Double)
    
    }

    internal let internalRepresentation: InternalRepresentation

    public var toDegrees: Degrees {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Degrees(rad_t_to_deg_d(i8_to_rad_t(value)))
        case .Int16(let value):
            return Degrees(rad_t_to_deg_d(i16_to_rad_t(value)))
        case .Int32(let value):
            return Degrees(rad_t_to_deg_d(i32_to_rad_t(value)))
        case .Int64(let value):
            return Degrees(rad_t_to_deg_d(i64_to_rad_t(value)))
        case .Int(let value):
            return Degrees(rad_t_to_deg_d(i_to_rad_t(CInt(value))))
        case .UInt8(let value):
            return Degrees(rad_u_to_deg_d(u8_to_rad_u(value)))
        case .UInt16(let value):
            return Degrees(rad_u_to_deg_d(u16_to_rad_u(value)))
        case .UInt32(let value):
            return Degrees(rad_u_to_deg_d(u32_to_rad_u(value)))
        case .UInt64(let value):
            return Degrees(rad_u_to_deg_d(u64_to_rad_u(value)))
        case .UInt(let value):
            return Degrees(rad_u_to_deg_d(u_to_rad_u(CUnsignedInt(value))))
        case .Float(let value):
            return Degrees(rad_f_to_deg_d(f_to_rad_f(value)))
        case .Double(let value):
            return Degrees(rad_d_to_deg_d(d_to_rad_d(value)))
        }
    }

    public var toInt8: Int8 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Int8(value)
        case .Int16(let value):
            return Int8(value)
        case .Int32(let value):
            return Int8(value)
        case .Int64(let value):
            return Int8(value)
        case .Int(let value):
            return Int8(value)
        case .UInt8(let value):
            return Int8(value)
        case .UInt16(let value):
            return Int8(value)
        case .UInt32(let value):
            return Int8(value)
        case .UInt64(let value):
            return Int8(value)
        case .UInt(let value):
            return Int8(value)
        case .Float(let value):
            return Int8(value)
        case .Double(let value):
            return Int8(value)
        }
    }
    
    public var toInt16: Int16 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Int16(value)
        case .Int16(let value):
            return Int16(value)
        case .Int32(let value):
            return Int16(value)
        case .Int64(let value):
            return Int16(value)
        case .Int(let value):
            return Int16(value)
        case .UInt8(let value):
            return Int16(value)
        case .UInt16(let value):
            return Int16(value)
        case .UInt32(let value):
            return Int16(value)
        case .UInt64(let value):
            return Int16(value)
        case .UInt(let value):
            return Int16(value)
        case .Float(let value):
            return Int16(value)
        case .Double(let value):
            return Int16(value)
        }
    }
    
    public var toInt32: Int32 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Int32(value)
        case .Int16(let value):
            return Int32(value)
        case .Int32(let value):
            return Int32(value)
        case .Int64(let value):
            return Int32(value)
        case .Int(let value):
            return Int32(value)
        case .UInt8(let value):
            return Int32(value)
        case .UInt16(let value):
            return Int32(value)
        case .UInt32(let value):
            return Int32(value)
        case .UInt64(let value):
            return Int32(value)
        case .UInt(let value):
            return Int32(value)
        case .Float(let value):
            return Int32(value)
        case .Double(let value):
            return Int32(value)
        }
    }
    
    public var toInt64: Int64 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Int64(value)
        case .Int16(let value):
            return Int64(value)
        case .Int32(let value):
            return Int64(value)
        case .Int64(let value):
            return Int64(value)
        case .Int(let value):
            return Int64(value)
        case .UInt8(let value):
            return Int64(value)
        case .UInt16(let value):
            return Int64(value)
        case .UInt32(let value):
            return Int64(value)
        case .UInt64(let value):
            return Int64(value)
        case .UInt(let value):
            return Int64(value)
        case .Float(let value):
            return Int64(value)
        case .Double(let value):
            return Int64(value)
        }
    }
    
    public var toInt: Int {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Int(value)
        case .Int16(let value):
            return Int(value)
        case .Int32(let value):
            return Int(value)
        case .Int64(let value):
            return Int(value)
        case .Int(let value):
            return Int(value)
        case .UInt8(let value):
            return Int(value)
        case .UInt16(let value):
            return Int(value)
        case .UInt32(let value):
            return Int(value)
        case .UInt64(let value):
            return Int(value)
        case .UInt(let value):
            return Int(value)
        case .Float(let value):
            return Int(value)
        case .Double(let value):
            return Int(value)
        }
    }
    
    public var toUInt8: UInt8 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return UInt8(value)
        case .Int16(let value):
            return UInt8(value)
        case .Int32(let value):
            return UInt8(value)
        case .Int64(let value):
            return UInt8(value)
        case .Int(let value):
            return UInt8(value)
        case .UInt8(let value):
            return UInt8(value)
        case .UInt16(let value):
            return UInt8(value)
        case .UInt32(let value):
            return UInt8(value)
        case .UInt64(let value):
            return UInt8(value)
        case .UInt(let value):
            return UInt8(value)
        case .Float(let value):
            return UInt8(value)
        case .Double(let value):
            return UInt8(value)
        }
    }
    
    public var toUInt16: UInt16 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return UInt16(value)
        case .Int16(let value):
            return UInt16(value)
        case .Int32(let value):
            return UInt16(value)
        case .Int64(let value):
            return UInt16(value)
        case .Int(let value):
            return UInt16(value)
        case .UInt8(let value):
            return UInt16(value)
        case .UInt16(let value):
            return UInt16(value)
        case .UInt32(let value):
            return UInt16(value)
        case .UInt64(let value):
            return UInt16(value)
        case .UInt(let value):
            return UInt16(value)
        case .Float(let value):
            return UInt16(value)
        case .Double(let value):
            return UInt16(value)
        }
    }
    
    public var toUInt32: UInt32 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return UInt32(value)
        case .Int16(let value):
            return UInt32(value)
        case .Int32(let value):
            return UInt32(value)
        case .Int64(let value):
            return UInt32(value)
        case .Int(let value):
            return UInt32(value)
        case .UInt8(let value):
            return UInt32(value)
        case .UInt16(let value):
            return UInt32(value)
        case .UInt32(let value):
            return UInt32(value)
        case .UInt64(let value):
            return UInt32(value)
        case .UInt(let value):
            return UInt32(value)
        case .Float(let value):
            return UInt32(value)
        case .Double(let value):
            return UInt32(value)
        }
    }
    
    public var toUInt64: UInt64 {
        switch self.internalRepresentation {
        case .Int8(let value):
            return UInt64(value)
        case .Int16(let value):
            return UInt64(value)
        case .Int32(let value):
            return UInt64(value)
        case .Int64(let value):
            return UInt64(value)
        case .Int(let value):
            return UInt64(value)
        case .UInt8(let value):
            return UInt64(value)
        case .UInt16(let value):
            return UInt64(value)
        case .UInt32(let value):
            return UInt64(value)
        case .UInt64(let value):
            return UInt64(value)
        case .UInt(let value):
            return UInt64(value)
        case .Float(let value):
            return UInt64(value)
        case .Double(let value):
            return UInt64(value)
        }
    }
    
    public var toUInt: UInt {
        switch self.internalRepresentation {
        case .Int8(let value):
            return UInt(value)
        case .Int16(let value):
            return UInt(value)
        case .Int32(let value):
            return UInt(value)
        case .Int64(let value):
            return UInt(value)
        case .Int(let value):
            return UInt(value)
        case .UInt8(let value):
            return UInt(value)
        case .UInt16(let value):
            return UInt(value)
        case .UInt32(let value):
            return UInt(value)
        case .UInt64(let value):
            return UInt(value)
        case .UInt(let value):
            return UInt(value)
        case .Float(let value):
            return UInt(value)
        case .Double(let value):
            return UInt(value)
        }
    }
    
    public var toFloat: Float {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Float(value)
        case .Int16(let value):
            return Float(value)
        case .Int32(let value):
            return Float(value)
        case .Int64(let value):
            return Float(value)
        case .Int(let value):
            return Float(value)
        case .UInt8(let value):
            return Float(value)
        case .UInt16(let value):
            return Float(value)
        case .UInt32(let value):
            return Float(value)
        case .UInt64(let value):
            return Float(value)
        case .UInt(let value):
            return Float(value)
        case .Float(let value):
            return Float(value)
        case .Double(let value):
            return Float(value)
        }
    }
    
    public var toDouble: Double {
        switch self.internalRepresentation {
        case .Int8(let value):
            return Double(value)
        case .Int16(let value):
            return Double(value)
        case .Int32(let value):
            return Double(value)
        case .Int64(let value):
            return Double(value)
        case .Int(let value):
            return Double(value)
        case .UInt8(let value):
            return Double(value)
        case .UInt16(let value):
            return Double(value)
        case .UInt32(let value):
            return Double(value)
        case .UInt64(let value):
            return Double(value)
        case .UInt(let value):
            return Double(value)
        case .Float(let value):
            return Double(value)
        case .Double(let value):
            return Double(value)
        }
    }

    public init(_ value: Int8) {
        self.internalRepresentation = .Int8(value)
    }
    
    public init(_ value: Int16) {
        self.internalRepresentation = .Int16(value)
    }
    
    public init(_ value: Int32) {
        self.internalRepresentation = .Int32(value)
    }
    
    public init(_ value: Int64) {
        self.internalRepresentation = .Int64(value)
    }
    
    public init(_ value: Int) {
        self.internalRepresentation = .Int(value)
    }
    
    public init(_ value: UInt8) {
        self.internalRepresentation = .UInt8(value)
    }
    
    public init(_ value: UInt16) {
        self.internalRepresentation = .UInt16(value)
    }
    
    public init(_ value: UInt32) {
        self.internalRepresentation = .UInt32(value)
    }
    
    public init(_ value: UInt64) {
        self.internalRepresentation = .UInt64(value)
    }
    
    public init(_ value: UInt) {
        self.internalRepresentation = .UInt(value)
    }
    
    public init(_ value: Float) {
        self.internalRepresentation = .Float(value)
    }
    
    public init(_ value: Double) {
        self.internalRepresentation = .Double(value)
    }

    public init(_ value: Degrees) {
        switch value.internalRepresentation {
        case .Int8(let value):
            self.internalRepresentation = .Double(deg_t_to_rad_d(i8_to_deg_t(value)))
        case .Int16(let value):
            self.internalRepresentation = .Double(deg_t_to_rad_d(i16_to_deg_t(value)))
        case .Int32(let value):
            self.internalRepresentation = .Double(deg_t_to_rad_d(i32_to_deg_t(value)))
        case .Int64(let value):
            self.internalRepresentation = .Double(deg_t_to_rad_d(i64_to_deg_t(value)))
        case .Int(let value):
            self.internalRepresentation = .Double(deg_t_to_rad_d(i_to_deg_t(CInt(value))))
        case .UInt8(let value):
            self.internalRepresentation = .Double(deg_u_to_rad_d(u8_to_deg_u(value)))
        case .UInt16(let value):
            self.internalRepresentation = .Double(deg_u_to_rad_d(u16_to_deg_u(value)))
        case .UInt32(let value):
            self.internalRepresentation = .Double(deg_u_to_rad_d(u32_to_deg_u(value)))
        case .UInt64(let value):
            self.internalRepresentation = .Double(deg_u_to_rad_d(u64_to_deg_u(value)))
        case .UInt(let value):
            self.internalRepresentation = .Double(deg_u_to_rad_d(u_to_deg_u(CUnsignedInt(value))))
        case .Float(let value):
            self.internalRepresentation = .Double(deg_f_to_rad_d(f_to_deg_f(value)))
        case .Double(let value):
            self.internalRepresentation = .Double(deg_d_to_rad_d(d_to_deg_d(value)))
        }
    }

}