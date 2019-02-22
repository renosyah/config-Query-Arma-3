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

_baseUniform = [];
_UniformList = (configfile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;

{
	if (getnumber (configFile >> "cfgWeapons" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Equipment") && ((_itemType select 1) == "Uniform")) then {
			_baseName = _x call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseUniform)) then {
				_baseUniform = _baseUniform + [_baseName];
			};
		};
	};

} foreach _UniformList;


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

_baseHelm = [];
_HelmList = (configfile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;

{
	if (getnumber (configFile >> "cfgWeapons" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Equipment") && ((_itemType select 1) == "Headgear")) then {
			_baseName = _x call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseHelm)) then {
				_baseHelm = _baseHelm + [_baseName];
			};
		};
	};

} foreach _HelmList;

{
	_x addGoggles (_baseGoggles call BIS_fnc_selectRandom);
	_x addVest (_baseVest call BIS_fnc_selectRandom);
	_x forceAddUniform (_baseUniform call BIS_fnc_selectRandom);
	_x addBackpack (_baseBackPack call BIS_fnc_selectRandom);
	_x addHeadgear (_baseHelm call BIS_fnc_selectRandom);

} forEach AllUnits;

