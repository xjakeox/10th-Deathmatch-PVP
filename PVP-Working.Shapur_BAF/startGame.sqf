//startGame.sqf

//Check to see if teams are ready:
_rnd = 0;
_readyPoints = bluReady + opReady + rusReady;
_bluUnits = [bluLead, blu1, blu2, blu3, blu4];
_opUnits = [opLead, op1, op2, op3, op4];
_rusUnits = [rusLead, rus1, rus2, rus3, rus4];

if (_readyPoints == 3) then
{
	"All teams indicated they are ready. TDM will begin shortly. Please stand-by for teleport." remoteExec ["globalChat"];
	
	sleep 5;
	
	_rnd = floor (random 3);
	
	if(_rnd == 0) then
	{
		{
			_x setPos getMarkerPos("tdmspawn1");
		} forEach _bluUnits;
		{
			_x setPos getMarkerPos("tdmspawn2");
		} forEach _opUnits;
		{
			_x setPos getMarkerPos("tdmspawn3");
		} forEach _rusUnits;
	};
	if(_rnd == 1) then
	{
		{
			_x SetPos getMarkerPos("tdmspawn2");
		} forEach _bluUnits;
		{
			_x SetPos getMarkerPos("tdmspawn3");
		} forEach _opUnits;
		{
			_x SetPos getMarkerPos("tdmspawn1");
		} forEach _rusUnits;
		
	};
	if(_rnd == 2) then
	{
		{
			_x SetPos getMarkerPos("tdmspawn3");
		} forEach _bluUnits;
		{
			_x SetPos getMarkerPos("tdmspawn1");
		} forEach _opUnits;
		
		{
			_x SetPos getMarkerPos("tdmspawn2");
		} forEach _rusUnits;
		
	};
	
}
else
{
	"One or more teams are not ready. Please ask team leaders to ready up." remoteExec ["hint"];
	_readyPoints = 0;
};

