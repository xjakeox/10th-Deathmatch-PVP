/*******************************************************************
initServer.sqf                                                 *****
**** For all intent and purposes, entry point for server-sided *****
**** sqf scripting.                                            *****
*******************************************************************/
//Configuration
gameStarting = 0;
publicVariable "gameStarting";
// Set to 1 by default in case a team doesn't join in. Set back to 0 when team lead joins
bluReady = 1; 
publicVariable "bluReady";
opReady = 1;
publicVariable "opReady";
rusReady = 1;
publicVariable "rusReady";
pmcReady = 1;
publicVariable "pmcReady";

//Disable Saving
enableSaving [false, false];
