---------------------------------------------------------------------------------
--
-- Prat - A framework for World of Warcraft chat mods
--
-- Copyright (C) 2006-2007  Prat Development Team
--
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to:
--
-- Free Software Foundation, Inc., 
-- 51 Franklin Street, Fifth Floor, 
-- Boston, MA  02110-1301, USA.
--
--
-------------------------------------------------------------------------------
--[[
Name: PratCopyChat
Revision: $Revision: 81859 $
Author(s): Sylvanaar
Website: http://www.wowace.com/files/index.php?path=Prat/
Documentation: http://www.wowace.com/wiki/Prat/Integrated_Modules#CopyChat
SVN: http://svn.wowace.com/wowace/trunk/Prat/
Description: Module for Prat that allows you to copy text from the active chat window.
Dependencies: Prat
]]

Prat:AddModuleToLoad(function() 


local PRAT_MODULE = Prat:RequestModuleName("CopyChat")

if PRAT_MODULE == nil then 
    return 
end

local MAX_SCRAPE_TIME = 5 -- seconds

local L = Prat:GetLocalizer({})

--[===[@debug@
L:AddLocale("enUS", {
    ["CopyChat"] = true,
    ["Copy text from the active chat window."] = true,
    ["Copy Text"] = true,
    ["Copy all of the text in the selected chat frame into an edit box"] = true,
    ["showbutton_name"] = "Copy Button",
    ["showbutton_desc"] = "Show a button on the chatframe",
    ["ChatFrame"] = true,
    [" Text"] = true,
    ["Message From : %s"] = true,
    ["Copy Text Format"] = true,
    ["Should the copied text be plain, or formatted so you can see the colors."] = true,
    ["Plain"] = true,
    ["HTML"] = true,
    ["BBCode"] = true,
    ["Wowace.com Forums"] = true
})
--@end-debug@]===]

-- These Localizations are auto-generated. To help with localization
-- please go to http://www.wowace.com/projects/prat-3-0/localization/


--@non-debug@
L:AddLocale("enUS", 
{
	BBCode = true,
	ChatFrame = true,
	["Copy all of the text in the selected chat frame into an edit box"] = true,
	CopyChat = true,
	["Copy Text"] = true,
	["Copy Text Format"] = true,
	["Copy text from the active chat window."] = true,
	HTML = true,
	["Message From : %s"] = true,
	Plain = true,
	["Should the copied text be plain, or formatted so you can see the colors."] = true,
	showbutton_desc = "Show a button on the chatframe",
	showbutton_name = "Copy Button",
	[" Text"] = true,
	["Wowace.com Forums"] = true,
}

)
L:AddLocale("frFR",  
{
	BBCode = true,
	-- ChatFrame = "",
	["Copy all of the text in the selected chat frame into an edit box"] = "Copier tout le texte de la fen??tre de chat dans l'invite de discussion.",
	CopyChat = "CopierLeChat",
	["Copy Text"] = "Copier le Texte",
	-- ["Copy Text Format"] = "",
	["Copy text from the active chat window."] = "Copier le texte ?? partir de la fen??tre de chat active.",
	HTML = true,
	["Message From : %s"] = "Message de : %s",
	-- Plain = "",
	-- ["Should the copied text be plain, or formatted so you can see the colors."] = "",
	-- showbutton_desc = "",
	showbutton_name = "Bouton de copie",
	[" Text"] = "Texte",
	-- ["Wowace.com Forums"] = "",
}

)
L:AddLocale("deDE", 
{
	BBCode = true,
	ChatFrame = true,
	["Copy all of the text in the selected chat frame into an edit box"] = "Kopiere den gesamten Text des ausgew??hlten Chat-Rahmens in ein Eingabefeld.",
	CopyChat = true,
	["Copy Text"] = "Text kopieren",
	["Copy Text Format"] = "Textformat kopieren",
	["Copy text from the active chat window."] = "Text im aktiven Chat-Fenster kopieren.",
	HTML = true,
	["Message From : %s"] = "Mitteilung von: %s",
	Plain = "Einfach",
	["Should the copied text be plain, or formatted so you can see the colors."] = "Soll der kopierte Text einfach oder formattiert mit farbiger Darstellung kopiert werden?",
	showbutton_desc = "Schaltfl??che im Chat-Rahmen anzeigen",
	showbutton_name = "Schaltfl??che Kopieren",
	[" Text"] = "Text",
	["Wowace.com Forums"] = "Wowace.com Foren",
}

)
L:AddLocale("koKR",  
{
	-- BBCode = "",
	ChatFrame = "?????????",
	["Copy all of the text in the selected chat frame into an edit box"] = "????????? ???????????? ?????? ????????? ?????? ??????????????? ???????????????",
	CopyChat = "?????? ??????",
	["Copy Text"] = "????????? ??????",
	["Copy Text Format"] = "?????? ?????? ??????",
	["Copy text from the active chat window."] = "????????? ??? ??????????????? ?????? ??????.",
	HTML = true,
	["Message From : %s"] = "%s ????????? ??????",
	Plain = "??????",
	-- ["Should the copied text be plain, or formatted so you can see the colors."] = "",
	showbutton_desc = "???????????? ?????? ?????????",
	showbutton_name = "?????? ??????",
	[" Text"] = "?????????",
	["Wowace.com Forums"] = "wowace.com ??????",
}

)
L:AddLocale("esMX",  
{
	-- BBCode = "",
	-- ChatFrame = "",
	-- ["Copy all of the text in the selected chat frame into an edit box"] = "",
	-- CopyChat = "",
	-- ["Copy Text"] = "",
	-- ["Copy Text Format"] = "",
	-- ["Copy text from the active chat window."] = "",
	-- HTML = "",
	-- ["Message From : %s"] = "",
	-- Plain = "",
	-- ["Should the copied text be plain, or formatted so you can see the colors."] = "",
	-- showbutton_desc = "",
	-- showbutton_name = "",
	-- [" Text"] = "",
	-- ["Wowace.com Forums"] = "",
}

)
L:AddLocale("ruRU",  
{
	BBCode = true,
	ChatFrame = "???????? ????????",
	["Copy all of the text in the selected chat frame into an edit box"] = "???????????????????? ???????? ?????????? ???? ???????????????????? ???????? ???????? ?? ???????? ??????????.",
	CopyChat = true,
	["Copy Text"] = "???????????????????? ??????????",
	["Copy Text Format"] = "???????????? ?????????????????????? ????????????",
	["Copy text from the active chat window."] = "???????????????????? ?????????? ???? ?????????????????? ???????? ????????.",
	HTML = true,
	["Message From : %s"] = "?????????????????? ???? : %s",
	Plain = "?????????????? ??????????",
	["Should the copied text be plain, or formatted so you can see the colors."] = "???????????????????? ???????????????????? ?????? ?????????????? ?????????? ?????? ???? ??????????????????????????????, ?? ?????????????????????? ???????????? ?? ??.??.",
	showbutton_desc = "???????????????????? ???????????? ?????????????????????? ?? ???????? ????????",
	showbutton_name = "???????????? ??????????????????????",
	[" Text"] = " ??????????",
	["Wowace.com Forums"] = "???????????? Wowace.com",
}

)
L:AddLocale("zhCN",  
{
	BBCode = "BB??????",
	ChatFrame = "?????????",
	["Copy all of the text in the selected chat frame into an edit box"] = "???????????????????????????????????????????????????",
	CopyChat = "????????????",
	["Copy Text"] = "????????????",
	["Copy Text Format"] = "??????????????????",
	["Copy text from the active chat window."] = "????????????????????????????????????",
	HTML = "?????????????????????",
	["Message From : %s"] = "????????????: %s",
	Plain = "??????",
	["Should the copied text be plain, or formatted so you can see the colors."] = "???????????????????????????????????????,?????????????????????",
	showbutton_desc = "????????????????????????",
	showbutton_name = "????????????",
	[" Text"] = "??????",
	["Wowace.com Forums"] = "Wowace.com??????",
}

)
L:AddLocale("esES",  
{
	BBCode = true,
	ChatFrame = "MarcoChat",
	["Copy all of the text in the selected chat frame into an edit box"] = "Copiar todo el texto seleccionado en el marco del chat a una caja de edici??n",
	CopyChat = "ChatCopiar",
	["Copy Text"] = "Copiar Texto",
	["Copy Text Format"] = "Copiar Texto con fomato",
	["Copy text from the active chat window."] = "Copiar texto desde la ventana de chat activa.",
	HTML = true,
	["Message From : %s"] = "Mensaje de : %s",
	Plain = "Liso",
	["Should the copied text be plain, or formatted so you can see the colors."] = "El texto copiado deber??a ser llano, o con formato para que pueda ver los colores. ",
	showbutton_desc = "Muestra un bot??n en el marco del chat",
	showbutton_name = "Bot??n Copiar",
	[" Text"] = "Texto",
	["Wowace.com Forums"] = "Foros Wowace.com",
}

)
L:AddLocale("zhTW",  
{
	BBCode = true,
	ChatFrame = "????????????",
	-- ["Copy all of the text in the selected chat frame into an edit box"] = "",
	-- CopyChat = "",
	["Copy Text"] = "????????????",
	["Copy Text Format"] = "??????????????????",
	["Copy text from the active chat window."] = "?????????????????????????????????",
	HTML = true,
	["Message From : %s"] = "?????? %s ?????????",
	-- Plain = "",
	-- ["Should the copied text be plain, or formatted so you can see the colors."] = "",
	showbutton_desc = "??????????????????????????????",
	showbutton_name = "????????????",
	[" Text"] = "??????",
	["Wowace.com Forums"] = "Wowace.com ??????",
}

)
--@end-non-debug@

local module = Prat:NewModule(PRAT_MODULE, "AceHook-3.0", "AceTimer-3.0")

Prat:SetModuleDefaults(module.name, {
    profile = {
        on  = true,
        showbutton = {["*"] = true},
        copyformat = "plain"
    }
} )

Prat:SetModuleOptions(module.name, {
    name = L["CopyChat"],
    desc = L["Copy text from the active chat window."],
    type = "group",
    args = {
        showbutton = {
            name = L["showbutton_name"],
            desc = L["showbutton_desc"],
            type = "multiselect",
            values = Prat.FrameList,
            get = "GetSubValue",
            set = "SetSubValue"
        },
        copy = {
            name = L["Copy Text"],
            desc = L["Copy all of the text in the selected chat frame into an edit box"],
            type = "execute",
            order = 190,
            func = "MenuScrape"
        },
        copyformat = {
            name = L["Copy Text Format"],
            desc = L["Should the copied text be plain, or formatted so you can see the colors."],
            type = "select",
            order = 195,
            get = "GetValue", 
            set = "SetValue",
            values = { ["plain"] = L["Plain"], ["bbcode"] = L["BBCode"] , ["html"] = L["HTML"], ["wowace"] = L["Wowace.com Forums"] },
        },

    }
})

function module:MenuScrape()
    self:ScrapeChatFrame(SELECTED_CHAT_FRAME) 
    HideDropDownMenu(1)
end


Prat:SetModuleInit(module.name, 
    function(module)
        PratCCFrameScrollText:SetScript("OnTextChanged", function(this) module:OnTextChanged(this) end)
        PratCCFrameScrollText:SetScript("OnEscapePressed", function(this) PratCCFrame:Hide() module.str = nil end)
    end
)


function module:OnModuleEnable()
    self.buttons = {}
    for k,v in pairs(Prat.Frames) do
        self.buttons[k] = self:MakeReminder(v:GetID())
        self:showbutton(k, self.db.profile.showbutton[k])
    end
    UnitPopupButtons["COPYCHAT"]    = { text =L["Copy Text"], dist = 0 , func = function(a1, a2) module:CopyLineFromPlayerlink(a1, a2) end , arg1 = "", arg2 = ""};
    
    if not self.menusAdded then
        tinsert(UnitPopupMenus["FRIEND"],#UnitPopupMenus["FRIEND"]-1,"COPYCHAT");    
        self.menusAdded = true
    end
    
    Prat:RegisterDropdownButton("COPYCHAT", function(menu, button) button.arg1 = module.clickedFrame end )


    self:SecureHook("ChatFrame_OnHyperlinkShow")
    self:SecureHook("FCF_SetTemporaryWindowType")
end
    
function module:FCF_SetTemporaryWindowType(chatFrame, ...)
    local id = chatFrame:GetID()
    self.buttons[id] = self:MakeReminder(id)
    self:showbutton(id, self.db.profile.showbutton[1])
end

function module:ChatFrame_OnHyperlinkShow(this, ...)
    self.clickedframe = this
end

function module:OnModuleDisable()
    self:hidebuttons()
    PratCCFrame:Hide()
end


--[[------------------------------------------------
    Core Functions
------------------------------------------------]]--

module.lines = {}
module.str = nil

--function module:UnitPopup_ShowMenu(dropdownMenu, which, unit, name, userData, ...)
--    local ORIGIN_FRAME = self.clickedframe
--    
--    for i=1, UIDROPDOWNMENU_MAXBUTTONS do
--        button = getglobal("DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i);
--        
--        if button.value == "COPYCHAT" then 
--          --  self:Debug(dropdownMenu:GetName(), which, unit, name, userData, button.value, ...)
--            button.func = UnitPopupButtons["COPYCHAT"].func
--            button.arg1 = ORIGIN_FRAME
--        end
--    end
--end


function module:GetFormattedLine(line, r, g, b)
    local fmt = self.copyformat or self.db.profile.copyformat
    local CLR = Prat.CLR
    
    line = line:gsub("|c00000000|r", "")

    if fmt == "plain" then 
        return line
    end

    if fmt == "bbcode" or fmt == "wowace" then
       local fline = line:gsub("|c[fF][fF](%w%w%w%w%w%w)", "[color=#%1]"):gsub("|r", "[/color]")
    
       return "[color=#"..CLR:GetHexColor(r,g,b).."]"..fline.."[/color]"
    end

    if fmt == "html" then
       local fline = line:gsub("|c[fF][fF](%w%w%w%w%w%w)", "<font color='#%1'>"):gsub("|r", "</font>")
    
       return "<p><font color='#"..CLR:GetHexColor(r,g,b).."' face='monospace'>"..fline.."</font></p>"
    end

end



function module:CopyLineFromPlayerlink(origin_frame, ...)

    -- TODO: Consider just using self.clickedFrame (I dont remember why the other code is there)
    local frame = (origin_frame and origin_frame:GetObjectType() == "ScrollingMessageFrame" and origin_frame) or self.clickedframe
    
    for i=1, #self.lines do
        self.lines[i] = nil
    end

    self:AddLines(self.lines, frame:GetRegions())    

    local dropdownFrame = UIDROPDOWNMENU_INIT_MENU
    
    local name = dropdownFrame.name
    local server = dropdownFrame.server  or ""
    local linenum = dropdownFrame.lineID
    
    local fullname = name;

    if server:len()>0 then
        fullname = name.."-"..server;
    end

    local findname = "|Hplayer:"..fullname..":"..tostring(linenum)

    for i=1, #self.lines do
        if self.lines[i]:find(findname:gsub("%-", "%%-")) then
            self:StaticPopupCopyLine(fullname, self.lines[i])
        end
    end
    
end


function module:StaticPopupCopyLine(sender, text)
    StaticPopupDialogs["COPY_LINE"] = StaticPopupDialogs["COPY_LINE"] or {
        text = L["Message From : %s"],
        chattext = "",
        button2 = ACCEPT,
        hasEditBox = 1,
        hasWideEditBox = 1,

        OnShow = function()
            this:SetWidth(420)
            local editBox = _G[this:GetName().."WideEditBox"];
            editBox:SetText(StaticPopupDialogs["COPY_LINE"].chattext);
            editBox:SetFocus();
            editBox:HighlightText(0);

            local button = getglobal(this:GetName().."Button2");
            button:ClearAllPoints();
            button:SetWidth(200);
            button:SetPoint("CENTER", editBox, "CENTER", 0, -30);
        end,

        OnHide = function() end,
        OnAccept = function() end,
        OnCancel = function() end,
        EditBoxOnEscapePressed = function() this:GetParent():Hide(); end,
        timeout = 0,
        whileDead = 1,
        hideOnEscape = 1
    };

    StaticPopupDialogs["COPY_LINE"].chattext = text
    StaticPopup_Show ("COPY_LINE", sender);
end


function module:ScrapeChatFrame(frame, noshow)
    smf = Prat.Addon:GetModule("SMFHax", true)
    if smf then 
        self.twocolumn, smf.twocolumn = smf.twocolumn
        smf:ClearColumn1()
    end

    self:DoCopyChat(frame, nil, noshow)
end

function module:ScrapeFullChatFrame(frame, noshow)
    smf = Prat.Addon:GetModule("SMFHax", true)
    if smf then 
        self.twocolumn, smf.twocolumn = smf.twocolumn
        smf:ClearColumn1()
    end
    frame:ScrollToBottom()

	local fontFile, oldsize, fontFlags = frame:GetFont();
    self.oldsize = oldsize
	frame:SetFont(fontFile, 1, fontFlags);
	SetChatWindowSize(frame:GetID(), 1);

--    self:DoCopyChatScroll(frame)

    self:ScheduleTimer("DoCopyChatScroll", 0.1, frame)
end
     
local scrapelines = {}
function module:DoCopyChatScroll(frame, noshow)
    self.longstr = ""
    self.str = ""
    
    if frame:GetNumMessages() == 0 then return end
    
    wipe(scrapelines)


    local starttime = time()
    local runtime = 0

    self:DoCopyChat(frame, nil, true)
    table.insert(scrapelines,self.str)
    self.str = nil

    while not frame:AtTop() or runtime >= MAX_SCRAPE_TIME do
        frame:PageUp()
        runtime = time() - starttime
        if runtime >= MAX_SCRAPE_TIME then
            Prat.Print("Frame scraping timeout exceeded, results will be incomplete.")
            break;
        end
        self:DoCopyChat(frame, nil, true)
        table.insert(scrapelines,1, self.str)
        self.str = nil
    end

    frame:ScrollToBottom()
    
    self.str = table.concat(scrapelines, "\n")
    wipe(scrapelines)

    if self.oldsize then
        FCF_SetChatWindowFontSize(nil, frame, self.oldsize)
        self.oldsize = nil
    end

    if not noshow then 
        if (self.copyformat and self.copyformat == "wowace") or self.db.profile.copyformat == "wowace" then
            self.str = "[bgcolor=black]"..self.str.."[/bgcolor]"
        end

        PratCCText:SetText(L["ChatFrame"]..frame:GetName():gsub("ChatFrame", "")..L[" Text"], lines)
        PratCCFrameScrollText:SetText(self.str or "")
        PratCCFrame:Show()
    end
end
function module:DoCopyChatArg(arg)
    self:DoCopyChat(unpack(arg))
end

function module:DoCopyChat(frame, oldsize, noshow)
    wipe(self.lines)

    self:AddLines(self.lines, frame:GetRegions())

    self.str = table.concat(self.lines, "\n")

    wipe(self.lines)

    if oldsize then
        FCF_SetChatWindowFontSize(frame, oldsize)
    end
    
    if not noshow then 
        if (self.copyformat and self.copyformat == "wowace") or self.db.profile.copyformat == "wowace" then
            self.str = "[bgcolor=black]"..self.str.."[/bgcolor]"
        end

        PratCCText:SetText(L["ChatFrame"]..frame:GetName():gsub("ChatFrame", "")..L[" Text"], lines)
        PratCCFrameScrollText:SetText(self.str or "")
        PratCCFrame:Show()
    end
end

function module:CopyChat()
    module:ScrapeChatFrame(SELECTED_CHAT_FRAME)
end

function module:AddLines(lines, ...)
  for i=select("#", ...),1,-1 do
    local x = select(i, ...)
    if x:GetObjectType() == "FontString" and not x:GetName() then
        table.insert(lines, self:GetFormattedLine(x:GetText(), x:GetTextColor()))
    end
  end
end

function module:OnTextChanged(this)
    if self.str and this:GetText() ~= self.str then
        this:SetText(self.str)
        self.str = nil
    end
    local s = PratCCFrameScrollScrollBar
    this:GetParent():UpdateScrollChildRect()
    local _, m = s:GetMinMaxValues()
    if m > 0 and this.max ~= m then
        this.max = m
        s:SetValue(m)
    end
end

function module:hidebuttons()
    for k,v in pairs(self.buttons) do
        v:Hide()
    end
end

function module:showbutton(id, show)
    local b = self.buttons[id]
    if show then b:Show() else b:Hide() end
end

do 
    local function reminderOnClick(self, button, down) 
        PlaySound("igChatBottom"); 
        if (IsShiftKeyDown()) then
            module.copyformat = "wowace"
        end
        if (IsControlKeyDown()) then
            module:ScrapeFullChatFrame(self:GetParent()) 
        else
            module:ScrapeChatFrame(self:GetParent()) 
        end
            
        module.copyformat = nil
    end
    local function reminderOnEnter(self, motion) self:SetAlpha(0.9) end
    local function reminderOnLeave(self, motion) self:SetAlpha(0.2) end
    
    function module:MakeReminder(id)
        local cf = _G["ChatFrame"..id]
        local name = "ChatFrame"..id.."PratCCReminder"
        local b = _G[name]
        if not b then
            b = CreateFrame("Button", name, cf)
            b:SetFrameStrata("BACKGROUND")
            b:SetWidth(24)
            b:SetHeight(24)
            b:SetNormalTexture("Interface\\Addons\\Prat-3.0\\textures\\prat-chatcopy2")
            b:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollEnd-Down")
            b:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
            b:SetPoint("TOPLEFT", cf, "TOPLEFT", 0, 0)
            b:SetScript("OnClick", reminderOnClick)
            b:SetScript("OnEnter", reminderOnEnter)
            b:SetScript("OnLeave", reminderOnLeave)
            b:SetAlpha(0.2)
            b:Hide()
        end

        return b
    end
end

  return
end ) -- Prat:AddModuleToLoad