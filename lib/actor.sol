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

	function setActorName(string memory value) public onlyOwnerOrDelegate {
		_name = value;
	}

	function setActorSummary(string memory value) public onlyOwnerOrDelegate {
		_summary = value;
	}

	function setActorType(string memory value) public onlyOwnerOrDelegate {
		_type = value;
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////
        // EXTERNAL VIEWS                                                                                 //
        ////////////////////////////////////////////////////////////////////////////////////////////////////

	function actorName() public view returns (string memory) {
		return _name;
	}

	function actorSummary() public view returns (string memory) {
		return _summary;
	}

	function actorType() public view returns (string memory) {
		return _type;
	}
}
