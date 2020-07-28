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

/// A signed integer type for the milliseconds unit.
public struct Milliseconds_t: GUUnitsTType {

// MARK: - Converting Between The Underlying guunits C Type

    /// Convert to the guunits underlying C type `milliseconds_t`
    public let rawValue: milliseconds_t

    /// Create a `Milliseconds_t` from the underlying guunits C type `milliseconds_t`.
    public init(rawValue: milliseconds_t) {
        self.rawValue = rawValue
    }

// MARK: - Converting From Swift Numeric Types

    /// Create a `Milliseconds_t` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_t`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_t(value)
    }

    /// Create a `Milliseconds_t` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_t`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_t(value)
    }

    /// Create a `Milliseconds_t` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_t`.
    public init(_ value: Int) {
        self.rawValue = i64_to_ms_t(Int64(value))
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

    /// Create a `Milliseconds_t` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_t`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_t(value)
    }

    /// Create a `Milliseconds_t` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt) {
        self.rawValue = u64_to_ms_t(UInt64(value))
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

    /// Create a `Milliseconds_t` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_t`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_t(value)
    }

// MARK: - Converting From Other Units

    /// Create a `Milliseconds_t` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `Milliseconds_t`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `Milliseconds_t`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `Milliseconds_t`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `Milliseconds_t`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `Milliseconds_t`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `Milliseconds_t`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `Milliseconds_t`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `Milliseconds_t`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_t(value.rawValue)
    }

// MARK: - Converting From Other Precisions

    /// Create a `Milliseconds_t` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Milliseconds_t`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Milliseconds_t`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_t(value.rawValue)
    }

    /// Create a `Milliseconds_t` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Milliseconds_t`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_t(value.rawValue)
    }

}

/// An unsigned integer type for the milliseconds unit.
public struct Milliseconds_u: GUUnitsUType {

// MARK: - Converting Between The Underlying guunits C Type

    /// Convert to the guunits underlying C type `milliseconds_u`
    public let rawValue: milliseconds_u

    /// Create a `Milliseconds_u` from the underlying guunits C type `milliseconds_u`.
    public init(rawValue: milliseconds_u) {
        self.rawValue = rawValue
    }

// MARK: - Converting From Swift Numeric Types

    /// Create a `Milliseconds_u` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_u`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_u(value)
    }

    /// Create a `Milliseconds_u` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_u`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_u(value)
    }

    /// Create a `Milliseconds_u` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_u`.
    public init(_ value: Int) {
        self.rawValue = i64_to_ms_u(Int64(value))
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

    /// Create a `Milliseconds_u` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_u`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_u(value)
    }

    /// Create a `Milliseconds_u` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt) {
        self.rawValue = u64_to_ms_u(UInt64(value))
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

    /// Create a `Milliseconds_u` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_u`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_u(value)
    }

// MARK: - Converting From Other Units

    /// Create a `Milliseconds_u` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `Milliseconds_u`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `Milliseconds_u`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `Milliseconds_u`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `Milliseconds_u`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `Milliseconds_u`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `Milliseconds_u`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `Milliseconds_u`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `Milliseconds_u`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_u(value.rawValue)
    }

// MARK: - Converting From Other Precisions

    /// Create a `Milliseconds_u` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Milliseconds_u`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Milliseconds_u`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_u(value.rawValue)
    }

    /// Create a `Milliseconds_u` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Milliseconds_u`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_u(value.rawValue)
    }

}

/// A floating point type for the milliseconds unit.
public struct Milliseconds_f: GUUnitsFType {

// MARK: - Converting Between The Underlying guunits C Type

    /// Convert to the guunits underlying C type `milliseconds_f`
    public let rawValue: milliseconds_f

    /// Create a `Milliseconds_f` from the underlying guunits C type `milliseconds_f`.
    public init(rawValue: milliseconds_f) {
        self.rawValue = rawValue
    }

// MARK: - Converting From Swift Numeric Types

