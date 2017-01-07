/*******************************************************************
initServer.sqf                                                 *****
**** For all intent and purposes, entry point for server-sided *****
**** sqf scripting.                                            *****
*******************************************************************/
//Configuration
gameStarting = 0;

bluReady = 1; // Set to 1 by default incase a team doesn't join in. Set back to 0 when team lead joins
opReady = 1;
rusReady = 1;

//Disable Saving
enableSaving [false, false];
