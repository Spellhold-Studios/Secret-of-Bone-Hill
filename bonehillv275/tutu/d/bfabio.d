BEGIN ~BFABIO~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~GlobalLT("BHQuestAccept","GLOBAL",6)
PartyHasItem("BHGHANDN")
Global("FabioHandSong","LOCALS",0)
~ THEN BEGIN 4
  SAY @5
  IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",STATE_SLEEPING)
~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXTERN ~_BGARRI~ FABIOGARRI
END

IF ~~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN DO ~SetGlobal("FabioHandSong","LOCALS",1)
~ JOURNAL @10 EXIT
END

IF ~Global("BHHandNoteDecipher","GLOBAL",1)
~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("BHHandNoteDecipher","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @13
  IF ~IfValidForPartyDialogue("Safana")
~ THEN EXTERN ~_SAFANJ~ FABHAND1
  IF ~IfValidForPartyDialogue("Montaron")
~ THEN EXTERN ~_MONTAJ~ FABHAND2
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~_IMOEN2~ FABHAND3
  IF ~~ THEN REPLY @14 DO ~SetGlobal("BHFabioExplainedNote","GLOBAL",2)
~ EXIT
END

IF ~Global("BHQuestAccept","GLOBAL",6)
~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN DO ~SetGlobal("BHQuestAccept","GLOBAL",7)
SetGlobal("IWasKickedOut","LOCALS",0)
LeaveParty()
SetDialogue("BHFABIO")
MoveGlobal("BH0500","FABIO",[2550.1447])
~ EXIT
END

IF ~Global("BHAllDone","GLOBAL",1)
~ THEN BEGIN 11
  SAY @16
  IF ~~ THEN DO ~SetGlobal("BHAllDone","GLOBAL",2)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @17
  IF ~~ THEN EXTERN ~BHBALMOR~ 1
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN EXTERN ~BHBALMOR~ 2
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN REPLY @20 EXTERN ~BHBALMOR~ 3
  IF ~~ THEN REPLY @21 EXTERN ~BHBALMOR~ 4
END

IF ~~ THEN BEGIN 15
  SAY @22
  IF ~~ THEN EXTERN ~BHBALMOR~ 35
END

IF ~~ THEN BEGIN 16
  SAY @23
  IF ~~ THEN EXTERN ~BHHARPER~ 4
END

IF ~~ THEN BEGIN 17
  SAY @24
  IF ~~ THEN EXIT
END

CHAIN
IF ~Global("BHGuardRatTrigger","GLOBAL",1)
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("BFabio1","LOCALS",0)~ THEN ~BFABIO~ FMBANT
@25  
 DO ~SetGlobal("BFabio1","LOCALS",1)
     SetGlobal("BHGuardRatTrigger","GLOBAL",2)~ 
== _BMINSC
 @26
== BFABIO
 @27
== _BMINSC
 @28
== BFABIO
 @29
== _BMINSC
 @30
== BFABIO
 @31
EXIT

APPEND ~_BGARRI~

IF ~~ THEN BEGIN FABIOGARRI 
  SAY @32
  IF ~~ THEN EXTERN ~BFABIO~ 6
END

END

APPEND ~_IMOEN2~

IF ~~ THEN BEGIN FABHAND3 
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("BHFabioExplainedNote","GLOBAL",2)~ EXIT
END

END

APPEND ~_MONTAJ~

IF ~~ THEN BEGIN FABHAND2 
  SAY @34 
  IF ~~ THEN DO ~SetGlobal("BHFabioExplainedNote","GLOBAL",2)~ EXIT
END

END

APPEND ~_SAFANJ~

IF ~~ THEN BEGIN FABHAND1 
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("BHFabioExplainedNote","GLOBAL",2)~ EXIT
END

END

