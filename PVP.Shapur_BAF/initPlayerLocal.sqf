_teamLeads = [bluLead, opLead, rusLead];
_boardArray = [ bluBoard, opBoard, rusBoard];
_civs = [civ1,civ2,civ3,civ4,civ5];
if ((side player) == civilian) then {setplayerrespawntime 999999};
waitUntil {!isNull player};

{
	if (player == _x) then
	{
		_currentLead = player;
		{
			_x addAction ["<t color='#37FF58'>Ready Team</t>", "readyTeam.sqf"];
			_x addAction ["<t color='#FF0000'>Unready Team</t>", "unreadyTeam.sqf"];
			_x addAction ["<t color='#3374FF'>Start Game</t>", "startGame.sqf"];
		} forEach _boardArray;
		
		sleep 1;
		
		switch(_currentLead) do
		{
			case bluLead:
			{
				bluReady = 0;
				publicVariable "bluReady";
			};
			case opLead:
			{
				opReady = 0;
				publicVariable "opReady";
			};
			case rusLead:
			{
				rusReady = 0;
				publicVariable "rusReady";
			};
		};
	};
} forEach _teamLeads;

{
	if (player == _x) then
	{
		_x setDamage 500;
	}
} forEach _civs;