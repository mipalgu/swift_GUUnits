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

/// A signed integer type in the radians unit.
public struct Radians_t {

    public let rawValue: radians_t

    /// Create a `Radians_t` from the underlying guunits C type `radians_t`.
    public init(rawValue: radians_t) {
        self.rawValue = rawValue
    }

    /// Convert to a `Degrees_t`.
    public var toDegrees_t: Degrees_t {
        return Degrees_t(rad_t_to_deg_t(self.rawValue))
    }
    
    /// Convert to a `Degrees_u`.
    public var toDegrees_u: Degrees_u {
        return Degrees_u(rad_t_to_deg_u(self.rawValue))
    }
    
    /// Convert to a `Degrees_f`.
    public var toDegrees_f: Degrees_f {
        return Degrees_f(rad_t_to_deg_f(self.rawValue))
    }
    
    /// Convert to a `Degrees_d`.
    public var toDegrees_d: Degrees_d {
        return Degrees_d(rad_t_to_deg_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(rad_t_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(rad_t_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(rad_t_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(rad_t_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(rad_t_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(rad_t_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(rad_t_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(rad_t_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(rad_t_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(rad_t_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(rad_t_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(rad_t_to_d(self.rawValue))
    }

    /// Create a `Radians_t` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Radians_t`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Radians_t`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Radians_t`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Radians_t`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Radians_t`.
    public init(_ value: Int) {
        self.rawValue = i_to_rad_t(CInt(value))
    }
    
    /// Create a `Radians_t` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Radians_t`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Radians_t`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Radians_t`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Radians_t`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Radians_t`.
    public init(_ value: UInt) {
        self.rawValue = u_to_rad_t(CUnsignedInt(value))
    }
    
    /// Create a `Radians_t` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Radians_t`.
    public init(_ value: Float) {
        self.rawValue = f_to_rad_t(value)
    }
    
    /// Create a `Radians_t` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Radians_t`.
    public init(_ value: Double) {
        self.rawValue = d_to_rad_t(value)
    }

    /// Create a `radians_t` by converting a `Degrees_t`.
    ///
    /// - Parameter value: A `Degrees_t` value to convert to a `radians_t`.
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_rad_t(value.rawValue)
    }
    
    /// Create a `radians_t` by converting a `Degrees_u`.
    ///
    /// - Parameter value: A `Degrees_u` value to convert to a `radians_t`.
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_rad_t(value.rawValue)
    }
    
    /// Create a `radians_t` by converting a `Degrees_f`.
    ///
    /// - Parameter value: A `Degrees_f` value to convert to a `radians_t`.
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_rad_t(value.rawValue)
    }
    
    /// Create a `radians_t` by converting a `Degrees_d`.
    ///
    /// - Parameter value: A `Degrees_d` value to convert to a `radians_t`.
    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_rad_t(value.rawValue)
    }

    /// Create a `radians_t` by converting a `Radians_d`.
    ///
    /// - Parameter value: A `Radians_d` value to convert to a `radians_t`.
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_rad_t(value.rawValue)
    }
    
    /// Create a `radians_t` by converting a `Radians_f`.
    ///
    /// - Parameter value: A `Radians_f` value to convert to a `radians_t`.
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_rad_t(value.rawValue)
    }
    
    /// Create a `radians_t` by converting a `Radians_u`.
    ///
    /// - Parameter value: A `Radians_u` value to convert to a `radians_t`.
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_rad_t(value.rawValue)
    }

}

/// A unsigned integer type in the radians unit.
public struct Radians_u {

    public let rawValue: radians_u

    /// Create a `Radians_u` from the underlying guunits C type `radians_u`.
    public init(rawValue: radians_u) {
        self.rawValue = rawValue
    }

    /// Convert to a `Degrees_t`.
    public var toDegrees_t: Degrees_t {
        return Degrees_t(rad_u_to_deg_t(self.rawValue))
    }
    
    /// Convert to a `Degrees_u`.
    public var toDegrees_u: Degrees_u {
        return Degrees_u(rad_u_to_deg_u(self.rawValue))
    }
    
    /// Convert to a `Degrees_f`.
    public var toDegrees_f: Degrees_f {
        return Degrees_f(rad_u_to_deg_f(self.rawValue))
    }
    
    /// Convert to a `Degrees_d`.
    public var toDegrees_d: Degrees_d {
        return Degrees_d(rad_u_to_deg_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(rad_u_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(rad_u_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(rad_u_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(rad_u_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(rad_u_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(rad_u_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(rad_u_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(rad_u_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(rad_u_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(rad_u_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(rad_u_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(rad_u_to_d(self.rawValue))
    }

    /// Create a `Radians_u` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Radians_u`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Radians_u`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Radians_u`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Radians_u`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Radians_u`.
    public init(_ value: Int) {
        self.rawValue = i_to_rad_u(CInt(value))
    }
    
    /// Create a `Radians_u` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Radians_u`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Radians_u`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Radians_u`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Radians_u`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Radians_u`.
    public init(_ value: UInt) {
        self.rawValue = u_to_rad_u(CUnsignedInt(value))
    }
    
    /// Create a `Radians_u` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Radians_u`.
    public init(_ value: Float) {
        self.rawValue = f_to_rad_u(value)
    }
    
    /// Create a `Radians_u` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Radians_u`.
    public init(_ value: Double) {
        self.rawValue = d_to_rad_u(value)
    }

    /// Create a `radians_u` by converting a `Degrees_t`.
    ///
    /// - Parameter value: A `Degrees_t` value to convert to a `radians_u`.
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_rad_u(value.rawValue)
    }
    
    /// Create a `radians_u` by converting a `Degrees_u`.
    ///
    /// - Parameter value: A `Degrees_u` value to convert to a `radians_u`.
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_rad_u(value.rawValue)
    }
    
    /// Create a `radians_u` by converting a `Degrees_f`.
    ///
    /// - Parameter value: A `Degrees_f` value to convert to a `radians_u`.
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_rad_u(value.rawValue)
    }
    
    /// Create a `radians_u` by converting a `Degrees_d`.
    ///
    /// - Parameter value: A `Degrees_d` value to convert to a `radians_u`.
    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_rad_u(value.rawValue)
    }

    /// Create a `radians_u` by converting a `Radians_d`.
    ///
    /// - Parameter value: A `Radians_d` value to convert to a `radians_u`.
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_rad_u(value.rawValue)
    }
    
    /// Create a `radians_u` by converting a `Radians_f`.
    ///
    /// - Parameter value: A `Radians_f` value to convert to a `radians_u`.
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_rad_u(value.rawValue)
    }
    
    /// Create a `radians_u` by converting a `Radians_t`.
    ///
    /// - Parameter value: A `Radians_t` value to convert to a `radians_u`.
    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_rad_u(value.rawValue)
    }

}

/// A floating point type in the radians unit.
public struct Radians_f {

    public let rawValue: radians_f

    /// Create a `Radians_f` from the underlying guunits C type `radians_f`.
    public init(rawValue: radians_f) {
        self.rawValue = rawValue
    }

    /// Convert to a `Degrees_t`.
    public var toDegrees_t: Degrees_t {
        return Degrees_t(rad_f_to_deg_t(self.rawValue))
    }
    
    /// Convert to a `Degrees_u`.
    public var toDegrees_u: Degrees_u {
        return Degrees_u(rad_f_to_deg_u(self.rawValue))
    }
    
    /// Convert to a `Degrees_f`.
    public var toDegrees_f: Degrees_f {
        return Degrees_f(rad_f_to_deg_f(self.rawValue))
    }
    
    /// Convert to a `Degrees_d`.
    public var toDegrees_d: Degrees_d {
        return Degrees_d(rad_f_to_deg_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(rad_f_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(rad_f_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(rad_f_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(rad_f_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(rad_f_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(rad_f_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(rad_f_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(rad_f_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(rad_f_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(rad_f_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(rad_f_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(rad_f_to_d(self.rawValue))
    }

    /// Create a `Radians_f` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Radians_f`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Radians_f`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Radians_f`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Radians_f`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Radians_f`.
    public init(_ value: Int) {
        self.rawValue = i_to_rad_f(CInt(value))
    }
    
    /// Create a `Radians_f` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Radians_f`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Radians_f`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Radians_f`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Radians_f`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Radians_f`.
    public init(_ value: UInt) {
        self.rawValue = u_to_rad_f(CUnsignedInt(value))
    }
    
    /// Create a `Radians_f` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Radians_f`.
    public init(_ value: Float) {
        self.rawValue = f_to_rad_f(value)
    }
    
    /// Create a `Radians_f` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Radians_f`.
    public init(_ value: Double) {
        self.rawValue = d_to_rad_f(value)
    }

    /// Create a `radians_f` by converting a `Degrees_t`.
    ///
    /// - Parameter value: A `Degrees_t` value to convert to a `radians_f`.
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_rad_f(value.rawValue)
    }
    
    /// Create a `radians_f` by converting a `Degrees_u`.
    ///
    /// - Parameter value: A `Degrees_u` value to convert to a `radians_f`.
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_rad_f(value.rawValue)
    }
    
    /// Create a `radians_f` by converting a `Degrees_f`.
    ///
    /// - Parameter value: A `Degrees_f` value to convert to a `radians_f`.
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_rad_f(value.rawValue)
    }
    
    /// Create a `radians_f` by converting a `Degrees_d`.
    ///
    /// - Parameter value: A `Degrees_d` value to convert to a `radians_f`.
    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_rad_f(value.rawValue)
    }

    /// Create a `radians_f` by converting a `Radians_d`.
    ///
    /// - Parameter value: A `Radians_d` value to convert to a `radians_f`.
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_rad_f(value.rawValue)
    }
    
    /// Create a `radians_f` by converting a `Radians_t`.
    ///
    /// - Parameter value: A `Radians_t` value to convert to a `radians_f`.
    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_rad_f(value.rawValue)
    }
    
    /// Create a `radians_f` by converting a `Radians_u`.
    ///
    /// - Parameter value: A `Radians_u` value to convert to a `radians_f`.
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_rad_f(value.rawValue)
    }

}

/// A double type in the radians unit.
public struct Radians_d {

    public let rawValue: radians_d

    /// Create a `Radians_d` from the underlying guunits C type `radians_d`.
    public init(rawValue: radians_d) {
        self.rawValue = rawValue
    }

    /// Convert to a `Degrees_t`.
    public var toDegrees_t: Degrees_t {
        return Degrees_t(rad_d_to_deg_t(self.rawValue))
    }
    
    /// Convert to a `Degrees_u`.
    public var toDegrees_u: Degrees_u {
        return Degrees_u(rad_d_to_deg_u(self.rawValue))
    }
    
    /// Convert to a `Degrees_f`.
    public var toDegrees_f: Degrees_f {
        return Degrees_f(rad_d_to_deg_f(self.rawValue))
    }
    
    /// Convert to a `Degrees_d`.
    public var toDegrees_d: Degrees_d {
        return Degrees_d(rad_d_to_deg_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(rad_d_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(rad_d_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(rad_d_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(rad_d_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(rad_d_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(rad_d_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(rad_d_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(rad_d_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(rad_d_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(rad_d_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(rad_d_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(rad_d_to_d(self.rawValue))
    }

    /// Create a `Radians_d` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Radians_d`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Radians_d`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Radians_d`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Radians_d`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Radians_d`.
    public init(_ value: Int) {
        self.rawValue = i_to_rad_d(CInt(value))
    }
    
    /// Create a `Radians_d` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Radians_d`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Radians_d`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Radians_d`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Radians_d`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Radians_d`.
    public init(_ value: UInt) {
        self.rawValue = u_to_rad_d(CUnsignedInt(value))
    }
    
    /// Create a `Radians_d` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Radians_d`.
    public init(_ value: Float) {
        self.rawValue = f_to_rad_d(value)
    }
    
    /// Create a `Radians_d` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Radians_d`.
    public init(_ value: Double) {
        self.rawValue = d_to_rad_d(value)
    }

    /// Create a `radians_d` by converting a `Degrees_t`.
    ///
    /// - Parameter value: A `Degrees_t` value to convert to a `radians_d`.
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_rad_d(value.rawValue)
    }
    
    /// Create a `radians_d` by converting a `Degrees_u`.
    ///
    /// - Parameter value: A `Degrees_u` value to convert to a `radians_d`.
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_rad_d(value.rawValue)
    }
    
    /// Create a `radians_d` by converting a `Degrees_f`.
    ///
    /// - Parameter value: A `Degrees_f` value to convert to a `radians_d`.
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_rad_d(value.rawValue)
    }
    
    /// Create a `radians_d` by converting a `Degrees_d`.
    ///
    /// - Parameter value: A `Degrees_d` value to convert to a `radians_d`.
    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_rad_d(value.rawValue)
    }

    /// Create a `radians_d` by converting a `Radians_f`.
    ///
    /// - Parameter value: A `Radians_f` value to convert to a `radians_d`.
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_rad_d(value.rawValue)
    }
    
    /// Create a `radians_d` by converting a `Radians_t`.
    ///
    /// - Parameter value: A `Radians_t` value to convert to a `radians_d`.
    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_rad_d(value.rawValue)
    }
    
    /// Create a `radians_d` by converting a `Radians_u`.
    ///
    /// - Parameter value: A `Radians_u` value to convert to a `radians_d`.
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_rad_d(value.rawValue)
    }

}
