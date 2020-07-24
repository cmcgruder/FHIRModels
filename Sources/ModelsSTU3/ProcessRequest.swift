//
//  ProcessRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ProcessRequest)
//  Copyright 2020 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import FMCore

/**
 Request to perform some action on or in regards to an existing resource.
 
 This resource provides the target, request and response, and action details for an action to be performed by the target
 on or about existing resources.
 */
open class ProcessRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .processRequest }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// The type of processing action being requested, for example Reversal, Readjudication,
	/// StatusRequest,PendedRequest.
	public var action: FHIRPrimitive<ActionList>?
	
	/// Party which is the target of the request
	public var target: Reference?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Reference to the Request resource
	public var request: Reference?
	
	/// Reference to the Response resource
	public var response: Reference?
	
	/// Remove history
	public var nullify: FHIRPrimitive<FHIRBool>?
	
	/// Reference number/string
	public var reference: FHIRPrimitive<FHIRString>?
	
	/// Items to re-adjudicate
	public var item: [ProcessRequestItem]?
	
	/// Resource type(s) to include
	public var include: [FHIRPrimitive<FHIRString>]?
	
	/// Resource type(s) to exclude
	public var exclude: [FHIRPrimitive<FHIRString>]?
	
	/// Selection period
	public var period: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: FHIRPrimitive<ActionList>? = nil,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							exclude: [FHIRPrimitive<FHIRString>]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							include: [FHIRPrimitive<FHIRString>]? = nil,
							item: [ProcessRequestItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							nullify: FHIRPrimitive<FHIRBool>? = nil,
							organization: Reference? = nil,
							period: Period? = nil,
							provider: Reference? = nil,
							reference: FHIRPrimitive<FHIRString>? = nil,
							request: Reference? = nil,
							response: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							target: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.action = action
		self.contained = contained
		self.created = created
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.include = include
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.nullify = nullify
		self.organization = organization
		self.period = period
		self.provider = provider
		self.reference = reference
		self.request = request
		self.response = response
		self.status = status
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action; case _action
		case created; case _created
		case exclude; case _exclude
		case identifier
		case include; case _include
		case item
		case nullify; case _nullify
		case organization
		case period
		case provider
		case reference; case _reference
		case request
		case response
		case status; case _status
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try FHIRPrimitive<ActionList>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.exclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.include = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .include, auxiliaryKey: ._include)
		self.item = try [ProcessRequestItem](from: _container, forKeyIfPresent: .item)
		self.nullify = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .nullify, auxiliaryKey: ._nullify)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.reference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try include?.encode(on: &_container, forKey: .include, auxiliaryKey: ._include)
		try item?.encode(on: &_container, forKey: .item)
		try nullify?.encode(on: &_container, forKey: .nullify, auxiliaryKey: ._nullify)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try provider?.encode(on: &_container, forKey: .provider)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcessRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && created == _other.created
		    && exclude == _other.exclude
		    && identifier == _other.identifier
		    && include == _other.include
		    && item == _other.item
		    && nullify == _other.nullify
		    && organization == _other.organization
		    && period == _other.period
		    && provider == _other.provider
		    && reference == _other.reference
		    && request == _other.request
		    && response == _other.response
		    && status == _other.status
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(created)
		hasher.combine(exclude)
		hasher.combine(identifier)
		hasher.combine(include)
		hasher.combine(item)
		hasher.combine(nullify)
		hasher.combine(organization)
		hasher.combine(period)
		hasher.combine(provider)
		hasher.combine(reference)
		hasher.combine(request)
		hasher.combine(response)
		hasher.combine(status)
		hasher.combine(target)
	}
}

/**
 Items to re-adjudicate.
 
 List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
 */
open class ProcessRequestItem: BackboneElement {
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRInteger>
	
	/// Designated initializer taking all required properties
	public init(sequenceLinkId: FHIRPrimitive<FHIRInteger>) {
		self.sequenceLinkId = sequenceLinkId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							sequenceLinkId: FHIRPrimitive<FHIRInteger>)
	{
		self.init(sequenceLinkId: sequenceLinkId)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case sequenceLinkId; case _sequenceLinkId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.sequenceLinkId = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcessRequestItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return sequenceLinkId == _other.sequenceLinkId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(sequenceLinkId)
	}
}
