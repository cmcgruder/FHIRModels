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
 This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
 
 URL: http://hl7.org/fhir/participant-type
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-participant-type
 */
public enum ParticipantType: String, FHIRPrimitiveType {
	
	/// A translator who is facilitating communication with the patient during the encounter.
	case translator = "translator"
	
	/// A person to be contacted in case of an emergency during the encounter.
	case emergency = "emergency"
}