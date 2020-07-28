/*
* Microseconds.swift
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

/// A signed integer type in the microseconds unit.
public struct Microseconds_t {

    public let rawValue: microseconds_t

    /// Create a `Microseconds_t` from the underlying guunits C type `microseconds_t`.
    public init(rawValue: microseconds_t) {
        self.rawValue = rawValue
    }

    /// Convert to a `Milliseconds_t`.
    public var toMilliseconds_t: Milliseconds_t {
        return Milliseconds_t(us_t_to_ms_t(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_u`.
    public var toMilliseconds_u: Milliseconds_u {
        return Milliseconds_u(us_t_to_ms_u(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_f`.
    public var toMilliseconds_f: Milliseconds_f {
        return Milliseconds_f(us_t_to_ms_f(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_d`.
    public var toMilliseconds_d: Milliseconds_d {
        return Milliseconds_d(us_t_to_ms_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(us_t_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(us_t_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(us_t_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(us_t_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(us_t_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(us_t_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(us_t_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(us_t_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(us_t_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(us_t_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(us_t_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(us_t_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(us_t_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(us_t_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(us_t_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(us_t_to_d(self.rawValue))
    }

    /// Create a `Microseconds_t` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Microseconds_t`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Microseconds_t`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Microseconds_t`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Microseconds_t`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Microseconds_t`.
    public init(_ value: Int) {
        self.rawValue = i_to_us_t(CInt(value))
    }
    
    /// Create a `Microseconds_t` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Microseconds_t`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Microseconds_t`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Microseconds_t`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Microseconds_t`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Microseconds_t`.
    public init(_ value: UInt) {
        self.rawValue = u_to_us_t(CUnsignedInt(value))
    }
    
    /// Create a `Microseconds_t` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Microseconds_t`.
    public init(_ value: Float) {
        self.rawValue = f_to_us_t(value)
    }
    
    /// Create a `Microseconds_t` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Microseconds_t`.
    public init(_ value: Double) {
        self.rawValue = d_to_us_t(value)
    }

    /// Create a `microseconds_t` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `microseconds_t`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `microseconds_t`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `microseconds_t`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `microseconds_t`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `microseconds_t`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `microseconds_t`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `microseconds_t`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `microseconds_t`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_us_t(value.rawValue)
    }

    /// Create a `microseconds_t` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `microseconds_t`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `microseconds_t`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_us_t(value.rawValue)
    }
    
    /// Create a `microseconds_t` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `microseconds_t`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_us_t(value.rawValue)
    }

}

/// A unsigned integer type in the microseconds unit.
public struct Microseconds_u {

    public let rawValue: microseconds_u

    /// Create a `Microseconds_u` from the underlying guunits C type `microseconds_u`.
    public init(rawValue: microseconds_u) {
        self.rawValue = rawValue
    }

    /// Convert to a `Milliseconds_t`.
    public var toMilliseconds_t: Milliseconds_t {
        return Milliseconds_t(us_u_to_ms_t(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_u`.
    public var toMilliseconds_u: Milliseconds_u {
        return Milliseconds_u(us_u_to_ms_u(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_f`.
    public var toMilliseconds_f: Milliseconds_f {
        return Milliseconds_f(us_u_to_ms_f(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_d`.
    public var toMilliseconds_d: Milliseconds_d {
        return Milliseconds_d(us_u_to_ms_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(us_u_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(us_u_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(us_u_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(us_u_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(us_u_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(us_u_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(us_u_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(us_u_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(us_u_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(us_u_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(us_u_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(us_u_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(us_u_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(us_u_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(us_u_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(us_u_to_d(self.rawValue))
    }

    /// Create a `Microseconds_u` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Microseconds_u`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Microseconds_u`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Microseconds_u`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Microseconds_u`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Microseconds_u`.
    public init(_ value: Int) {
        self.rawValue = i_to_us_u(CInt(value))
    }
    
    /// Create a `Microseconds_u` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Microseconds_u`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Microseconds_u`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Microseconds_u`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Microseconds_u`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Microseconds_u`.
    public init(_ value: UInt) {
        self.rawValue = u_to_us_u(CUnsignedInt(value))
    }
    
    /// Create a `Microseconds_u` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Microseconds_u`.
    public init(_ value: Float) {
        self.rawValue = f_to_us_u(value)
    }
    
    /// Create a `Microseconds_u` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Microseconds_u`.
    public init(_ value: Double) {
        self.rawValue = d_to_us_u(value)
    }

    /// Create a `microseconds_u` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `microseconds_u`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `microseconds_u`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `microseconds_u`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `microseconds_u`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `microseconds_u`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `microseconds_u`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `microseconds_u`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `microseconds_u`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_us_u(value.rawValue)
    }

    /// Create a `microseconds_u` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `microseconds_u`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `microseconds_u`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_us_u(value.rawValue)
    }
    
    /// Create a `microseconds_u` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `microseconds_u`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_us_u(value.rawValue)
    }

}

/// A floating point type in the microseconds unit.
public struct Microseconds_f {

    public let rawValue: microseconds_f

    /// Create a `Microseconds_f` from the underlying guunits C type `microseconds_f`.
    public init(rawValue: microseconds_f) {
        self.rawValue = rawValue
    }

    /// Convert to a `Milliseconds_t`.
    public var toMilliseconds_t: Milliseconds_t {
        return Milliseconds_t(us_f_to_ms_t(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_u`.
    public var toMilliseconds_u: Milliseconds_u {
        return Milliseconds_u(us_f_to_ms_u(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_f`.
    public var toMilliseconds_f: Milliseconds_f {
        return Milliseconds_f(us_f_to_ms_f(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_d`.
    public var toMilliseconds_d: Milliseconds_d {
        return Milliseconds_d(us_f_to_ms_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(us_f_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(us_f_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(us_f_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(us_f_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(us_f_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(us_f_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(us_f_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(us_f_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(us_f_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(us_f_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(us_f_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(us_f_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(us_f_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(us_f_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(us_f_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(us_f_to_d(self.rawValue))
    }

    /// Create a `Microseconds_f` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Microseconds_f`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Microseconds_f`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Microseconds_f`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Microseconds_f`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Microseconds_f`.
    public init(_ value: Int) {
        self.rawValue = i_to_us_f(CInt(value))
    }
    
    /// Create a `Microseconds_f` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Microseconds_f`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Microseconds_f`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Microseconds_f`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Microseconds_f`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Microseconds_f`.
    public init(_ value: UInt) {
        self.rawValue = u_to_us_f(CUnsignedInt(value))
    }
    
    /// Create a `Microseconds_f` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Microseconds_f`.
    public init(_ value: Float) {
        self.rawValue = f_to_us_f(value)
    }
    
    /// Create a `Microseconds_f` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Microseconds_f`.
    public init(_ value: Double) {
        self.rawValue = d_to_us_f(value)
    }

    /// Create a `microseconds_f` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `microseconds_f`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `microseconds_f`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `microseconds_f`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `microseconds_f`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `microseconds_f`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `microseconds_f`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `microseconds_f`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `microseconds_f`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_us_f(value.rawValue)
    }

    /// Create a `microseconds_f` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `microseconds_f`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `microseconds_f`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_us_f(value.rawValue)
    }
    
    /// Create a `microseconds_f` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `microseconds_f`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_us_f(value.rawValue)
    }

}

/// A double type in the microseconds unit.
public struct Microseconds_d {

    public let rawValue: microseconds_d

    /// Create a `Microseconds_d` from the underlying guunits C type `microseconds_d`.
    public init(rawValue: microseconds_d) {
        self.rawValue = rawValue
    }

    /// Convert to a `Milliseconds_t`.
    public var toMilliseconds_t: Milliseconds_t {
        return Milliseconds_t(us_d_to_ms_t(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_u`.
    public var toMilliseconds_u: Milliseconds_u {
        return Milliseconds_u(us_d_to_ms_u(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_f`.
    public var toMilliseconds_f: Milliseconds_f {
        return Milliseconds_f(us_d_to_ms_f(self.rawValue))
    }
    
    /// Convert to a `Milliseconds_d`.
    public var toMilliseconds_d: Milliseconds_d {
        return Milliseconds_d(us_d_to_ms_d(self.rawValue))
    }
    
    /// Convert to a `Seconds_t`.
    public var toSeconds_t: Seconds_t {
        return Seconds_t(us_d_to_s_t(self.rawValue))
    }
    
    /// Convert to a `Seconds_u`.
    public var toSeconds_u: Seconds_u {
        return Seconds_u(us_d_to_s_u(self.rawValue))
    }
    
    /// Convert to a `Seconds_f`.
    public var toSeconds_f: Seconds_f {
        return Seconds_f(us_d_to_s_f(self.rawValue))
    }
    
    /// Convert to a `Seconds_d`.
    public var toSeconds_d: Seconds_d {
        return Seconds_d(us_d_to_s_d(self.rawValue))
    }

    /// Convert to a `Int8`.
    public var toInt8: Int8 {
        Int8(us_d_to_i8(self.rawValue))
    }
    
    /// Convert to a `Int16`.
    public var toInt16: Int16 {
        Int16(us_d_to_i16(self.rawValue))
    }
    
    /// Convert to a `Int32`.
    public var toInt32: Int32 {
        Int32(us_d_to_i32(self.rawValue))
    }
    
    /// Convert to a `Int64`.
    public var toInt64: Int64 {
        Int64(us_d_to_i64(self.rawValue))
    }
    
    /// Convert to a `Int`.
    public var toInt: Int {
        Int(us_d_to_i(self.rawValue))
    }
    
    /// Convert to a `UInt8`.
    public var toUInt8: UInt8 {
        UInt8(us_d_to_u8(self.rawValue))
    }
    
    /// Convert to a `UInt16`.
    public var toUInt16: UInt16 {
        UInt16(us_d_to_u16(self.rawValue))
    }
    
    /// Convert to a `UInt32`.
    public var toUInt32: UInt32 {
        UInt32(us_d_to_u32(self.rawValue))
    }
    
    /// Convert to a `UInt64`.
    public var toUInt64: UInt64 {
        UInt64(us_d_to_u64(self.rawValue))
    }
    
    /// Convert to a `UInt`.
    public var toUInt: UInt {
        UInt(us_d_to_u(self.rawValue))
    }
    
    /// Convert to a `Float`.
    public var toFloat: Float {
        Float(us_d_to_f(self.rawValue))
    }
    
    /// Convert to a `Double`.
    public var toDouble: Double {
        Double(us_d_to_d(self.rawValue))
    }

    /// Create a `Microseconds_d` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Microseconds_d`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `Int16`.
    ///
    /// - Parameter value: A `Int16` value to convert to a `Microseconds_d`.
    public init(_ value: Int16) {
        self.rawValue = i16_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `Int32`.
    ///
    /// - Parameter value: A `Int32` value to convert to a `Microseconds_d`.
    public init(_ value: Int32) {
        self.rawValue = i32_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `Int64`.
    ///
    /// - Parameter value: A `Int64` value to convert to a `Microseconds_d`.
    public init(_ value: Int64) {
        self.rawValue = i64_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Microseconds_d`.
    public init(_ value: Int) {
        self.rawValue = i_to_us_d(CInt(value))
    }
    
    /// Create a `Microseconds_d` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Microseconds_d`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `UInt16`.
    ///
    /// - Parameter value: A `UInt16` value to convert to a `Microseconds_d`.
    public init(_ value: UInt16) {
        self.rawValue = u16_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `UInt32`.
    ///
    /// - Parameter value: A `UInt32` value to convert to a `Microseconds_d`.
    public init(_ value: UInt32) {
        self.rawValue = u32_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `UInt64`.
    ///
    /// - Parameter value: A `UInt64` value to convert to a `Microseconds_d`.
    public init(_ value: UInt64) {
        self.rawValue = u64_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Microseconds_d`.
    public init(_ value: UInt) {
        self.rawValue = u_to_us_d(CUnsignedInt(value))
    }
    
    /// Create a `Microseconds_d` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Microseconds_d`.
    public init(_ value: Float) {
        self.rawValue = f_to_us_d(value)
    }
    
    /// Create a `Microseconds_d` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Microseconds_d`.
    public init(_ value: Double) {
        self.rawValue = d_to_us_d(value)
    }

    /// Create a `microseconds_d` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `microseconds_d`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `microseconds_d`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `microseconds_d`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `microseconds_d`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `microseconds_d`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `microseconds_d`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `microseconds_d`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `microseconds_d`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_us_d(value.rawValue)
    }

    /// Create a `microseconds_d` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `microseconds_d`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `microseconds_d`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_us_d(value.rawValue)
    }
    
    /// Create a `microseconds_d` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `microseconds_d`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_us_d(value.rawValue)
    }

}
