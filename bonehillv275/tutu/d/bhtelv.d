BEGIN ~BHTELV~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~PartyHasItem("BHBHorn")
~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("BHBHORN")
~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN DO ~CreateCreature("HOBCAP01",[-1.-1],0)
CreateCreature("HOBELITE",[999.1101],13)
CreateCreature("HOBELITE",[1188.993],14)
CreateCreature("HOBELITE",[1426.941],2)
CreateCreature("HOBELITE",[1639.1105],3)
CreateCreature("HOBELITE",[1147.1453],9)
CreateCreature("HOBELITE",[1276.1546],9)
CreateCreature("HOBELITE",[1790.1051],3)
CreateCreature("HOBELITE",[1879.1097],4)
Shout(ALERT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN DO ~TakePartyItem("BHBHORN")
UseItem("BHBHORN",Player1)
CreateCreature("HOBCAP01",[-1.-1],0)
CreateCreature("HOBELITE",[999.1101],13)
CreateCreature("HOBELITE",[1188.993],14)
CreateCreature("HOBELITE",[1426.941],2)
CreateCreature("HOBELITE",[1639.1105],3)
CreateCreature("HOBELITE",[1147.1453],9)
CreateCreature("HOBELITE",[1276.1546],9)
CreateCreature("HOBELITE",[1790.1051],3)
CreateCreature("HOBELITE",[1879.1097],4)
Shout(ALERT)
Enemy()
~ EXIT
  IF ~IfValidForPartyDialogue("Jaheira")
~ THEN DO ~TakePartyItem("BHBHORN")
UseItem("BHBHORN",Player1)
CreateCreature("HOBCAP01",[-1.-1],0)
CreateCreature("HOBELITE",[999.1101],13)
CreateCreature("HOBELITE",[1188.993],14)
CreateCreature("HOBELITE",[1426.941],2)
CreateCreature("HOBELITE",[1639.1105],3)
CreateCreature("HOBELITE",[1147.1453],9)
CreateCreature("HOBELITE",[1276.1546],9)
CreateCreature("HOBELITE",[1790.1051],3)
CreateCreature("HOBELITE",[1879.1097],4)
Shout(ALERT)
Enemy()
~ EXTERN ~_JAHEIJ~ TELVJAHE
END

APPEND ~_JAHEIJ~

IF ~~ THEN BEGIN TELVJAHE
  SAY @27 
  IF ~~ THEN EXIT
END

END