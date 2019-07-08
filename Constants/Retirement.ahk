EnhancementDollSwitcher()
{	
	sleep 1000
	{
		Found := 0
		Found := FindClick(A_ScriptDir "\pics\TdollEnhancementSelectFilter", "rNoxPlayer mc o50 Count1 n0")
		if Found >= 1
		{
			OffFindClick("-122", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			done := 1
		}
	}
	sleep 500
	{
		Found := 0
		Found := FindClick(A_ScriptDir "\pics\TdollEnhancementSelectFilter", "rNoxPlayer mc o50 Count1 n0")
		if Found >= 1
		{
			OffFindClick("58", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			done := 1
		}
	}
	sleep 500
	{
		Found := 0
		Found := FindClick(A_ScriptDir "\pics\TdollEnhancementSelectFilter", "rNoxPlayer mc o50 Count1 n0")
		if Found >= 1
		{
			OffFindClick("238", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			done := 1
		}
	}
	sleep 500
	{
		Found := 0
		Found := FindClick(A_ScriptDir "\pics\TdollEnhancementSelectFilter", "rNoxPlayer mc o50 Count1 n0")
		if Found >= 1
		{
			OffFindClick("418", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			done := 1
		}
	}
}

Retirement()
{
	Global
	if(true)
	{
		Transition("CombatTdollEnhancement","Retirement")
		if (Enhancement == 0 || Enhancement == 1)
		{
			RFindClick("Retirement", "rNoxPlayer mc o50 w30000,50")
			sleep 3000
			Transition("RetirementNotClicked","RetirementClicked") 
			RFindClick("TdollRetirementSelect", "rNoxPlayer mc o75 w30000,50")
			sleep 500
			RFindClick("Filter", "rNoxPlayer mc o20 w30000,50")
			RFindClick("ThreeStar", "rNoxPlayer mc o20 w30000,50")
			RFindClick("Confirm", "rNoxPlayer mc o20 w30000,50")
			sleep 1000
			OffFindClick("-122", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("58", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("238", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("418", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("598", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("778", "235", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("-122", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("58", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("238", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("418", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("598", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			OffFindClick("778", "532", "RetirementDollSelect", "rNoxPlayer mc o20 w30000,50")
			sleep 500
			Found := 0
			Found := FindClick(A_ScriptDir "\pics\SmartSelect", "rNoxPlayer mc o50 Count1 n0")
			if Found >= 1
			{
				RFindClick("Cancel", "rNoxPlayer mc o75 w30000,50")
				done := 1
			}
			Else
			{
				RFindClick("TdollRetirementOK", "rNoxPlayer mc o75 w30000,50")
				RFindClick("TdollRetirementDismantle", "rNoxPlayer mc o75 w30000,50")
				RFindClick("TdollRetirementDismantleConfirm", "rNoxPlayer mc o50 w30000,50")
				done := 1
			}

		}
		if (Enhancement == 0)
		{
			RFindClick("TdollRetirementSelect", "rNoxPlayer mc o75 w30000,50")
			sleep 500
			RFindClick("FilterYellow", "rNoxPlayer mc o20 w30000,50")
			sleep 500
			RFindClick("FilterReset", "rNoxPlayer mc o20 w30000,50")
			RFindClick("SmartSelect", "rNoxPlayer mc o75 w30000,50")
			Sleep 1700
			RFindClick("TdollRetirementOK", "rNoxPlayer mc o75 w30000,50")
			sleep 500
			RFindClick("TdollRetirementDismantle", "rNoxPlayer mc o75 w30000,50")
			sleep 750
				
		}
		if (Enhancement == 1)
		{
			ClickTilGone("TdollEnhancement", "rNoxPlayer mc o40 w10000,50")
			RFindClick("TdollEnhancement_SelectDoll", "rNoxPlayer mc o40 w10000,50")
			EnhancementDollSwitcher()
			RFindClick("TdollEnhancementSelect", "rNoxPlayer mc o75 w30000,50")
			RFindClick("SmartSelect", "rNoxPlayer mc o75 w30000,50")
			Found := 0
			Found := FindClick(A_ScriptDir "\pics\TdollRetirementOK", "rNoxPlayer mc o50 Count1 w3000,50 n0")
			if Found >= 1
			{
				RFindClick("TdollRetirementOK", "rNoxPlayer mc o50 w30000,50")
			}
			Else
			{
				RFindClick("Cancel", "rNoxPlayer mc o50 w30000,50")
				done := 1
			}
			RFindClick("TdollEnhancement_Enhancement", "rNoxPlayer mc o50 w30000,50")
			RFindClick("TdollEnhancement_EnhancementOK", "rNoxPlayer mc o50 w30000,50")
		}
		sleep 750
		RFindClick("FactoryReturn", "rNoxPlayer mc o50 w30000,50")
		Transition("Combat","CombatPage")
	}
	return
}

