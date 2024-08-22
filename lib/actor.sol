pragma solidity ^0.8.13;

import "@reiver/delegatable/delegatable.sol";
import "@reiver/identifiable/primarilyidentifiable.sol";

contract Actor is Delegatable, PrimarilyIdentifiable {

	////////////////////////////////////////////////////////////////////////////////////////////////////
	// STORAGE                                                                                        //
	////////////////////////////////////////////////////////////////////////////////////////////////////

	string private _name;
	string private _summary;
	string private _type;

	////////////////////////////////////////////////////////////////////////////////////////////////////
	// CONSTRUCTOR, FALLBACKS                                                                         //
	////////////////////////////////////////////////////////////////////////////////////////////////////

	constructor(uint actorid) PrimarilyIdentifiable(actorid) {
		// nothing here
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////
	// PUBLIC FUNCTIONS                                                                               //
	////////////////////////////////////////////////////////////////////////////////////////////////////

	function setActorName(string value) public onlyOwnerOrDelegate {
		_name = value;
	}

	function setActorSummary(string value) public onlyOwnerOrDelegate {
		_summary = value;
	}

	function setActorType(string value) public onlyOwnerOrDelegate {
		_type = value;
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////
        // EXTERNAL VIEWS                                                                                 //
        ////////////////////////////////////////////////////////////////////////////////////////////////////

	function actorName() public view returns (string) {
		return _name;
	}

	function actorSummary() public view returns (string) {
		return _summary;
	}

	function actorType() public view returns (string) {
		return _type;
	}
}
