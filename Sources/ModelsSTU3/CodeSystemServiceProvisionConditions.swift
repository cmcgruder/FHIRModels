//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The code(s) that detail the conditions under which the healthcare service is available/offered.
 
 URL: http://hl7.org/fhir/service-provision-conditions
 ValueSet: http://hl7.org/fhir/ValueSet/service-provision-conditions
 */
public enum ServiceProvisionConditions: String, FHIRPrimitiveType {
	
	/// This service is available for no patient cost.
	case free = "free"
	
	/// There are discounts available on this service for qualifying patients.
	case disc = "disc"
	
	/// Fees apply for this service.
	case cost = "cost"
}
