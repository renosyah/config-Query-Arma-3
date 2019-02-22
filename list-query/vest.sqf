_baseVest = [];
_VestList = (configfile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;

{
	if (getnumber (configFile >> "cfgWeapons" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Equipment") && ((_itemType select 1) == "Vest")) then {
			_baseName = _x call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseVest)) then {
				_baseVest = _baseVest + [_baseName];
			};
		};
	};

} foreach _VestList;