    /// Create a `Milliseconds_f` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_f`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_f(value)
    }

    /// Create a `Milliseconds_f` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_f`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_f(value)
    }

    /// Create a `Milliseconds_f` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_f`.
    public init(_ value: Int) {
        self.rawValue = i64_to_ms_f(Int64(value))
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

    /// Create a `Milliseconds_f` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_f`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_f(value)
    }

    /// Create a `Milliseconds_f` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt) {
        self.rawValue = u64_to_ms_f(UInt64(value))
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

    /// Create a `Milliseconds_f` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_f`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_f(value)
    }

// MARK: - Converting From Other Units

    /// Create a `Milliseconds_f` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `Milliseconds_f`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `Milliseconds_f`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `Milliseconds_f`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `Milliseconds_f`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `Milliseconds_f`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `Milliseconds_f`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `Milliseconds_f`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `Milliseconds_f`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_f(value.rawValue)
    }

// MARK: - Converting From Other Precisions

    /// Create a `Milliseconds_f` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Milliseconds_f`.
    public init(_ value: Milliseconds_d) {
        self.rawValue = ms_d_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Milliseconds_f`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_f(value.rawValue)
    }

    /// Create a `Milliseconds_f` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Milliseconds_f`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_f(value.rawValue)
    }

}

/// A double type for the milliseconds unit.
public struct Milliseconds_d: GUUnitsDType {

// MARK: - Converting Between The Underlying guunits C Type

    /// Convert to the guunits underlying C type `milliseconds_d`
    public let rawValue: milliseconds_d

    /// Create a `Milliseconds_d` from the underlying guunits C type `milliseconds_d`.
    public init(rawValue: milliseconds_d) {
        self.rawValue = rawValue
    }

// MARK: - Converting From Swift Numeric Types

    /// Create a `Milliseconds_d` by converting a `Double`.
    ///
    /// - Parameter value: A `Double` value to convert to a `Milliseconds_d`.
    public init(_ value: Double) {
        self.rawValue = d_to_ms_d(value)
    }

    /// Create a `Milliseconds_d` by converting a `Float`.
    ///
    /// - Parameter value: A `Float` value to convert to a `Milliseconds_d`.
    public init(_ value: Float) {
        self.rawValue = f_to_ms_d(value)
    }

