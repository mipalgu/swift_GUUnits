/*
* Degrees.swift
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

public struct Degrees_t {

    public let rawValue: degrees_t

    public init(rawValue: degrees_t) {
        self.rawValue = rawValue
    }

    public var toRadians_t: Radians_t {
        return Radians_t(deg_t_to_rad_t(self.rawValue))
    }
    
    public var toRadians_u: Radians_u {
        return Radians_u(deg_t_to_rad_u(self.rawValue))
    }
    
    public var toRadians_f: Radians_f {
        return Radians_f(deg_t_to_rad_f(self.rawValue))
    }
    
    public var toRadians_d: Radians_d {
        return Radians_d(deg_t_to_rad_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(deg_t_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(deg_t_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(deg_t_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(deg_t_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(deg_t_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(deg_t_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(deg_t_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(deg_t_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(deg_t_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(deg_t_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(deg_t_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(deg_t_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_deg_t(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_deg_t(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_deg_t(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_deg_t(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_deg_t(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_deg_t(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_deg_t(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_deg_t(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_deg_t(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_deg_t(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_deg_t(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_deg_t(value)
    }

    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_deg_t(value.rawValue)
    }
    
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_deg_t(value.rawValue)
    }
    
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_deg_t(value.rawValue)
    }
    
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_deg_t(value.rawValue)
    }

    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_deg_t(value.rawValue)
    }
    
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_deg_t(value.rawValue)
    }
    
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_deg_t(value.rawValue)
    }

}

public struct Degrees_u {

    public let rawValue: degrees_u

    public init(rawValue: degrees_u) {
        self.rawValue = rawValue
    }

    public var toRadians_t: Radians_t {
        return Radians_t(deg_u_to_rad_t(self.rawValue))
    }
    
    public var toRadians_u: Radians_u {
        return Radians_u(deg_u_to_rad_u(self.rawValue))
    }
    
    public var toRadians_f: Radians_f {
        return Radians_f(deg_u_to_rad_f(self.rawValue))
    }
    
    public var toRadians_d: Radians_d {
        return Radians_d(deg_u_to_rad_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(deg_u_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(deg_u_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(deg_u_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(deg_u_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(deg_u_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(deg_u_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(deg_u_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(deg_u_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(deg_u_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(deg_u_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(deg_u_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(deg_u_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_deg_u(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_deg_u(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_deg_u(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_deg_u(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_deg_u(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_deg_u(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_deg_u(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_deg_u(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_deg_u(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_deg_u(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_deg_u(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_deg_u(value)
    }

    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_deg_u(value.rawValue)
    }
    
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_deg_u(value.rawValue)
    }
    
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_deg_u(value.rawValue)
    }
    
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_deg_u(value.rawValue)
    }

    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_deg_u(value.rawValue)
    }
    
    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_deg_u(value.rawValue)
    }
    
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_deg_u(value.rawValue)
    }

}

public struct Degrees_f {

    public let rawValue: degrees_f

    public init(rawValue: degrees_f) {
        self.rawValue = rawValue
    }

    public var toRadians_t: Radians_t {
        return Radians_t(deg_f_to_rad_t(self.rawValue))
    }
    
    public var toRadians_u: Radians_u {
        return Radians_u(deg_f_to_rad_u(self.rawValue))
    }
    
    public var toRadians_f: Radians_f {
        return Radians_f(deg_f_to_rad_f(self.rawValue))
    }
    
    public var toRadians_d: Radians_d {
        return Radians_d(deg_f_to_rad_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(deg_f_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(deg_f_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(deg_f_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(deg_f_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(deg_f_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(deg_f_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(deg_f_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(deg_f_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(deg_f_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(deg_f_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(deg_f_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(deg_f_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_deg_f(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_deg_f(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_deg_f(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_deg_f(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_deg_f(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_deg_f(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_deg_f(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_deg_f(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_deg_f(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_deg_f(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_deg_f(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_deg_f(value)
    }

    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_deg_f(value.rawValue)
    }
    
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_deg_f(value.rawValue)
    }
    
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_deg_f(value.rawValue)
    }
    
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_deg_f(value.rawValue)
    }

    public init(_ value: Degrees_d) {
        self.rawValue = deg_d_to_deg_f(value.rawValue)
    }
    
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_deg_f(value.rawValue)
    }
    
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_deg_f(value.rawValue)
    }

}

public struct Degrees_d {

    public let rawValue: degrees_d

    public init(rawValue: degrees_d) {
        self.rawValue = rawValue
    }

    public var toRadians_t: Radians_t {
        return Radians_t(deg_d_to_rad_t(self.rawValue))
    }
    
    public var toRadians_u: Radians_u {
        return Radians_u(deg_d_to_rad_u(self.rawValue))
    }
    
    public var toRadians_f: Radians_f {
        return Radians_f(deg_d_to_rad_f(self.rawValue))
    }
    
    public var toRadians_d: Radians_d {
        return Radians_d(deg_d_to_rad_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(deg_d_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(deg_d_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(deg_d_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(deg_d_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(deg_d_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(deg_d_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(deg_d_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(deg_d_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(deg_d_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(deg_d_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(deg_d_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(deg_d_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_deg_d(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_deg_d(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_deg_d(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_deg_d(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_deg_d(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_deg_d(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_deg_d(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_deg_d(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_deg_d(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_deg_d(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_deg_d(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_deg_d(value)
    }

    public init(_ value: Radians_t) {
        self.rawValue = rad_t_to_deg_d(value.rawValue)
    }
    
    public init(_ value: Radians_u) {
        self.rawValue = rad_u_to_deg_d(value.rawValue)
    }
    
    public init(_ value: Radians_f) {
        self.rawValue = rad_f_to_deg_d(value.rawValue)
    }
    
    public init(_ value: Radians_d) {
        self.rawValue = rad_d_to_deg_d(value.rawValue)
    }

    public init(_ value: Degrees_f) {
        self.rawValue = deg_f_to_deg_d(value.rawValue)
    }
    
    public init(_ value: Degrees_t) {
        self.rawValue = deg_t_to_deg_d(value.rawValue)
    }
    
    public init(_ value: Degrees_u) {
        self.rawValue = deg_u_to_deg_d(value.rawValue)
    }

}
