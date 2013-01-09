﻿/*  ***** BEGIN LICENSE BLOCK *****
 * 
 * Version 1.1 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * 
 * http://www.mozilla.org/MPL/
 * 
 * Software distributed under the License is distributed on an "AS IS" basis, 
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License 
 * for the specific language governing rights and
 * limitations under the License.
 * 
 * The Original Code is [Open Source Virtual Machine.].
 *
 * The Initial Developer of the Original Code is
 * Adobe System Incorporated.
 * Portions created by the Initial Developer are Copyright (C) 2004-2006
 * the Initial Developer. All Rights Reserved.
 * 
 *
 * Contributor(s):
 * 
 *   Adobe AS3 Team
 * 
 *   Mateusz Malczak ( http://segfaultlabs.com )
 * 
 * ***** END LICENSE BLOCK ***** */

package com.segfaultlabs.swfutils.ABC {

	/**
	 * All constats used by parser and code dumping funcitons.
	 *  
	 * @author malczak
	 * 
	 */
	final public class ABCConsts 
	{
		// method flags
		static public const NEED_ARGUMENTS:int = 		0x01
		static public const NEED_ACTIVATION:int = 	0x02
		static public const NEED_REST:int = 			0x04
		static public const HAS_OPTIONAL:int = 		0x08
		static public const IGNORE_REST:int = 		0x10
		static public const NATIVE:	int =				0x20
		static public const HAS_ParamNames:int =      0x80
		
		static public const CONSTANT_Utf8					:int = 0x01
		static public const CONSTANT_Int					:int = 0x03
		static public const CONSTANT_UInt					:int = 0x04
		static public const CONSTANT_PrivateNs			:int = 0x05 // non-shared namespace
		static public const CONSTANT_Double				:int = 0x06
		static public const CONSTANT_Qname				:int = 0x07 // o.ns::name, ct ns, ct name
		static public const CONSTANT_Namespace			:int = 0x08 // use namespace
		static public const CONSTANT_Multiname			:int = 0x09 // o.name, ct nsset, ct name
		// not used 
		static public const CONSTANT_False				:int = 0x0A
		static public const CONSTANT_True					:int = 0x0B
		
		static public const CONSTANT_Null					:int = 0x0C
		static public const CONSTANT_QnameA				:int = 0x0D // o.@ns::name, ct ns, ct attr-name
		static public const CONSTANT_MultinameA			:int = 0x0E // o.@name, ct attr-name
		static public const CONSTANT_RTQname				:int = 0x0F // o.ns::name, rt ns, ct name
		static public const CONSTANT_RTQnameA				:int = 0x10 // o.@ns::name, rt ns, ct attr-name
		static public const CONSTANT_RTQnameL				:int = 0x11 // o.ns::[name], rt ns, rt name
		static public const CONSTANT_RTQnameLA			:int = 0x12 // o.@ns::[name], rt ns, rt attr-name
		static public const CONSTANT_NameL				:int = 0x13	// o.[], ns=public implied, rt name
		static public const CONSTANT_NameLA				:int = 0x14 // o.@[], ns=public implied, rt attr-name
		static public const CONSTANT_TypeName 		    :int = 0x1D; 
				
		static public const CONSTANT_NamespaceSet			:int = 0x15
		static public const CONSTANT_PackageNs			:int = 0x16
		static public const CONSTANT_PackageInternalNs	:int = 0x17
		static public const CONSTANT_ProtectedNs			:int = 0x18
		static public const CONSTANT_ExplicitNamespace	:int = 0x19 // ExpicitNamespace, use namespace
		static public const CONSTANT_StaticProtectedNs	:int = 0x1a // StaticProtectedNamespace
		static public const CONSTANT_MultinameL           :int = 0x1B
		static public const CONSTANT_MultinameLA          :int = 0x1C
		
		static public const constantKinds:Array = [ "0", "utf8", "2",
			"int", "uint", "private", "double", "qname", "namespace",
			"ABCMultiname", "false", "true", "null", "@qname", "@ABCMultiname", "rtqname",
			"@rtqname", "[qname]", "@[qname]", "[name]", "@[name]", "nsset"
		]
		
		static public const TRAIT_Slot		:int = 0x00
		static public const TRAIT_Method		:int = 0x01
		static public const TRAIT_Getter		:int = 0x02
		static public const TRAIT_Setter		:int = 0x03
		static public const TRAIT_Class		:int = 0x04
		static public const TRAIT_Function	:int = 0x05
		static public const TRAIT_Const		:int = 0x06
		
		static public const traitKinds:Array = [
			"var", 
			"function", 
			"function get", 
			"function set", 
			"class", 
			"function", 
			"const"
		]
		
		static public var totalSize:int
		static public var opSizes:Array = new Array(256)

		static public const ATTR_final			  :int = 0x01; // 1=final, 0=virtual (for methods)
		static public const ATTR_override         :int = 0x02; // 1=override, 0=new
		static public const ATTR_metadata         :int = 0x04; // 1=has ABCMetaData, 0=no ABCMetaData
		static public const ATTR_public           :int = 0x08; // 1=add public namespace
		
		static public const CLASS_FLAG_sealed		:int = 0x01;
		static public const CLASS_FLAG_final		:int = 0x02;
		static public const CLASS_FLAG_interface	:int = 0x04;		
		
	}
}