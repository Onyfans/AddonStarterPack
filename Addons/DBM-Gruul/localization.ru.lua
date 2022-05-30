if GetLocale() ~= "ruRU" then return end

local L

--Maulgar
L = DBM:GetModLocalization("Maulgar")

L:SetGeneralLocalization({
	name = "Король Молгар"
})

--Gruul the Dragonkiller
L = DBM:GetModLocalization("Gruul")

L:SetGeneralLocalization({
	name = "Груул Драконобой"
})

L:SetWarningLocalization({
	WarnGrowth	= "%s (%d)"
})

L:SetOptionLocalization({
	WarnGrowth		= "Показывать предупреждение для $spell:36300",
	RangeDistance	= "Фрейм дистанции для |cff71d5ff|Hspell:33654|hДробление|h|r",
	Smaller			= "Маленькая дистанция (11)",
	Safe			= "Безопасная дистанция (18)"
})