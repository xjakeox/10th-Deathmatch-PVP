/*******************************************************************
initServer.sqf                                                 *****
**** For all intent and purposes, entry point for server-sided *****
**** sqf scripting.                                            *****
*******************************************************************/
//Configuration
bluReady = 1; // Set to 1 by default incase a team doesn't join in. Set back to 0 when team lead joins
opReady = 1;
rusReady = 1;

//_boardArray = [ bluBoard, opBoard, rusBoard];
_teamLeads = [bluLead, opLead, rusLead];

//Disable Saving
enableSaving [false, false];

//Loop, and add ready action
/* {
   _x addAction ["<t color='#37FF58'>Ready Team</t>", "readyTeam.sqf"];
   _x addAction ["<t color='#FF0000'>Unready Team</t>", "unreadyTeam.sqf"];
   _x addAction ["<t color='#3374FF'>Start Game</t>", "startGame.sqf"];
} forEach _boardArray; */