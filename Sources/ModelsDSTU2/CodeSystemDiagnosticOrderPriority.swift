//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 The clinical priority of a diagnostic order.
 
 URL: http://hl7.org/fhir/diagnostic-order-priority
 ValueSet: http://hl7.org/fhir/ValueSet/diagnostic-order-priority
 */
public enum DiagnosticOrderPriority: String, FHIRPrimitiveType {
	
	/// The order has a normal priority .
	case routine = "routine"
	
	/// The order should be urgently.
	case urgent = "urgent"
	
	/// The order is time-critical.
	case stat = "stat"
	
	/// The order should be acted on as soon as possible.
	case asap = "asap"
}
