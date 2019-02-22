_baseBackPack = [];
_BackPackList = (configfile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;

{
	if (getnumber (configFile >> "cfgWeapons" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Equipment") && ((_itemType select 1) == "Backpack")) then {
			_baseName = _x call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseBackPack)) then {
				_baseBackPack = _baseBackPack + [_baseName];
			};
		};
	};

} foreach _BackPackList;