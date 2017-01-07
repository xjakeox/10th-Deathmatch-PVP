_readyTeam = _this select 0;


switch(_readyTeam) do
{ 
	case bluBoard:
	{ 
		if(bluReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			bluReady = 0;
			"US Army is no longer ready to proceed." remoteExec ["hint"];
			publicVariable "bluReady";
		};
	};
	case opBoard:
	{
		if(opReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			opReady = 0;
			"Taliban is no longer ready to proceed." remoteExec ["hint"];
			publicVariable "opReady";
		};
	};
	case rusBoard:
	{
		if(rusReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			rusReady = 0;
			"Russian Army is no longer ready to proceed." remoteExec ["hint"];
			publicVariable "rusReady";
		};
	};
};
	
	