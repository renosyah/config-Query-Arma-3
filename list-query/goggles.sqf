_baseGoggles = [];
_gogglesList = (configfile >> "CfgGlasses") call BIS_fnc_getCfgSubClasses;
{
	if (getnumber (configFile >> "CfgGlasses" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Equipment") && ((_itemType select 1) == "Glasses")) then {
			_baseName = _x call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseGoggles)) then {
				_baseGoggles = _baseGoggles + [_baseName];
			};
		};
	};

} foreach _gogglesList;