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
 A coded concept indicating the current status of a MedicationStatement.
 
 URL: http://hl7.org/fhir/medication-statement-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-status
 */
public enum MedicationStatementStatus: String, FHIRPrimitiveType {
	
	/// The medication is still being taken.
	case active = "active"
	
	/// The medication is no longer being taken.
	case completed = "completed"
	
	/// The statement was recorded incorrectly.
	case enteredInError = "entered-in-error"
	
	/// The medication may be taken at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
	/// called "suspended".
	case onHold = "on-hold"
}