    /// Create a `Milliseconds_d` by converting a `Int`.
    ///
    /// - Parameter value: A `Int` value to convert to a `Milliseconds_d`.
    public init(_ value: Int) {
        self.rawValue = i64_to_ms_d(Int64(value))
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

    /// Create a `Milliseconds_d` by converting a `Int8`.
    ///
    /// - Parameter value: A `Int8` value to convert to a `Milliseconds_d`.
    public init(_ value: Int8) {
        self.rawValue = i8_to_ms_d(value)
    }

    /// Create a `Milliseconds_d` by converting a `UInt`.
    ///
    /// - Parameter value: A `UInt` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt) {
        self.rawValue = u64_to_ms_d(UInt64(value))
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

    /// Create a `Milliseconds_d` by converting a `UInt8`.
    ///
    /// - Parameter value: A `UInt8` value to convert to a `Milliseconds_d`.
    public init(_ value: UInt8) {
        self.rawValue = u8_to_ms_d(value)
    }

// MARK: - Converting From Other Units

    /// Create a `Milliseconds_d` by converting a `Microseconds_t`.
    ///
    /// - Parameter value: A `Microseconds_t` value to convert to a `Milliseconds_d`.
    public init(_ value: Microseconds_t) {
        self.rawValue = us_t_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Microseconds_u`.
    ///
    /// - Parameter value: A `Microseconds_u` value to convert to a `Milliseconds_d`.
    public init(_ value: Microseconds_u) {
        self.rawValue = us_u_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Microseconds_f`.
    ///
    /// - Parameter value: A `Microseconds_f` value to convert to a `Milliseconds_d`.
    public init(_ value: Microseconds_f) {
        self.rawValue = us_f_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Microseconds_d`.
    ///
    /// - Parameter value: A `Microseconds_d` value to convert to a `Milliseconds_d`.
    public init(_ value: Microseconds_d) {
        self.rawValue = us_d_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Seconds_t`.
    ///
    /// - Parameter value: A `Seconds_t` value to convert to a `Milliseconds_d`.
    public init(_ value: Seconds_t) {
        self.rawValue = s_t_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Seconds_u`.
    ///
    /// - Parameter value: A `Seconds_u` value to convert to a `Milliseconds_d`.
    public init(_ value: Seconds_u) {
        self.rawValue = s_u_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Seconds_f`.
    ///
    /// - Parameter value: A `Seconds_f` value to convert to a `Milliseconds_d`.
    public init(_ value: Seconds_f) {
        self.rawValue = s_f_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Seconds_d`.
    ///
    /// - Parameter value: A `Seconds_d` value to convert to a `Milliseconds_d`.
    public init(_ value: Seconds_d) {
        self.rawValue = s_d_to_ms_d(value.rawValue)
    }

// MARK: - Converting From Other Precisions

    /// Create a `Milliseconds_d` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Milliseconds_d`.
    public init(_ value: Milliseconds_f) {
        self.rawValue = ms_f_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Milliseconds_d`.
    public init(_ value: Milliseconds_t) {
        self.rawValue = ms_t_to_ms_d(value.rawValue)
    }

    /// Create a `Milliseconds_d` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Milliseconds_d`.
    public init(_ value: Milliseconds_u) {
        self.rawValue = ms_u_to_ms_d(value.rawValue)
    }

}

public extension Double {

// MARK: - Creating a Double From The Milliseconds Units

    /// Create a `Double` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Double`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_d(value.rawValue)
    }

    /// Create a `Double` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Double`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_d(value.rawValue)
    }

    /// Create a `Double` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Double`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_d(value.rawValue)
    }

    /// Create a `Double` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Double`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_d(value.rawValue)
    }

}

public extension Float {

// MARK: - Creating a Float From The Milliseconds Units

    /// Create a `Float` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Float`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_f(value.rawValue)
    }

    /// Create a `Float` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Float`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_f(value.rawValue)
    }

    /// Create a `Float` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Float`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_f(value.rawValue)
    }

    /// Create a `Float` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Float`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_f(value.rawValue)
    }

}

public extension Int {

// MARK: - Creating a Int From The Milliseconds Units

    /// Create a `Int` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Int`.
    init(_ value: Milliseconds_t) {
        self = Int(ms_t_to_i64(value.rawValue))
    }

    /// Create a `Int` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Int`.
    init(_ value: Milliseconds_u) {
        self = Int(ms_u_to_i64(value.rawValue))
    }

    /// Create a `Int` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Int`.
    init(_ value: Milliseconds_f) {
        self = Int(ms_f_to_i64(value.rawValue))
    }

    /// Create a `Int` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Int`.
    init(_ value: Milliseconds_d) {
        self = Int(ms_d_to_i64(value.rawValue))
    }

}

public extension Int16 {

// MARK: - Creating a Int16 From The Milliseconds Units

    /// Create a `Int16` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Int16`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_i16(value.rawValue)
    }

    /// Create a `Int16` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Int16`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_i16(value.rawValue)
    }

    /// Create a `Int16` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Int16`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_i16(value.rawValue)
    }

    /// Create a `Int16` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Int16`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_i16(value.rawValue)
    }

}

public extension Int32 {

// MARK: - Creating a Int32 From The Milliseconds Units

    /// Create a `Int32` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Int32`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_i32(value.rawValue)
    }

    /// Create a `Int32` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Int32`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_i32(value.rawValue)
    }

    /// Create a `Int32` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Int32`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_i32(value.rawValue)
    }

    /// Create a `Int32` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Int32`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_i32(value.rawValue)
    }

}

public extension Int64 {

// MARK: - Creating a Int64 From The Milliseconds Units

