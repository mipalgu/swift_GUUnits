/*
* Metres.swift
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

public struct Metres_t {

    public let rawValue: metres_t

    public init(rawValue: metres_t) {
        self.rawValue = rawValue
    }

    public var toCentimetres_t: Centimetres_t {
        return Centimetres_t(m_t_to_cm_t(self.rawValue))
    }
    
    public var toCentimetres_u: Centimetres_u {
        return Centimetres_u(m_t_to_cm_u(self.rawValue))
    }
    
    public var toCentimetres_f: Centimetres_f {
        return Centimetres_f(m_t_to_cm_f(self.rawValue))
    }
    
    public var toCentimetres_d: Centimetres_d {
        return Centimetres_d(m_t_to_cm_d(self.rawValue))
    }
    
    public var toMillimetres_t: Millimetres_t {
        return Millimetres_t(m_t_to_mm_t(self.rawValue))
    }
    
    public var toMillimetres_u: Millimetres_u {
        return Millimetres_u(m_t_to_mm_u(self.rawValue))
    }
    
    public var toMillimetres_f: Millimetres_f {
        return Millimetres_f(m_t_to_mm_f(self.rawValue))
    }
    
    public var toMillimetres_d: Millimetres_d {
        return Millimetres_d(m_t_to_mm_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(m_t_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(m_t_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(m_t_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(m_t_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(m_t_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(m_t_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(m_t_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(m_t_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(m_t_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(m_t_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(m_t_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(m_t_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_m_t(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_m_t(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_m_t(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_m_t(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_m_t(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_m_t(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_m_t(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_m_t(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_m_t(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_m_t(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_m_t(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_m_t(value)
    }

    public init(_ value: Centimetres_t) {
        self.rawValue = cm_t_to_m_t(value.rawValue)
    }
    
    public init(_ value: Centimetres_u) {
        self.rawValue = cm_u_to_m_t(value.rawValue)
    }
    
    public init(_ value: Centimetres_f) {
        self.rawValue = cm_f_to_m_t(value.rawValue)
    }
    
    public init(_ value: Centimetres_d) {
        self.rawValue = cm_d_to_m_t(value.rawValue)
    }
    
    public init(_ value: Millimetres_t) {
        self.rawValue = mm_t_to_m_t(value.rawValue)
    }
    
    public init(_ value: Millimetres_u) {
        self.rawValue = mm_u_to_m_t(value.rawValue)
    }
    
    public init(_ value: Millimetres_f) {
        self.rawValue = mm_f_to_m_t(value.rawValue)
    }
    
    public init(_ value: Millimetres_d) {
        self.rawValue = mm_d_to_m_t(value.rawValue)
    }

    public init(_ value: Metres_d) {
        self.rawValue = m_d_to_m_t(value.rawValue)
    }
    
    public init(_ value: Metres_f) {
        self.rawValue = m_f_to_m_t(value.rawValue)
    }
    
    public init(_ value: Metres_u) {
        self.rawValue = m_u_to_m_t(value.rawValue)
    }

}

public struct Metres_u {

    public let rawValue: metres_u

    public init(rawValue: metres_u) {
        self.rawValue = rawValue
    }

    public var toCentimetres_t: Centimetres_t {
        return Centimetres_t(m_u_to_cm_t(self.rawValue))
    }
    
    public var toCentimetres_u: Centimetres_u {
        return Centimetres_u(m_u_to_cm_u(self.rawValue))
    }
    
    public var toCentimetres_f: Centimetres_f {
        return Centimetres_f(m_u_to_cm_f(self.rawValue))
    }
    
    public var toCentimetres_d: Centimetres_d {
        return Centimetres_d(m_u_to_cm_d(self.rawValue))
    }
    
    public var toMillimetres_t: Millimetres_t {
        return Millimetres_t(m_u_to_mm_t(self.rawValue))
    }
    
    public var toMillimetres_u: Millimetres_u {
        return Millimetres_u(m_u_to_mm_u(self.rawValue))
    }
    
    public var toMillimetres_f: Millimetres_f {
        return Millimetres_f(m_u_to_mm_f(self.rawValue))
    }
    
    public var toMillimetres_d: Millimetres_d {
        return Millimetres_d(m_u_to_mm_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(m_u_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(m_u_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(m_u_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(m_u_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(m_u_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(m_u_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(m_u_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(m_u_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(m_u_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(m_u_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(m_u_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(m_u_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_m_u(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_m_u(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_m_u(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_m_u(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_m_u(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_m_u(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_m_u(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_m_u(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_m_u(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_m_u(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_m_u(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_m_u(value)
    }

    public init(_ value: Centimetres_t) {
        self.rawValue = cm_t_to_m_u(value.rawValue)
    }
    
    public init(_ value: Centimetres_u) {
        self.rawValue = cm_u_to_m_u(value.rawValue)
    }
    
    public init(_ value: Centimetres_f) {
        self.rawValue = cm_f_to_m_u(value.rawValue)
    }
    
    public init(_ value: Centimetres_d) {
        self.rawValue = cm_d_to_m_u(value.rawValue)
    }
    
    public init(_ value: Millimetres_t) {
        self.rawValue = mm_t_to_m_u(value.rawValue)
    }
    
    public init(_ value: Millimetres_u) {
        self.rawValue = mm_u_to_m_u(value.rawValue)
    }
    
    public init(_ value: Millimetres_f) {
        self.rawValue = mm_f_to_m_u(value.rawValue)
    }
    
    public init(_ value: Millimetres_d) {
        self.rawValue = mm_d_to_m_u(value.rawValue)
    }

    public init(_ value: Metres_d) {
        self.rawValue = m_d_to_m_u(value.rawValue)
    }
    
    public init(_ value: Metres_f) {
        self.rawValue = m_f_to_m_u(value.rawValue)
    }
    
    public init(_ value: Metres_t) {
        self.rawValue = m_t_to_m_u(value.rawValue)
    }

}

public struct Metres_f {

    public let rawValue: metres_f

    public init(rawValue: metres_f) {
        self.rawValue = rawValue
    }

    public var toCentimetres_t: Centimetres_t {
        return Centimetres_t(m_f_to_cm_t(self.rawValue))
    }
    
    public var toCentimetres_u: Centimetres_u {
        return Centimetres_u(m_f_to_cm_u(self.rawValue))
    }
    
    public var toCentimetres_f: Centimetres_f {
        return Centimetres_f(m_f_to_cm_f(self.rawValue))
    }
    
    public var toCentimetres_d: Centimetres_d {
        return Centimetres_d(m_f_to_cm_d(self.rawValue))
    }
    
    public var toMillimetres_t: Millimetres_t {
        return Millimetres_t(m_f_to_mm_t(self.rawValue))
    }
    
    public var toMillimetres_u: Millimetres_u {
        return Millimetres_u(m_f_to_mm_u(self.rawValue))
    }
    
    public var toMillimetres_f: Millimetres_f {
        return Millimetres_f(m_f_to_mm_f(self.rawValue))
    }
    
    public var toMillimetres_d: Millimetres_d {
        return Millimetres_d(m_f_to_mm_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(m_f_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(m_f_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(m_f_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(m_f_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(m_f_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(m_f_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(m_f_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(m_f_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(m_f_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(m_f_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(m_f_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(m_f_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_m_f(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_m_f(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_m_f(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_m_f(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_m_f(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_m_f(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_m_f(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_m_f(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_m_f(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_m_f(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_m_f(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_m_f(value)
    }

    public init(_ value: Centimetres_t) {
        self.rawValue = cm_t_to_m_f(value.rawValue)
    }
    
    public init(_ value: Centimetres_u) {
        self.rawValue = cm_u_to_m_f(value.rawValue)
    }
    
    public init(_ value: Centimetres_f) {
        self.rawValue = cm_f_to_m_f(value.rawValue)
    }
    
    public init(_ value: Centimetres_d) {
        self.rawValue = cm_d_to_m_f(value.rawValue)
    }
    
    public init(_ value: Millimetres_t) {
        self.rawValue = mm_t_to_m_f(value.rawValue)
    }
    
    public init(_ value: Millimetres_u) {
        self.rawValue = mm_u_to_m_f(value.rawValue)
    }
    
    public init(_ value: Millimetres_f) {
        self.rawValue = mm_f_to_m_f(value.rawValue)
    }
    
    public init(_ value: Millimetres_d) {
        self.rawValue = mm_d_to_m_f(value.rawValue)
    }

    public init(_ value: Metres_d) {
        self.rawValue = m_d_to_m_f(value.rawValue)
    }
    
    public init(_ value: Metres_t) {
        self.rawValue = m_t_to_m_f(value.rawValue)
    }
    
    public init(_ value: Metres_u) {
        self.rawValue = m_u_to_m_f(value.rawValue)
    }

}

public struct Metres_d {

    public let rawValue: metres_d

    public init(rawValue: metres_d) {
        self.rawValue = rawValue
    }

    public var toCentimetres_t: Centimetres_t {
        return Centimetres_t(m_d_to_cm_t(self.rawValue))
    }
    
    public var toCentimetres_u: Centimetres_u {
        return Centimetres_u(m_d_to_cm_u(self.rawValue))
    }
    
    public var toCentimetres_f: Centimetres_f {
        return Centimetres_f(m_d_to_cm_f(self.rawValue))
    }
    
    public var toCentimetres_d: Centimetres_d {
        return Centimetres_d(m_d_to_cm_d(self.rawValue))
    }
    
    public var toMillimetres_t: Millimetres_t {
        return Millimetres_t(m_d_to_mm_t(self.rawValue))
    }
    
    public var toMillimetres_u: Millimetres_u {
        return Millimetres_u(m_d_to_mm_u(self.rawValue))
    }
    
    public var toMillimetres_f: Millimetres_f {
        return Millimetres_f(m_d_to_mm_f(self.rawValue))
    }
    
    public var toMillimetres_d: Millimetres_d {
        return Millimetres_d(m_d_to_mm_d(self.rawValue))
    }

    public var toInt8: Int8 {
        Int8(m_d_to_i8(self.rawValue))
    }
    
    public var toInt16: Int16 {
        Int16(m_d_to_i16(self.rawValue))
    }
    
    public var toInt32: Int32 {
        Int32(m_d_to_i32(self.rawValue))
    }
    
    public var toInt64: Int64 {
        Int64(m_d_to_i64(self.rawValue))
    }
    
    public var toInt: Int {
        Int(m_d_to_i(self.rawValue))
    }
    
    public var toUInt8: UInt8 {
        UInt8(m_d_to_u8(self.rawValue))
    }
    
    public var toUInt16: UInt16 {
        UInt16(m_d_to_u16(self.rawValue))
    }
    
    public var toUInt32: UInt32 {
        UInt32(m_d_to_u32(self.rawValue))
    }
    
    public var toUInt64: UInt64 {
        UInt64(m_d_to_u64(self.rawValue))
    }
    
    public var toUInt: UInt {
        UInt(m_d_to_u(self.rawValue))
    }
    
    public var toFloat: Float {
        Float(m_d_to_f(self.rawValue))
    }
    
    public var toDouble: Double {
        Double(m_d_to_d(self.rawValue))
    }

    public init(_ value: Int8) {
        self.rawValue = i8_to_m_d(value)
    }
    
    public init(_ value: Int16) {
        self.rawValue = i16_to_m_d(value)
    }
    
    public init(_ value: Int32) {
        self.rawValue = i32_to_m_d(value)
    }
    
    public init(_ value: Int64) {
        self.rawValue = i64_to_m_d(value)
    }
    
    public init(_ value: Int) {
        self.rawValue = i_to_m_d(CInt(value))
    }
    
    public init(_ value: UInt8) {
        self.rawValue = u8_to_m_d(value)
    }
    
    public init(_ value: UInt16) {
        self.rawValue = u16_to_m_d(value)
    }
    
    public init(_ value: UInt32) {
        self.rawValue = u32_to_m_d(value)
    }
    
    public init(_ value: UInt64) {
        self.rawValue = u64_to_m_d(value)
    }
    
    public init(_ value: UInt) {
        self.rawValue = u_to_m_d(CUnsignedInt(value))
    }
    
    public init(_ value: Float) {
        self.rawValue = f_to_m_d(value)
    }
    
    public init(_ value: Double) {
        self.rawValue = d_to_m_d(value)
    }

    public init(_ value: Centimetres_t) {
        self.rawValue = cm_t_to_m_d(value.rawValue)
    }
    
    public init(_ value: Centimetres_u) {
        self.rawValue = cm_u_to_m_d(value.rawValue)
    }
    
    public init(_ value: Centimetres_f) {
        self.rawValue = cm_f_to_m_d(value.rawValue)
    }
    
    public init(_ value: Centimetres_d) {
        self.rawValue = cm_d_to_m_d(value.rawValue)
    }
    
    public init(_ value: Millimetres_t) {
        self.rawValue = mm_t_to_m_d(value.rawValue)
    }
    
    public init(_ value: Millimetres_u) {
        self.rawValue = mm_u_to_m_d(value.rawValue)
    }
    
    public init(_ value: Millimetres_f) {
        self.rawValue = mm_f_to_m_d(value.rawValue)
    }
    
    public init(_ value: Millimetres_d) {
        self.rawValue = mm_d_to_m_d(value.rawValue)
    }

    public init(_ value: Metres_f) {
        self.rawValue = m_f_to_m_d(value.rawValue)
    }
    
    public init(_ value: Metres_t) {
        self.rawValue = m_t_to_m_d(value.rawValue)
    }
    
    public init(_ value: Metres_u) {
        self.rawValue = m_u_to_m_d(value.rawValue)
    }

}
