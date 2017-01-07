_readyTeam = _this select 0;


switch(_readyTeam) do
{ 
	case bluBoard:
	{ 
		bluReady = 1;
		"US Army is ready to proceed." remoteExec ["hint"];
		publicVariable "bluReady";
	};
	case opBoard:
	{
		opReady = 1;
		"Taliban is ready to proceed." remoteExec ["hint"];
		publicVariable "opReady";
	};
	case rusBoard:
	{
		rusReady = 1;
		"Russian Army is ready to proceed." remoteExec ["hint"];
		publicVariable "rusReady";
	};
};
	
	