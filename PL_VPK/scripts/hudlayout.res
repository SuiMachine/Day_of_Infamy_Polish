"Resource/HudLayout.res"
{
	HudDamageIndicator
	{
		"fieldName"				"HudDamageIndicator"
		"visible"				"1"
		"enabled"				"1"
		"MinimumWidth"			"80"
		"MaximumWidth"			"80"
		"MinimumHeight"			"40"
		"MaximumHeight"			"40"
		"StartRadius"			"120"
		"EndRadius"				"120"
	}

	"overview"
	{
		"fieldName"		"overview"
		"visible"		"1"
		"enabled"		"1"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"f"
		"ControlPointSize"		"55"
		"CaptureLetterFont"		"HudGenericText"
		"SquadmateIconColor"	"219 249 43 255"

		"PlayerNameFont"		"HudGenericText"
		"PlayerInfoFont"		"HudGenericText"
		"PlayerInfoBoxOffset"	"15"
		"PlayerNameOffset"		"-13"
		"PlayerInfoOffset"		"3"
		"PlayerBoxSize"			"15"
		"PlayerBorderColor"		"134 127 120 255"

		"GridLetterFont"		"HudGenericText"
		"GridLetterColor"		"242 235 216 100"
		"GridLetterPadding"		"8"
		"GridNumberPadding"		"5"
		"GridLinesColor"		"242 235 216 20"
		"GridLinesDarkColor"	"27 22 22 164"

		"CompassTexture"		"vgui/compass/compass_tacmap"
		"CompassInsetX"			"0"
		"CompassInsetY"			"0"
		"CompassSize"			"30"
		"CompassFont"			"HudGenericText"
		"CompassDirectionInset"	"6"
		"CompassArrowInset"		"-2"
		"CompassLineColor"		"242 235 216 50" 
		"CompassLineInset"		"-3"
		"CompassAltFont"		"HudGenericText"
		"CompassAltDirectionColor"		"242 235 216 200"
		
		"AmmoCrateColor"		"FriendlyObjectiveOverview.SolidColor"
		"AmmoCrateSize"			"16"

		"SpawnZoneIconBgSize"	"11"
		"SpawnzoneIconBg"		"237 229 217 230"
		"ControlPointBg"		"237 229 217 240"
		"CaptureLetterBgColor"	"237 229 217 60"
	}

	CHudGame_Timer
	{
		"fieldName"				"CHudGame_Timer"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"c-70"
		"ypos"					"r23"
		"zpos"					"1"
		"wide"					"140"		
		"tall"					"21"	
		"paintbackground"		"0"
		"font"					"HudDescriptiveVariableWidth"
		"BottomBgAlpha"			"0"
		"TopBgAlpha"			"0"
		"ypos_objectives_offset"		"0"
		"ypos_no_objectives_offset"	"0"
	}

	CHudProgress
	{
		"fieldName"				"CHudProgress"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"c-150"
		"ypos"					"450"
		"zpos"					"1"
		"wide"					"360"		
		"tall"					"70"	
		"paintbackground"		"1"
		"bgcolor_override"		"38 36 32 150"
		
		"InteractionColor"		"FriendlyInteraction.SolidColor"
		"ProgressColor"			"InsWhite50"

		"UseProgressBar"
		{
			"fieldName"			"UseProgressBar"
			"xpos"				"10"
			"ypos"				"10"
			"wide"				"340"
			"tall"				"30"
		}
		
		"UseStringLabel"
		{
			"fieldName"			"UseStringLabel"
			"xpos"				"10"
			"ypos"				"10"
			"wide"				"340"
			"tall"				"30"
			"textAlignment"		"center"
			"font"				"HudHeaderExtraLarge" 
			"bgcolor_override"	"0 0 0 50"
		}

		"UseDescriptionLabel"
		{
			"fieldName"			"UseDescriptionLabel"
			"xpos"				"10"
			"ypos"				"45"
			"wide"				"340"
			"tall"				"15"
			"textAlignment"		"center"
			"font"				"HudGenericText"
		}
	}
	
	CHudGameLogic
	{
		"fieldName"				"CHudGameLogic"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f"
		"tall"					"f0"
		"paintbackground"		"1"
		"font"					"HudGenericText"
		"RoundStatusX"			"0"
		"RoundStatusY"			"0"
		"LabelInset"			"2"
		"TopBgAlpha"			"0"
		"BottomBgAlpha"			"0"
		"NeutralColor"			"Neutral.SolidColor"
		"SecurityColor"			"Security.SolidColor"
		"InsurgentsColor"		"Insurgents.SolidColor"
		"CommonHudBgColor"		"CommonHud.BgColor"
		
		"RoundStatus"
		{
			"fieldName"			"RoundStatus"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"630"
			"wide"				"1280"
			"tall"				"60"
			"enabled"			"1"
			"visible"			"0"
			"textAlignment"		"center"
			"fgcolor_override"	"242 235 216 255"
			"bgcolor_override"	"0 0 0 0"
			"font"				"HudGenericText"
			"allcaps"			"1"
		}
	}
	
	"CHudPointDockingDisplay"
	{
		"fieldName"				"CHudPointDockingDisplay"
		"xpos"					"c-120"			
		"ypos"					"r145"
		"wide"					"240" 
		"tall"					"145" 
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"

		"ControlPointSize"			"42"
		"ControlPointActiveSize"	"58"
		"ControlPointInactiveSize"	"42"
		"ControlPointGap"			"0"
		"ControlPointGapActive"		"2"
		"ControlPointY"				"82"
		"InactiveAlpha"				"150"
		
		"GlowStartSize"			"12"
		"GlowFinishSize"		"32"
		"GlowTime"				"0.2"
		"GlowFadeOutDelay"		"0.1"
		"GlowFadeOut"			"0.05"

		"CaptureImage"			"vgui/hud/cp_CaptureImage_FG"
		"CapturedImageGlow"		"vgui/hud/cp_CapturedImageGlow"
		
		"BottomBgAlpha"			"0"
		"TopBgAlpha"			"0"
		
		"TagPaddingX"			"5.5"
		"TagPaddingY"			"6"
		"TagSize"				"10"

		"CommonHudBgColor"		"0 0 0 0"
		
		"CaptureLetterFont"						"HudHeaderSmall"
		"CaptureLetterVerticalOffset"			"34"
		"CaptureLetterVerticalOffsetActive"		"48"
		"CaptureLetterVerticalOffsetInactive"	"34"
	}
	
	"CHudPointFloatAll"
	{
		"fieldName"							"CHudPointFloatAll"
		"xpos"								"0"			
		"ypos"								"0"
		"wide"								"f"		
		"tall"								"f"
		"visible"							"1"
		"enabled"							"1"
		"paintbackground"					"0"
		
		"ControlPointFont"					"HudGenericTextTeammate"
		"ControlPointFontPriority"			"HudHeaderMedium"
		"CaptureLetterFont"					"HudHeaderExtraSmall"

		"ControlPointSize"					"30"
		
		"LetterFloatingCloseOffsetX"		"0"
		"LetterFloatingFarOffsetX"			"0"
		"LetterFloatingCloseOffsetY"		"28"
		"LetterFloatingFarOffsetY"			"13"

		"DistanceCloseOffsetX"				"0"
		"DistanceFarOffsetX"				"0"
		"DistanceCloseOffsetY"				"-3"
		"DistanceFarOffsetY"				"1"
		
		"GlowStartSize"			"12"
		"GlowFinishSize"		"32"
		"GlowTime"				"0.2"
		"GlowFadeOutDelay"		"0.1"
		"GlowFadeOut"			"0.05"

		"CaptureImage"			"vgui/hud/cp_CaptureImage_FG"
		
		"TagSize"				"4"
		"TagPaddingX"			"4"
		"TagPaddingY"			"3"
		
		"CapturedImageGlow"		"vgui/hud/cp_CapturedImageGlow"
	}

	"CHudPointDisplayMain"
	{
		"fieldName"				"CHudPointDisplayMain"
		"xpos"					"c-250"
		"ypos"					"40"
		"wide"					"500"		
		"tall"					"250"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"
		"bgcolor_override"		"0 0 0 33"

		"ControlPointSize"		"70"
		"ControlPointGap"		"1"
		
		"GlowStartSize"			"56"
		"GlowFinishSize"		"48"
		"GlowTime"				"0.2"
		"GlowFadeOutDelay"		"0.1"
		"GlowFadeOut"			"0.05"

		"CaptureImage"			"vgui/hud/cp_CaptureImage_FG"
		
		"TagSize"				"10"
		"TagPaddingX"			"14"
		"TagPaddingY"			"8"

		"CapturedImageGlow"		"vgui/hud/cp_CapturedImageGlow"
		"CaptureLetterFont"		"HudHeaderMedium"
		"CaptureLetterVerticalOffset"			"0"
		"CaptureLetterVerticalOffsetActive"		"51"
		"CaptureLetterVerticalOffsetInactive"	"51"
		"CaptureLetterVerticalOffsetFloating"	"51"
		
		"CapturePointInteraction"
		{
			"ControlName"		"Label"
			"fieldName"			"CapturePointInteraction"
			"xpos"				"0"
			"ypos"				"140"
			"wide"				"500"
			"tall"				"50"
			"font"				"HudHeaderExtraLarge"
			"visible"			"1"
			"allcaps"			"1"
			"textAlignment"		"center"
			"shadow"			"1"
		}

		"CapturePointName"
		{
			"ControlName"		"Label"
			"fieldName"			"CapturePointName"
			"xpos"				"0"
			"ypos"				"160"
			"wide"				"500"
			"tall"				"50"
			"font"				"HudCommonMediumLarge"
			"visible"			"1"
			"allcaps"			"1"
			"textAlignment"		"center"
			"shadow"			"1"
		}		
	}
	
	CHudReinforcementWaveCounter
	{
		"fieldName"				"CHudReinforcementWaveCounter"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"c-100"
		"ypos"					"r152"
		"wide"					"200"
		"tall"					"160" 
		"paintbackground"		"0"

		"PrimaryOffestX"		"0"
		"PrimaryOffestY"		"0"
		"Primaryfont"			"HudHeaderMedium"

		"SecondaryOffestX"		"0"
		"SecondaryOffestY"		"0"
		"Secondaryfont"			"HudHeaderMedium"

		"boxwide"				"74"
		"boxtall"				"30"

		"LocalPlayerX"			"c-30"
		"LocalPlayerY"			"125"	
		"NonLocalPlayerX"		"c30"
		"NonLocalPlayerY"		"125"	
		
		"BottomBgAlpha"			"0"
		"TopBgAlpha"			"0"
		"CommonHudBgColor"		"0 0 0 0"
	}

	CHudWeaponInfo_ClipCount
	{
		"fieldName"				"CHudWeaponInfo_ClipCount"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"r276"		
		"ypos"					"r90"
		"wide"					"280"		
		"tall"					"60"		
		"paintbackground"		"0"
		//"CommonHudBgColor"		"0 0 0 255"
		"textAlignment"			"center"
		"FontAmmoType"			"HudHeaderExtraLarge" 
		"FontCounter"			"HudHeaderExtraExtraLarge" 
		"StartXCounter"			"35"
		"StartYCounter"			"10"
		"StartXAmmoType"		"30"
		"StartYAmmoType"		"26"
		"NeutralColor"			"255 255 255 255"
		"ShadowColor"			"0 0 0 200"
		
		"QuickSelectOffsetX"		"-50"
		"QuickSelectLabelOffsetX"	"-22"
		
		"QuickSelectImagePanel"
		{
			"fieldName"			"QuickSelectImagePanel"
			"ControlName"		"CBitmapImagePanel"
			//"xpos"				"r125"
			"ypos"				"20"
			"wide"				"25"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"1"
			"font"				"HudDescriptiveVariableWidthLarge"
			"textAlignment"		"west"
			"allcaps"			"0"
			"shadow"			"1"
			"proportionalToParent"	"1"
			
			"image"				"hud/icn_player"
			"imagecolor"		"255 255 255 255"
			"imageAlignment"	"center"
		}
		
		"QuickSelectStockLabel"
		{
			"fieldName"			"QuickSelectStockLabel"
			"ControlName"		"Label"
			//"xpos"				"r120"
			"ypos"				"30"
			"wide"				"25"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"1"
			"font"				"HudHeaderMedium"
			"textAlignment"		"west"
			"allcaps"			"0"
			"shadow"			"1"
			"proportionalToParent"	"1"
			
			"labelText"			"-"
		}
	}	

	CHudWeaponInfo_FireMode
	{
		"fieldName"				"CHudWeaponInfo_FireMode"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"r304"	
		"ypos"					"r36"
		"wide"					"280"		
		"tall"					"210"		
		"paintbackground"		"0"
		//"CommonHudBgColor"		"0 0 0 255"
		"Font"					"HudHeaderMedium" 
		"StartX"				"0"
		"StartY"				"0"
		"Timeout"				"2"
		"NeutralColor"			"255 255 255 255"
		"InactiveColor"			"255 255 255 30"
		"ShadowColor"			"0 0 0 200"
		"textAlignment"			"center"
		//"rightAlign"			"0"
		"ItemGap"				"5"
	}

	HudWeaponSelection
	{
		"fieldName"				"HudWeaponSelection"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"r350" // wide + 22
		"ypos"					"400"		
		"wide"					"420"		
		"tall"					"300" // ( BucketHeight * 3 ) + ( BucketHeight_S ) + ( BucketGap * 4 )
		"paintbackground"		"0"	

		"SelectionTimeout"		"1.00" // second(s) before calling 'CloseWeaponSelectionMenu' hud animation
		
		"BackgroundTexture"		"vgui/hud/weapon_select_item_bg"
		"CommonHudBgColor"		"180 180 180 255"
		"InactiveBgColor"		"0 0 0 255"
		"NeutralColor"			"InsWhite"
		"InactiveColor"			"InsWhite"
		
		"Font"					"HudDescriptiveVariableWidth"
		"FontNumbers"			"HudHeaderLarge"
		
		"BucketGap"				"-21"
		"BucketWidth"			"180"
		"BucketWidth_S"			"210"
		"BucketItemGap"			"8"
		"BucketItemGap_S"		"8"
		"BucketItemActiveIndent"	"0"
		"BucketItemInactiveIndent"	"5"
		"BucketNumbersIndent"	"30"
		"BucketVerticalPadding" "21"
		
		"SlotActiveIndent"		"30"
		"SlotInactiveIndent"	"21"

		"ItemSpacing"			"6"
		"ItemHeight"			"30"
		"ItemWidth"				"340"
		"BackgroundOffset"		"140"
	}
	
	CHudGameplayNotices
	{
		"fieldName" 			"CHudGameplayNotices"
		"visible" 				"1"
		"enabled" 				"1"
		"xpos"	 				"r930"
		"ypos"	 				"20"	
		"wide"	 				"920"
		"tall"	 				"180"

		"TextFont"				"HudGenericText"
		"TextShadowFont"		"HudGenericText"
		"LeftBgAlpha"			"200"
		"RightBgAlpha"			"0"
		"TextShadowOffsetX"		"1"
		"TextShadowOffsetY"		"1"
		
		"VerticalPadding"		"12"
		"LineHeight"			"18"
		"LineSpacing"			"3"
		"MaxDeathNotices"		"5" // It can display more than this number, but the elements will be quickly pushed off screen
	
		"NeutralColor"			"FriendlyInteraction.SolidColor"
		"SquadColor"			"Friendly.SolidColor"
		
		"TextBlurcolor"			"CommonHud.TextBlurColor"
		"textbgcolor"			"CommonHud.TextBgColor"	
		"WidthIsAtLeast"		"0"
		"ExtraWidth"			"0"
		"BgAlphaFrac"			"0.35"

		"SpectatorOffset"		"52"
	}
	
	CHudGame_Enemies_Remaining
	{
		"fieldName"				"CHudGame_Enemies_Remaining"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"c-84"
		"ypos"					"27"
		"zpos"					"1"
		"wide"					"168"		
		"tall"					"18"	
		"paintbackground"		"1"
		"Font"					"HudGenericText" 
		"BottomBgAlpha"			"128"
		"TopBgAlpha"			"128"
	}

	"CHudVersionDisplay"
	{
		"fieldName"				"CHudVersionDisplay"
		"xpos"					"10"			
		"ypos"					"r30"
		"wide"					"350" // full screen
		"tall"					"30" // full screen
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"
		
		"LabelMilestone"
		{
			"fieldName"			"LabelMilestone"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"0"
			"wide"				"350"
			"tall"				"15"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"0"
			"font"				"HudHeaderLarge"
			"fgcolor_override"	"195 188 189 150"
			"labelText"			"#Version_Milestone"
		}
		
		"LabelBuildInfo"
		{
			"fieldName"			"LabelBuildInfo"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"14"
			"wide"				"350"
			"tall"				"15"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"0"
			"font"				"HudGenericText"
			"fgcolor_override"	"195 188 189 50"			
		}
	}
	
	"CHudSolo"
	{
		"fieldName"				"CHudSolo"
		"xpos"					"c175"			
		"ypos"					"r40"
		"wide"					"350" // full screen
		"tall"					"30" // full screen
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"
		
		"LabelLives"
		{
			"fieldName"			"LabelLives"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"0"
			"wide"				"350"
			"tall"				"30"
			"visible"			"0"
			"enabled"			"1"
			"paintbackground"	"0"
			"shadow"			"1"
			"font"				"HudHeaderExtraLarge"
			"fgcolor_override"	"255 255 255 255"
			"labelText"			""
			"textAlignment"		"center"
		}
	}

	"CHudGamePlayNotification"
	{
		"fieldName"				"CHudGamePlayNotification"
		"xpos"					"c-300"			
		"ypos"					"68"
		"wide"					"600" 
		"tall"					"155" 
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"
		
		"LeftBgAlpha"			"0"
		"MiddleBgAlpha"			"200"
		"RightBgAlpha"			"0"
		
		"AnimateYFrac"			"1"

		"TextPaddingInsetX"		"0"
		"TextPaddingInsetY"		"0"
		"TextShadowOffsetX"		"1"
		"TextShadowOffsetY"		"1"
		"TextPadding"			"8"

		"Font"					"HudGenericText" 
		"ShadowFont"			"HudGenericText" 
		"FadeDuration"			"0.25"
		"FadeDelay"				"2"
	}

	CHudGame_ObjMessage
	{
		"fieldName"				"CHudGame_ObjMessage"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"c-300"
		"ypos"					"27"
		"zpos"					"1"
		"wide"					"600"		
		"tall"					"21"	
		"paintbackground"		"0"

		"font"					"HudHeaderMedium"
		"textAlignment"			"center"
		"fgcolor_override"		"255 255 255 120"

		"BorderEdgeSize"		"0"
		"BorderEdgeColor"		"255 255 255 255"
	}

	"CHudVote"
	{
		"fieldName"				"CHudVote"
		"xpos"					"0"			
		"ypos"					"0"
		"wide"					"f" // full screen
		"tall"					"f" // full screen
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override"		"0 0 0 0"
		"PaintBackgroundType"	"0" // rounded corners
	}

	HudHintDisplay
	{
		"fieldName"				"HudHintDisplay"
		"visible"				"0"
		"enabled"				"1"
		"xpos"					"c-480"
		"ypos"					"c90"
		"wide"					"960"
		"tall"					"150"
		"HintSize"				"1"
		"text_xpos"				"8"
		"text_ypos"				"8"
		"center_x"				"0"	// center text horizontally
		"center_y"				"-1"	// align text on the bottom
		"paintbackground"		"0"
		"font"					"HudGenericText"
	}	
	
	CHudLocalPlayerVoice
	{
		"fieldName"					"CHudLocalPlayerVoice"
		"visible"					"1"
		"enabled"					"1"
		"xpos"						"20" 	
		"ypos"						"570"	
		"wide"						"24"		
		"tall"						"24"
		"paintbackground"			"0"

		"voice_icon"				"voice/player"

		"voice_icon_radio"			"voice/voice_icon_radio"	
		"voice_icon_local"			"voice/voice_icon_local"	
	}
	
	CHudPlayerVoice
	{
		"fieldName"					"CHudPlayerVoice"
		"visible"					"1"
		"enabled"					"1"
		"xpos"						"20" 	
		"ypos"						"0"	
		"wide"						"360"		
		"tall"						"565"
		"paintbackground"			"0"

		"voice_icon"				"voice/player"	
		"IconSize"					"22"
		"RowInset"					"4"
		"TextPadding"				"5"
		"IconPadding"				"0"
		"TextSpacing"				"5"
		"LineSpacing"				"1"
		"StartBottom"				"1"
		"BgAlpha"					"51"
		"RowSize"					"24"
		"NameFont"					"HudGenericText"
		"TextColor"					"242 235 216 191"
		"MinWidth"					"150"

		"voice_icon_radio"			"voice/voice_icon_radio"	
		"voice_icon_local"			"voice/voice_icon_local"	
	}

	HudTeamTargetId
	{
		"fieldName"					"HudTeamTargetId"
		"visible"					"1"
		"enabled"					"1"
		"xpos"						"0" 	
		"ypos"						"0"	
		"wide"						"f"		
		"tall"						"f"
		"paintbackground"			"0"	

		"TextFont"					"HudGenericTextTeammate"

		"hostile_icon_near_size"	"9"
		"hostile_icon_far_size"		"6"
		"hostile_icon_y_offset"		"0"
		"hostile_icon"				"vgui/hud/icon_transmit"

		"voice_icon"				"vgui/hud/icon_transmit"
		"cooldown_icon"				"vgui/hud/icon_radio_cooldown"
		"transmit_icon"				"vgui/hud/icon_radio_transmit"
		"friend_icon"				"vgui/hud/icon_steam_friend"
		"voice_size"				"14"
		"voice_yoffset"				"-5"
		
		"text_yoffset"				"14"
		
		"squad_icon_size"			"13"
		"squad_icon_size_distant"	"3"

		"friendly_text_y_offset"	"-5"
	}
	
	HudObjectsFloatingDisplay
	{
		"fieldName"						"HudObjectsFloatingDisplay"
		"visible"						"1"
		"enabled"						"1"
		"xpos"							"0" 	
		"ypos"							"0"	
		"wide"							"f"		
		"tall"							"f"
		"paintbackground"				"0"	
		
		"resupply_icon"					"vgui/hud/icon_resupply_crate"
		"resupply_icon_color"			"FriendlyInteraction.SolidColor"
		"resupply_icon_size"			"24"
			
		"text_font"						"HudGenericText"
		"text_yoffset"					"26"
	}

	CEndRoundLobbyMenu
	{
		"fieldName"					"CEndRoundLobbyMenu"
		"xpos"						"0"
		"ypos"						"0"
		"wide"						"f"
		"tall"						"f"
		"visible"					"1"
		"enabled"					"1"
		
		// See: resource/UI/endround_lobby/endround_lobby.res
	}	

	CInsStartRoundSetup
	{
		"fieldName"					"CInsStartRoundSetup"
		"xpos"						"0"
		"ypos"						"-54"
		"wide"						"f"
		"tall"						"f"
		"visible"					"1"
		"enabled"					"1"
		"paintbackground"			"0"
		
		// background colors for different notification types
		"GenericColor"				"27 22 22 255"
		"TeamColor"					"InsBlack"
		"DangerColor"				"InsBlack"

		"GameTypeRoundsLabel"
		{
			"ControlName"				"GameTypeRoundsLabel"
			"fieldName"					"GameTypeRoundsLabel"
			"xpos"						"c-600" 
			"ypos"						"0"	 	
			"wide"						"1200"	
			"tall"						"300"
			"wrap"						"1"
			"centerwrap"				"1"		
			"visible"					"1"
			"textAlignment"				"center"
			"font"						"HudHeaderExtraLargeHeadline"
			"allcaps"					"1"
			"PaintBackgroundType"		"1"
			"Texture1"					"vgui/gameui/notice_bg_lg"
			"labelText"					""
			"fgcolor_override"			"255 255 255 255"
			"BorderEdgeSize"			"0"
			"BorderEdgeColor"			"255 255 255 35"
			"BorderEdgeTexture"			"vgui/gameui/notice_bg_lg"

			// note: If you change the size, then adjust the
			//		 animations in hudanimations.txt.
		}		
	}	

	CHudRestrictedArea
	{
		"fieldName"					"CHudRestrictedArea"
		"xpos"						"c-300"
		"ypos"						"225"
		"wide"						"600"
		"tall"						"180"
		"visible"					"1"
		"enabled"					"1"
		"paintbackground"			"1"
		"PaintBackgroundType"		"1"
		"Texture1"					"vgui/gameui/notice_bg_lg"
		"bgcolor_override"			"120 57 47 255"

		"FlashColor" 				"75 19 9 255"
		"FlashSpeed"				"4"
		
		"WarningLabel"
		{
			"ControlName"			"Label"
			"fieldName"				"WarningLabel"
			"xpos"					"0"
			"ypos"					"67"
			"wide"					"f"
			"tall"					"25"
			"visible"				"1"
			"enabled"				"1"
			"paintbackground"		"0"
			"proportionalToParent"	"1"		

			"font"					"HudHeaderMedium"
			"textAlignment"			"center"
			"fgcolor_override"		"242 235 216 255"
			"labelText"				"#game_warning_title"
		}

		"DescriptionLabel"
		{
			"ControlName"			"Label"
			"fieldName"				"DescriptionLabel"
			"xpos"					"0"
			"ypos"					"90"
			"wide"					"f"
			"tall"					"30"
			"visible"				"1"
			"enabled"				"1"
			"paintbackground"		"0"
			"proportionalToParent"	"1"		

			"font"					"HudHeaderMedium"
			"allcaps"				"1"
			"textAlignment"			"center"
			"fgcolor_override"		"242 235 216 255"
			"labelText"				"#game_warning_restricted_area"
		}
	}

	HudVoiceSelfStatus
	{
		"fieldName" "HudVoiceSelfStatus"
		"visible" "1"
		"enabled" "1"
		"xpos" "r42" 	[$WIN32]
		"ypos" "355"	[$WIN32]
		"xpos" "r75"	[$X360]
		"ypos" "375"	[$X360]
		"wide" "32"
		"tall" "32"
	}

	HudVoiceStatus
	{
		"fieldName" "HudVoiceStatus"
		"visible" "1"
		"enabled" "1"
		"xpos" "r145" [$WIN32]
		"ypos" "0" [$WIN32]
		"xpos" "r210" [$X360]
		"ypos" "0" [$X360]
		"wide" "145"
		"tall" "400"

		"item_wide"	"135"
		
		"show_avatar"		"0"
		
		"show_dead_icon"	"1"
		"dead_xpos"			"1"
		"dead_ypos"			"0"
		"dead_wide"			"16"
		"dead_tall"			"16"
		
		"show_voice_icon"	"1"
		"icon_ypos"			"0"
		"icon_xpos"			"15"
		"icon_tall"			"16"
		"icon_wide"			"16"
		
		"text_xpos"			"33"
	}

	CHudObjectiveStatus
	{
		"fieldName"				"CHudObjectiveStatus"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"0"		
		"wide"					"f0"		
		"tall"					"f"
		"paintbackground"		"0"	
	}
	
	HudMessage
	{
		"fieldName" 			"HudMessage"
		"visible" 				"1"
		"enabled" 				"1"
		"xpos" 	 				"0"
		"ypos"	 				"0"
		"wide"	 				"f0"
		"tall"	 				"f"
	}

	HudMenu
	{
		"fieldName" "HudMenu"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f"
		"tall"	 "f"
		"zpos" "1"

		"TextFont"				"HudDescriptiveText"
		"ItemFont"				"HudDescriptiveText"
		"ItemFontPulsing"		"HudDescriptiveText"
	}

	HudCloseCaption
	{
		"fieldName" "HudCloseCaption"
		"visible"	"1"
		"enabled"	"1"
		"xpos"		"c-280"
		"ypos"		"r320"
		"wide"		"560"
		"tall"		"140"
		"zpos"		"0"

		"BgAlpha"	"130"

		"GrowTime"		"0.15"
		"ItemHiddenTime"	"0.1"  // Nearly same as grow time so that the item doesn't start to show until growth is finished
		"ItemFadeInTime"	"0.15"	// Once ItemHiddenTime is finished, takes this much longer to fade in
		"ItemFadeOutTime"	"0.25"
		"topoffset"		"0"
	}

	HudChat
	{
		"fieldName" "HudChat"
		"visible" "0"
		"enabled" "1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	 "4"
		"tall"	 "4"
		"font"	"HudGenericTextNormal"
	}

	HudAnimationInfo
	{
		"fieldName" "HudAnimationInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f"
		"tall"	 "f"
	}

	HudPredictionDump
	{
		"fieldName" "HudPredictionDump"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f"
		"tall"	 "f"
	}

	HudHintKeyDisplay
	{
		"fieldName"	"HudHintKeyDisplay"
		"visible"	"0"
		"enabled" 	"1"
		"xpos"		"r240"
		"ypos"		"r510"
		"wide"		"200"
		"tall"		"300"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_xgap"	"8"
		"text_ygap"	"8"
		"TextColor"	"255 170 0 220"

		"PaintBackgroundType"	"2"
	}
	
	HudHDRDemo
	{
		"fieldName" "HudHDRDemo"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"f"
		"tall"  "f"
		"visible" "0"
		"enabled" "0"
		
		"Alpha"	"255"
		"PaintBackgroundType"	"2"
		
		"BorderColor"	"0 0 0 255"
		"BorderLeft"	"16"
		"BorderRight"	"16"
		"BorderTop"		"16"
		"BorderBottom"	"64"
		"BorderCenter"	"0"
		
		"TextColor"		"255 255 255 255"
		"LeftTitleY"	"422"
		"RightTitleY"	"422"
	}

	HudTrain
	{
		"fieldName" "HudTrain"
		"visible" "0"
		"enabled" "0"
		"wide"	 "f0"
		"tall"	 "f0"
	}
	
	HudVehicle
	{
		"fieldName" "HudVehicle"
		"visible" "0"
		"enabled" "0"
		"wide"	 "f0"
		"tall"	 "f0"
	}

	HudGeiger
	{
		"fieldName" "HudGeiger"
		"visible" "0"
		"enabled" "0"
		"wide"	 "f0"
		"tall"	 "f0"
	}

	RadialMenu
	{
		"fieldName"				"RadialMenu"
		"visible"				"0"
		"enabled"				"0"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"1"
		"wide"					"f0"
		"tall"					"f0"
	}
	
	HudCrosshairDebug
	{
		"fieldName" "HudCrosshairDebug"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f"
		"tall"	 "f"
	}
	
	CHudOccupyPoints
	{
		"fieldName"				"CHudOccupyPoints"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f" // full screen
		"tall"					"f" // full screen
		"paintbackground"		"0"

		"PrimaryOffestX"		"0"
		"PrimaryOffestY"		"-4"
		"Primaryfont"			"HudCommonLarge"

		"SecondaryOffestX"		"0"
		"SecondaryOffestY"		"5"
		"Secondaryfont"			"HudCommonSmall"

		"boxwide"				"28"
		"boxtall"				"20"

		"LocalPlayerX"			"c-61"
		"LocalPlayerY"			"0"			
		"NonLocalPlayerX"		"c32"
		"NonLocalPlayerY"		"0"	
		
		"BottomBgAlpha"			"220"
		"TopBgAlpha"			"220"
	}

	CHudMarkers
	{
		"fieldName" "CHudMarkers"
		"visible" "1"
		"enabled" "1"
		"xpos"	 "0"
		"ypos"	 "0"
		"wide"	 "f0"
		"tall"	 "f0"
	}

	CHudCompass
	{
		fieldName 	CHudCompass
		visible 	1
		enabled 	1
		wide 		f
		tall 		f

		size 				300 // Compass texture size
		arrow_size 			48
		bearing_inset 		105
		direction_inset		53
		arrow_inset 		-27
		vertical_inset		25
		vertical_offset		46
		bearing_line_size	36

		bg_offset_x			0
		bg_offset_y			0

		direction_font			CompassDirectionLetters
		direction_font_small	CompassDirectionLettersSmall
		text_color				"41 32 32 255"
		marker_enemy_color 		"204 46 25 190"
		bearing_line_color		"242 235 216 10"

		offset_bearing 		"0 -2"
	}

	CHudNewSupply
	{
		"fieldName"				"CHudNewSupply"
		"xpos"					"r210"			
		"ypos"					"332"
		"wide"					"200"
		"tall"					"75"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"0"
		"NewSupplyFadeout"		"7"
		
		"LabelEarnedSupply"
		{
			"fieldName"			"LabelEarnedSupply"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"0"
			"wide"				"200"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"0"
			"font"				"HudDescriptiveVariableWidth"
			"fgcolor_override"	"225 218 219 220"
			"textAlignment"		"east"
			"allcaps"			"0"
			"shadow"			"1"
		}
	}

	CHudTokenSpawnZoneDisplay
	{
		"fieldName"				"CHudTokenSpawnZoneDisplay"
		"visible"				"1"
		"enabled"				"1"		
		"xpos"					"r47"	
		"ypos"					"354"
		"wide"					"120"		
		"tall"					"93"
		"paintbackground"		"0"
		"textAlignment"			"left"
		"allcaps"				"1"
		"SelectionTimeout"		"2.0" // second(s) before calling 'CloseTokenZone' hud animation
		"BackgroundV_Min"		"0"
		"BackgroundV_Max"		"1.0"
		
		"NeutralColor"			"255 255 255 230"
		"CommonHudFgColor"		"255 248 212 255"		
		"CommonHudBgColor"		"InsBlack"

		"IconSize"				"40"
		"IconX"					"0"
		"IconY"					"0"
		"SupplyWidth"			"32"
		"SupplyHeight"			"32"
		"SupplyCountX"			"4"
		"SupplyCountY"			"10"
		"FontSupply"			"HudHeaderMedium"
		"SupplyCountColor"		"10 15 10 240"
	}
	
	"CHudMapBriefing"
	{
		"fieldName"							"CHudMapBriefing"
		"xpos"								"30%"			
		"ypos"								"c-11"
		"wide"								"400"		
		"tall"								"40"
		"visible"							"1"
		"enabled"							"1"
		"paintbackground"					"0"
		
		"alpha"								"0"
		
		"MapTitle"
		{
			"fieldName"			"MapTitle"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"0"
			"wide"				"200"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"0"
			"font"				"HudDescriptiveVariableWidthLarge"
			"textAlignment"		"west"
			"allcaps"			"0"
			"shadow"			"1"
		}
		
		"MapDescription"
		{
			"fieldName"			"MapDescription"
			"ControlName"		"Label"
			"xpos"				"0"
			"ypos"				"20"
			"wide"				"200"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"paintbackground"	"0"
			"font"				"HudDescriptiveVariableWidthLarge"
			"textAlignment"		"west"
			"allcaps"			"0"
			"shadow"			"1"
		}
	}
}
