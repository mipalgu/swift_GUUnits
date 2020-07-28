/*
* Milliseconds.swift
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

/// A signed integer type in the milliseconds unit.
public struct Milliseconds_t {

    public let rawValue: milliseconds_t

    /// Create a `Milliseconds_t` from the underlying guunits C type `milliseconds_t`.
    public init(rawValue: milliseconds_t) {
        self.rawValue = rawValue
    }

    /// Convert to a `Microseconds_t`.
    public var toMicroseconds_t: Microseconds_t {
        return Microseconds_t(ms_t_to_us_t(self.rawValue))
    }
    
    /// Convert to a `Microseconds_u`.
    public var toMicroseconds_u: Microseconds_u {
        return Microseconds_u(ms_t_to_us_u(self.rawValue))
    }
    
    /// Convert to a `Microseconds_f`.
    public var toMicroseconds_f: Microseconds_f {
        return Microseconds_f(ms_t_to_us_f(self.rawValue))
    }
    
    /// Convert to a `Microseconds_d`.
    public var toMicroseconds_d: Microseconds_d {
        return Microseconds_d(ms_t_to_us_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(ms_t_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(ms_t_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(ms_t_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(ms_t_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(ms_t_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(ms_t_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(ms_t_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(ms_t_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(ms_t_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(ms_t_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(ms_t_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(ms_t_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(ms_t_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(ms_t_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(ms_t_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(ms_t_to_d(self.rawValue))
    }

    /// Create a `Milliseconds_t` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_t`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Milliseconds_t`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Milliseconds_t`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Milliseconds_t`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_t`.
    public init(_ value: Int) {
        self.rawValue = i_to_ms_t(CInt(value))
    }
    
    /// Create a `Milliseconds_t` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt) {
        self.rawValue = u_to_ms_t(CUnsignedInt(value))
    }
    
    /// Create a `Milliseconds_t` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_t`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_t(value)
    }
    
    /// Create a `Milliseconds_t` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_t`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_t(value)
    }

    /// Create a `milliseconds_t` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `milliseconds_t`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `milliseconds_t`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `milliseconds_t`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `milliseconds_t`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `milliseconds_t`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `milliseconds_t`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `milliseconds_t`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `milliseconds_t`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_t(value.rawValue)
    }

    /// Create a `milliseconds_t` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `milliseconds_t`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `milliseconds_t`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_t(value.rawValue)
    }
    
    /// Create a `milliseconds_t` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `milliseconds_t`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_t(value.rawValue)
    }

}

/// A unsigned integer type in the milliseconds unit.
public struct Milliseconds_u {

    public let rawValue: milliseconds_u

    /// Create a `Milliseconds_u` from the underlying guunits C type `milliseconds_u`.
    public init(rawValue: milliseconds_u) {
        self.rawValue = rawValue
    }

    /// Convert to a `Microseconds_t`.
    public var toMicroseconds_t: Microseconds_t {
        return Microseconds_t(ms_u_to_us_t(self.rawValue))
    }
    
    /// Convert to a `Microseconds_u`.
    public var toMicroseconds_u: Microseconds_u {
        return Microseconds_u(ms_u_to_us_u(self.rawValue))
    }
    
    /// Convert to a `Microseconds_f`.
    public var toMicroseconds_f: Microseconds_f {
        return Microseconds_f(ms_u_to_us_f(self.rawValue))
    }
    
    /// Convert to a `Microseconds_d`.
    public var toMicroseconds_d: Microseconds_d {
        return Microseconds_d(ms_u_to_us_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(ms_u_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(ms_u_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(ms_u_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(ms_u_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(ms_u_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(ms_u_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(ms_u_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(ms_u_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(ms_u_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(ms_u_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(ms_u_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(ms_u_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(ms_u_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(ms_u_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(ms_u_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(ms_u_to_d(self.rawValue))
    }

    /// Create a `Milliseconds_u` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_u`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Milliseconds_u`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Milliseconds_u`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Milliseconds_u`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_u`.
    public init(_ value: Int) {
        self.rawValue = i_to_ms_u(CInt(value))
    }
    
    /// Create a `Milliseconds_u` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt) {
        self.rawValue = u_to_ms_u(CUnsignedInt(value))
    }
    
    /// Create a `Milliseconds_u` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_u`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_u(value)
    }
    
    /// Create a `Milliseconds_u` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_u`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_u(value)
    }

    /// Create a `milliseconds_u` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `milliseconds_u`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `milliseconds_u`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `milliseconds_u`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `milliseconds_u`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `milliseconds_u`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `milliseconds_u`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `milliseconds_u`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `milliseconds_u`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_u(value.rawValue)
    }

    /// Create a `milliseconds_u` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `milliseconds_u`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `milliseconds_u`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_u(value.rawValue)
    }
    
    /// Create a `milliseconds_u` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `milliseconds_u`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_u(value.rawValue)
    }

}

/// A floating point type in the milliseconds unit.
public struct Milliseconds_f {

    public let rawValue: milliseconds_f

    /// Create a `Milliseconds_f` from the underlying guunits C type `milliseconds_f`.
    public init(rawValue: milliseconds_f) {
        self.rawValue = rawValue
    }

    /// Convert to a `Microseconds_t`.
    public var toMicroseconds_t: Microseconds_t {
        return Microseconds_t(ms_f_to_us_t(self.rawValue))
    }
    
    /// Convert to a `Microseconds_u`.
    public var toMicroseconds_u: Microseconds_u {
        return Microseconds_u(ms_f_to_us_u(self.rawValue))
    }
    
    /// Convert to a `Microseconds_f`.
    public var toMicroseconds_f: Microseconds_f {
        return Microseconds_f(ms_f_to_us_f(self.rawValue))
    }
    
    /// Convert to a `Microseconds_d`.
    public var toMicroseconds_d: Microseconds_d {
        return Microseconds_d(ms_f_to_us_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(ms_f_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(ms_f_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(ms_f_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(ms_f_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(ms_f_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(ms_f_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(ms_f_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(ms_f_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(ms_f_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(ms_f_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(ms_f_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(ms_f_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(ms_f_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(ms_f_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(ms_f_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(ms_f_to_d(self.rawValue))
    }

    /// Create a `Milliseconds_f` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_f`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Milliseconds_f`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Milliseconds_f`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Milliseconds_f`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_f`.
    public init(_ value: Int) {
        self.rawValue = i_to_ms_f(CInt(value))
    }
    
    /// Create a `Milliseconds_f` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt) {
        self.rawValue = u_to_ms_f(CUnsignedInt(value))
    }
    
    /// Create a `Milliseconds_f` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_f`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_f(value)
    }
    
    /// Create a `Milliseconds_f` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_f`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_f(value)
    }

    /// Create a `milliseconds_f` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `milliseconds_f`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `milliseconds_f`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `milliseconds_f`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `milliseconds_f`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `milliseconds_f`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `milliseconds_f`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `milliseconds_f`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `milliseconds_f`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_f(value.rawValue)
    }

    /// Create a `milliseconds_f` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `milliseconds_f`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `milliseconds_f`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_f(value.rawValue)
    }
    
    /// Create a `milliseconds_f` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `milliseconds_f`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_f(value.rawValue)
    }

}

/// A double type in the milliseconds unit.
public struct Milliseconds_d {

    public let rawValue: milliseconds_d

    /// Create a `Milliseconds_d` from the underlying guunits C type `milliseconds_d`.
    public init(rawValue: milliseconds_d) {
        self.rawValue = rawValue
    }

    /// Convert to a `Microseconds_t`.
    public var toMicroseconds_t: Microseconds_t {
        return Microseconds_t(ms_d_to_us_t(self.rawValue))
    }
    
    /// Convert to a `Microseconds_u`.
    public var toMicroseconds_u: Microseconds_u {
        return Microseconds_u(ms_d_to_us_u(self.rawValue))
    }
    
    /// Convert to a `Microseconds_f`.
    public var toMicroseconds_f: Microseconds_f {
        return Microseconds_f(ms_d_to_us_f(self.rawValue))
    }
    
    /// Convert to a `Microseconds_d`.
    public var toMicroseconds_d: Microseconds_d {
        return Microseconds_d(ms_d_to_us_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(ms_d_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(ms_d_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(ms_d_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(ms_d_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(ms_d_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(ms_d_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(ms_d_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(ms_d_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(ms_d_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(ms_d_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(ms_d_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(ms_d_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(ms_d_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(ms_d_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(ms_d_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(ms_d_to_d(self.rawValue))
    }

    /// Create a `Milliseconds_d` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_d`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Milliseconds_d`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Milliseconds_d`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Milliseconds_d`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_d`.
    public init(_ value: Int) {
        self.rawValue = i_to_ms_d(CInt(value))
    }
    
    /// Create a `Milliseconds_d` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt) {
        self.rawValue = u_to_ms_d(CUnsignedInt(value))
    }
    
    /// Create a `Milliseconds_d` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_d`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_d(value)
    }
    
    /// Create a `Milliseconds_d` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_d`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_d(value)
    }

    /// Create a `milliseconds_d` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `milliseconds_d`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `milliseconds_d`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `milliseconds_d`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `milliseconds_d`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `milliseconds_d`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `milliseconds_d`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `milliseconds_d`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `milliseconds_d`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_d(value.rawValue)
    }

    /// Create a `milliseconds_d` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `milliseconds_d`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `milliseconds_d`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_d(value.rawValue)
    }
    
    /// Create a `milliseconds_d` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `milliseconds_d`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_d(value.rawValue)
    }

}