    /// Create a `Int64` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Int64`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_i64(value.rawValue)
    }

    /// Create a `Int64` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Int64`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_i64(value.rawValue)
    }

    /// Create a `Int64` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Int64`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_i64(value.rawValue)
    }

    /// Create a `Int64` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Int64`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_i64(value.rawValue)
    }

}

public extension Int8 {

// MARK: - Creating a Int8 From The Milliseconds Units

    /// Create a `Int8` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `Int8`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_i8(value.rawValue)
    }

    /// Create a `Int8` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `Int8`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_i8(value.rawValue)
    }

    /// Create a `Int8` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `Int8`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_i8(value.rawValue)
    }

    /// Create a `Int8` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `Int8`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_i8(value.rawValue)
    }

}

public extension UInt {

// MARK: - Creating a UInt From The Milliseconds Units

    /// Create a `UInt` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `UInt`.
    init(_ value: Milliseconds_t) {
        self = UInt(ms_t_to_u64(value.rawValue))
    }

    /// Create a `UInt` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `UInt`.
    init(_ value: Milliseconds_u) {
        self = UInt(ms_u_to_u64(value.rawValue))
    }

    /// Create a `UInt` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `UInt`.
    init(_ value: Milliseconds_f) {
        self = UInt(ms_f_to_u64(value.rawValue))
    }

    /// Create a `UInt` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `UInt`.
    init(_ value: Milliseconds_d) {
        self = UInt(ms_d_to_u64(value.rawValue))
    }

}

public extension UInt16 {

// MARK: - Creating a UInt16 From The Milliseconds Units

    /// Create a `UInt16` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `UInt16`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_u16(value.rawValue)
    }

    /// Create a `UInt16` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `UInt16`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_u16(value.rawValue)
    }

    /// Create a `UInt16` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `UInt16`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_u16(value.rawValue)
    }

    /// Create a `UInt16` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `UInt16`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_u16(value.rawValue)
    }

}

public extension UInt32 {

// MARK: - Creating a UInt32 From The Milliseconds Units

    /// Create a `UInt32` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `UInt32`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_u32(value.rawValue)
    }

    /// Create a `UInt32` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `UInt32`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_u32(value.rawValue)
    }

    /// Create a `UInt32` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `UInt32`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_u32(value.rawValue)
    }

    /// Create a `UInt32` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `UInt32`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_u32(value.rawValue)
    }

}

public extension UInt64 {

// MARK: - Creating a UInt64 From The Milliseconds Units

    /// Create a `UInt64` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `UInt64`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_u64(value.rawValue)
    }

    /// Create a `UInt64` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `UInt64`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_u64(value.rawValue)
    }

    /// Create a `UInt64` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `UInt64`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_u64(value.rawValue)
    }

    /// Create a `UInt64` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `UInt64`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_u64(value.rawValue)
    }

}

public extension UInt8 {

// MARK: - Creating a UInt8 From The Milliseconds Units

    /// Create a `UInt8` by converting a `Milliseconds_t`.
    ///
    /// - Parameter value: A `Milliseconds_t` value to convert to a `UInt8`.
    init(_ value: Milliseconds_t) {
        self = ms_t_to_u8(value.rawValue)
    }

    /// Create a `UInt8` by converting a `Milliseconds_u`.
    ///
    /// - Parameter value: A `Milliseconds_u` value to convert to a `UInt8`.
    init(_ value: Milliseconds_u) {
        self = ms_u_to_u8(value.rawValue)
    }

    /// Create a `UInt8` by converting a `Milliseconds_f`.
    ///
    /// - Parameter value: A `Milliseconds_f` value to convert to a `UInt8`.
    init(_ value: Milliseconds_f) {
        self = ms_f_to_u8(value.rawValue)
    }

    /// Create a `UInt8` by converting a `Milliseconds_d`.
    ///
    /// - Parameter value: A `Milliseconds_d` value to convert to a `UInt8`.
    init(_ value: Milliseconds_d) {
        self = ms_d_to_u8(value.rawValue)
    }

}
