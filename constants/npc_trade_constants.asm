; npctrade struct members (see data/events/npc_trades.asm)
rsreset
DEF NPCTRADE_DIALOG   rb
DEF NPCTRADE_GIVEMON  rb
DEF NPCTRADE_GETMON   rb
DEF NPCTRADE_NICKNAME rb MON_NAME_LENGTH
DEF NPCTRADE_DVS      rw
DEF NPCTRADE_ITEM     rb
DEF NPCTRADE_OT_ID    rw
DEF NPCTRADE_OT_NAME  rb NAME_LENGTH
DEF NPCTRADE_MOVE     rb
DEF NPCTRADE_LEVEL    rb
DEF NPCTRADE_STRUCT_LENGTH EQU _RS

; NPCTrades indexes (see data/events/npc_trades.asm)
	const_def
	const NPC_TRADE_MIKE   ; 0
	const NPC_TRADE_KYLE   ; 1
	const NPC_TRADE_TIM    ; 2
	const NPC_TRADE_EMY    ; 3
	const NPC_TRADE_MARGE  ; 4
	const NPC_TRADE_KIM    ; 5
	const NPC_TRADE_RANDY  ; 6
	const NPC_TRADE_GARET  ; 7
	const NPC_TRADE_CHRIS  ; 8
	const NPC_TRADE_CINDY  ; 9
	const NPC_TRADE_MOE    ; 10
	const NPC_TRADE_DARREN ; 11
	const NPC_TRADE_CORY   ; 12
	const NPC_TRADE_TRACE  ; 13
	const NPC_TRADE_AMY    ; 14
	const NPC_TRADE_JAYE   ; 15
DEF NUM_NPC_TRADES EQU const_value

; TradeTexts indexes (see engine/events/npc_trade.asm)

; trade dialogs
	const_def
	const TRADE_DIALOG_INTRO
	const TRADE_DIALOG_CANCEL
	const TRADE_DIALOG_WRONG
	const TRADE_DIALOG_COMPLETE
	const TRADE_DIALOG_AFTER
DEF NUM_TRADE_DIALOGS EQU const_value

; trade dialog sets
	const_def
	const TRADE_DIALOGSET_COLLECTOR
	const TRADE_DIALOGSET_HAPPY
	const TRADE_DIALOGSET_NEWBIE
DEF NUM_TRADE_DIALOGSETS EQU const_value
