/*
* Pixels.swift
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

/// A signed integer type in the pixels unit.
public struct Pixels_t {

    public let rawValue: pixels_t

    /// Create a `Pixels_t` from the underlying guunits C type `pixels_t`.
    public init(rawValue: pixels_t) {
        self.rawValue = rawValue
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(px_t_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(px_t_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(px_t_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(px_t_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(px_t_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(px_t_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(px_t_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(px_t_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(px_t_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(px_t_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(px_t_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(px_t_to_d(self.rawValue))
    }

    /// Create a `Pixels_t` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Pixels_t`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Pixels_t`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Pixels_t`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Pixels_t`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Pixels_t`.
    public init(_ value: Int) {
        self.rawValue = i_to_px_t(CInt(value))
    }
    
    /// Create a `Pixels_t` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Pixels_t`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Pixels_t`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Pixels_t`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Pixels_t`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Pixels_t`.
    public init(_ value: UInt) {
        self.rawValue = u_to_px_t(CUnsignedInt(value))
    }
    
    /// Create a `Pixels_t` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Pixels_t`.
    public init(_ value: Float) {
        self.rawValue = f_to_px_t(value)
    }
    
    /// Create a `Pixels_t` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Pixels_t`.
    public init(_ value: Double) {
        self.rawValue = d_to_px_t(value)
    }

    /// Create a `pixels_t` by converting a `Pixels_d`.
    ///
    /// - Parameter value: A `Pixels_d` value to convert to a `pixels_t`.
    public init(_ value: Pixels_d) {
        self.rawValue = px_d_to_px_t(value.rawValue)
    }
    
    /// Create a `pixels_t` by converting a `Pixels_f`.
    ///
    /// - Parameter value: A `Pixels_f` value to convert to a `pixels_t`.
    public init(_ value: Pixels_f) {
        self.rawValue = px_f_to_px_t(value.rawValue)
    }
    
    /// Create a `pixels_t` by converting a `Pixels_u`.
    ///
    /// - Parameter value: A `Pixels_u` value to convert to a `pixels_t`.
    public init(_ value: Pixels_u) {
        self.rawValue = px_u_to_px_t(value.rawValue)
    }

}

/// A unsigned integer type in the pixels unit.
public struct Pixels_u {

    public let rawValue: pixels_u

    /// Create a `Pixels_u` from the underlying guunits C type `pixels_u`.
    public init(rawValue: pixels_u) {
        self.rawValue = rawValue
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(px_u_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(px_u_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(px_u_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(px_u_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(px_u_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(px_u_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(px_u_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(px_u_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(px_u_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(px_u_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(px_u_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(px_u_to_d(self.rawValue))
    }

    /// Create a `Pixels_u` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Pixels_u`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Pixels_u`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Pixels_u`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Pixels_u`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Pixels_u`.
    public init(_ value: Int) {
        self.rawValue = i_to_px_u(CInt(value))
    }
    
    /// Create a `Pixels_u` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Pixels_u`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Pixels_u`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Pixels_u`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Pixels_u`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Pixels_u`.
    public init(_ value: UInt) {
        self.rawValue = u_to_px_u(CUnsignedInt(value))
    }
    
    /// Create a `Pixels_u` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Pixels_u`.
    public init(_ value: Float) {
        self.rawValue = f_to_px_u(value)
    }
    
    /// Create a `Pixels_u` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Pixels_u`.
    public init(_ value: Double) {
        self.rawValue = d_to_px_u(value)
    }

    /// Create a `pixels_u` by converting a `Pixels_d`.
    ///
    /// - Parameter value: A `Pixels_d` value to convert to a `pixels_u`.
    public init(_ value: Pixels_d) {
        self.rawValue = px_d_to_px_u(value.rawValue)
    }
    
    /// Create a `pixels_u` by converting a `Pixels_f`.
    ///
    /// - Parameter value: A `Pixels_f` value to convert to a `pixels_u`.
    public init(_ value: Pixels_f) {
        self.rawValue = px_f_to_px_u(value.rawValue)
    }
    
    /// Create a `pixels_u` by converting a `Pixels_t`.
    ///
    /// - Parameter value: A `Pixels_t` value to convert to a `pixels_u`.
    public init(_ value: Pixels_t) {
        self.rawValue = px_t_to_px_u(value.rawValue)
    }

}

/// A floating point type in the pixels unit.
public struct Pixels_f {

    public let rawValue: pixels_f

    /// Create a `Pixels_f` from the underlying guunits C type `pixels_f`.
    public init(rawValue: pixels_f) {
        self.rawValue = rawValue
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(px_f_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(px_f_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(px_f_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(px_f_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(px_f_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(px_f_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(px_f_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(px_f_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(px_f_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(px_f_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(px_f_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(px_f_to_d(self.rawValue))
    }

    /// Create a `Pixels_f` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Pixels_f`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Pixels_f`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Pixels_f`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Pixels_f`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Pixels_f`.
    public init(_ value: Int) {
        self.rawValue = i_to_px_f(CInt(value))
    }
    
    /// Create a `Pixels_f` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Pixels_f`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Pixels_f`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Pixels_f`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Pixels_f`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Pixels_f`.
    public init(_ value: UInt) {
        self.rawValue = u_to_px_f(CUnsignedInt(value))
    }
    
    /// Create a `Pixels_f` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Pixels_f`.
    public init(_ value: Float) {
        self.rawValue = f_to_px_f(value)
    }
    
    /// Create a `Pixels_f` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Pixels_f`.
    public init(_ value: Double) {
        self.rawValue = d_to_px_f(value)
    }

    /// Create a `pixels_f` by converting a `Pixels_d`.
    ///
    /// - Parameter value: A `Pixels_d` value to convert to a `pixels_f`.
    public init(_ value: Pixels_d) {
        self.rawValue = px_d_to_px_f(value.rawValue)
    }
    
    /// Create a `pixels_f` by converting a `Pixels_t`.
    ///
    /// - Parameter value: A `Pixels_t` value to convert to a `pixels_f`.
    public init(_ value: Pixels_t) {
        self.rawValue = px_t_to_px_f(value.rawValue)
    }
    
    /// Create a `pixels_f` by converting a `Pixels_u`.
    ///
    /// - Parameter value: A `Pixels_u` value to convert to a `pixels_f`.
    public init(_ value: Pixels_u) {
        self.rawValue = px_u_to_px_f(value.rawValue)
    }

}

/// A double type in the pixels unit.
public struct Pixels_d {

    public let rawValue: pixels_d

    /// Create a `Pixels_d` from the underlying guunits C type `pixels_d`.
    public init(rawValue: pixels_d) {
        self.rawValue = rawValue
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(px_d_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(px_d_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(px_d_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(px_d_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(px_d_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(px_d_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(px_d_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(px_d_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(px_d_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(px_d_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(px_d_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(px_d_to_d(self.rawValue))
    }

    /// Create a `Pixels_d` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Pixels_d`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Pixels_d`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Pixels_d`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Pixels_d`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Pixels_d`.
    public init(_ value: Int) {
        self.rawValue = i_to_px_d(CInt(value))
    }
    
    /// Create a `Pixels_d` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Pixels_d`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Pixels_d`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Pixels_d`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Pixels_d`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Pixels_d`.
    public init(_ value: UInt) {
        self.rawValue = u_to_px_d(CUnsignedInt(value))
    }
    
    /// Create a `Pixels_d` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Pixels_d`.
    public init(_ value: Float) {
        self.rawValue = f_to_px_d(value)
    }
    
    /// Create a `Pixels_d` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Pixels_d`.
    public init(_ value: Double) {
        self.rawValue = d_to_px_d(value)
    }

    /// Create a `pixels_d` by converting a `Pixels_f`.
    ///
    /// - Parameter value: A `Pixels_f` value to convert to a `pixels_d`.
    public init(_ value: Pixels_f) {
        self.rawValue = px_f_to_px_d(value.rawValue)
    }
    
    /// Create a `pixels_d` by converting a `Pixels_t`.
    ///
    /// - Parameter value: A `Pixels_t` value to convert to a `pixels_d`.
    public init(_ value: Pixels_t) {
        self.rawValue = px_t_to_px_d(value.rawValue)
    }
    
    /// Create a `pixels_d` by converting a `Pixels_u`.
    ///
    /// - Parameter value: A `Pixels_u` value to convert to a `pixels_d`.
    public init(_ value: Pixels_u) {
        self.rawValue = px_u_to_px_d(value.rawValue)
    }

}