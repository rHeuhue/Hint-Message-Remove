#include <amxmodx>
#include <reapi>

#define VERSION "1.0.0"

public plugin_init()
{
	register_plugin("Hint Message Remove", VERSION, "Huehue @ AMXX-BG.INFO")

	RegisterHookChain(RG_CBasePlayer_HintMessageEx, "CBasePlayer_HintMessageEx")
}

public CBasePlayer_HintMessageEx(const this, const message[], Float:duration, bool:bDisplayIfPlayerDead, bool:bOverride)
{
	SetHookChainReturn(ATYPE_BOOL, false)
	return HC_SUPERCEDE
}