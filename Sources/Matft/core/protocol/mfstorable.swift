//
//  File.swift
//  
//
//  Created by Junnosuke Kado on 2022/02/06.
//

import Foundation

/// The type comformed to this protocol can use MfArray
public protocol MfStoredTypeUsable: MfTypeUsable{
    static func from<T: MfTypeUsable>(_ value: T) -> Self
    static func nealy_equal(_ lhs: Self, _ rhs: Self) -> Bool
    
    //======= vDSP ========//
    static var vDSP_neg_func: vDSP_convert_func<Self, Self>{ get }
    
    static var vDSP_addvv_func: vDSP_biopvv_func<Self>{ get }
    static var vDSP_subvv_func: vDSP_biopvv_func<Self>{ get }
    static var vDSP_mulvv_func: vDSP_biopvv_func<Self>{ get }
    static var vDSP_divvv_func: vDSP_biopvv_func<Self>{ get }
    
    static var vDSP_vcmprs_func: vDSP_vcmprs_func<Self>{ get }
    
    static var vDSP_vminmg_func: vDSP_vminmg_func<Self>{ get }
    static var vDSP_viclip_func: vDSP_viclip_func<Self>{ get }
    
    //======= cblas ========//
    static var cblas_copy_func: cblas_copy_func<Self>{ get }
}
