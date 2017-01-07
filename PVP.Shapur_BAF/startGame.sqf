//startGame.sqf

//Check to see if teams are ready:
_rnd = 0;
_readyPoints = bluReady + opReady + rusReady;
_TDMTP = ["tdmspawn1","tdmspawn2","tdmspawn3","tdmspawn4","tdmspawn5","tdmspawn6","tdmspawn6","tdmspawn7"];
_bluUnits = [bluLead, blu1, blu2, blu3, blu4, blu5];
_opUnits = [opLead, op1, op2, op3, op4, op5];
_rusUnits = [rusLead, rus1, rus2, rus3, rus4, rus5];

if (gameStarting == 1) then
{
	"Game is starting. Please be paitent and do not spam the command." remoteExec ["hint"];
}
else
{
	if (_readyPoints == 3) then
	{
		gameStarting = 1;
		publicVariable "gameStarting";
		[{systemChat "All teams indicated they are ready. TDM will begin shortly. Please stand-by for teleport."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		
		sleep 5;
		
		_spawnPoint = _TDMTP call bis_fnc_selectRandom;
		_TDMTP = _TDMTP - [_spawnPoint];
		{
			_x setPos getMarkerPos(_spawnPoint);
		} forEach _bluUnits;
		_spawnPoint = _TDMTP call bis_fnc_selectRandom;
		_TDMTP = _TDMTP - [_spawnPoint];
		{
			_x setPos getMarkerPos(_spawnPoint);
		} forEach _opUnits;
		_spawnPoint = _TDMTP call bis_fnc_selectRandom;
		_TDMTP = _TDMTP - [_spawnPoint];
		{
			_x setPos getMarkerPos(_spawnPoint);
		} forEach _rusUnits;
		
		gameStarting = 0;
		publicVariable "gameStarting";
	}
	else
	{
		"One or more teams are not ready. Please ask team leaders to ready up." remoteExec ["hint"];
		_readyPoints = 0;
	};
};