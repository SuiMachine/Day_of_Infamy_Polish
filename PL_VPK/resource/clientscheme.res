///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"DimWhite"			"255 255 255 120"
		"LightWhite"		"128 128 128 128"
		
		"Red"				"192 28 0 140"
		"Black"				"0 0 0 255"
		"TransparentBlack"	"0 0 0 196"
		"TransparentLightBlack"	"0 0 0 90"
		"RoundWinPanelBackground" "0 0 0 179"

		"Blank"				"0 0 0 0"
		"ForTesting"		"255 0 0 32"
		"ForTesting_Magenta"	"255 0 255 255"
		"ForTesting_MagentaDim"	"255 0 255 120"
		
		//These were ripped from SourceScheme
		"SteamLightGreen"	"157 194 80 255"
		"AchievementsLightGrey"		"79 79 79 255"
		"White"				"255 255 255 255"
		"Grey"				"128 128 128 255"

		//Ins Colors
		"InsBlack"			"27 22 22 255"
		"InsBlack25"		"27 22 22 64"
		"InsBlack50"		"27 22 22 128"
		"InsBlack75"		"27 22 22 192"
		"InsWhite"			"242 235 216 255"
		"InsWhite50"		"242 235 216 128"
		"InsWhite25"		"242 235 216 64"
		"InsLightGrey"		"195 188 189 255"
		"InsLightGrey50"	"195 188 189 128"
		"InsLightGrey25"	"195 188 189 64"
		"InsLightGrey10"	"195 188 189 24"
		"InsLightGrey5"		"195 188 189 12"
		"InsLightGrey2"		"195 188 189 5"
		"InsDarkGrey"		"62 53 53 255"
		"InsDarkGrey25"		"62 53 53 64"
		"InsEnemy"			"172 64 41 255"
		"InsFriend"			"83 157 178 255"
		"InsRed"			"204 46 25 255"
		"InsRed50"			"204 46 25 128"
		"InsYellow"			"242 199 25 255"
		"InsGreen"			"132 150 28 255"
		"InsGreen25"		"132 150 28 64"
		"InsGreen50"		"132 150 28 128"
		"InsGreen75"		"132 150 28 192"
		"ScrollBarGrey"		"51 51 51 255"
		"ScrollBarHilight"	"110 110 110 255"
		"ScrollBarDark"		"38 38 38 255"

		// DOI
		"DOITransparent"			"255 255 255 0"
		"DOIWhite"					"242 238 225 255"
		"DOIBlack"					"0 0 5 255"
		"DOIInventorySelection"		"142 152 153 255"
		"DOIInventoryHoverText"		"50 50 50 255"
		"DOIInventoryDisabledText"	"71 71 71 255"
		"DOIButtonBackground"		"53 51 38 255"
		"DOIEquipmentSlotText"		"53 51 38 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"Grey"		// the lit side of a control
		Border.Dark						"Grey"		// the dark/unlit side of a control
		Border.Selection				"Blank"				// the additional border color for displaying the default/selected button
		Border.BuyPreset				"White"


		Button.TextColor				"255 255 255 255"
		Button.BgColor					"53 51 38 255"
		Button.ArmedTextColor			"255 248 212 255"
		Button.ArmedBgColor				"53 51 38 255"
		Button.DepressedTextColor		"255 248 212 255"
		Button.DepressedBgColor			"53 51 38 255"

		CheckButton.TextColor			"White"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself

		ComboBoxButton.ArrowColor		"White"
		ComboBoxButton.ArmedArrowColor	"White"
		ComboBoxButton.BgColor			"TransparentBlack"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.BgColor					"TransparentBlack"
		Frame.OutOfFocusBgColor			"TransparentBlack"
		Frame.FocusTransitionEffectTime	"0.0"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.0"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"Blank"
		FrameGrip.Color2				"Blank"
		FrameTitleButton.FgColor		"Blank"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"Blank"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"White"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"White"
		Label.TextColor					"White"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"Blank"
		Label.DisabledFgColor2			"LightWhite"

		ListPanel.TextColor					"White"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"Red"
		ListPanel.SelectedOutOfFocusBgColor	"Red"
		ListPanel.EmptyListInfoTextColor	"White"

		Menu.TextColor					"White"
		Menu.BgColor					"TransparentBlack"
		Menu.ArmedTextColor				"White"
		Menu.ArmedBgColor				"Red"
		Menu.TextInset					"6"
		Menu.Font 						"HudCommonSmall"

		Chat.TypingText					"White"

		Panel.FgColor					"DimWhite"
		Panel.BgColor					"blank"

		HTML.BgColor					"Black"

		"BuyPreset.BgColor"				"0 0 0 128"
		"BuyPresetListBox.BgColor"			"0 0 0 128"
		"Popup.BgColor"					"0 0 0 230"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"White"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"White"
		RadioButton.SelectedTextColor	"White"

		RichText.TextColor				"White"
		RichText.BgColor				"Blank"
		RichText.SelectedTextColor		"White"
		RichText.SelectedBgColor		"Blank"

		ScrollBar.Wide							"3"
		ScrollBar.VerticalButtonInsetX			"0"

		ScrollBarButton.FgColor					"InsLightGrey50"
		ScrollBarButton.BgColor					"Blank"
		ScrollBarButton.ArmedFgColor			"White"
		ScrollBarButton.ArmedBgColor			"Blank"
		ScrollBarButton.DepressedFgColor		"White"
		ScrollBarButton.DepressedBgColor		"Blank"

		ScrollBarSlider.FgColor				"InsLightGrey50"			// nob color
		ScrollBarSlider.BgColor				"InsLightGrey2"	// slider background color
		ScrollBarSlider.NobFocusColor			"InsLightGrey"
		ScrollBarSlider.NobDragColor			"InsLightGrey"
		ScrollBarSlider.Inset					"0"

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"White"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentLightBlack"
		SectionedListPanel.SelectedTextColor			"200 255 255 255"
		SectionedListPanel.SelectedBgColor				"255 255 255 32"
		SectionedListPanel.OutOfFocusSelectedTextColor	"200 255 255 255"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 255 255 32"
		SectionedListPanel.MouseOverBgColor		"255 255 255 32"

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"127 140 127 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"White"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"White"
		TextEntry.DisabledTextColor	"White"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	"Red"
		TextEntry.OutOfFocusSelectedBgColor	"Red"
		TextEntry.FocusEdgeColor	"TransparentBlack"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"TransparentBlack"
		Tooltip.BgColor				"Red"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		"FgColor"		"White"
		"BgColor"		"TransparentBlack"

		"ViewportBG"		"Blank"

		// CHudMenu
		"ItemColor"		"255 167 42 200"	// default 255 167 42 255
		"MenuColor"		"233 208 173 255"
		"MenuBoxBg"		"0 0 0 100"

		// weapon selection colors
		"SelectionNumberFg"		"255 220 0 200"
		"SelectionTextFg"		"255 220 0 200"
		"SelectionEmptyBoxBg" 	"0 0 0 80"
		"SelectionBoxBg" 		"0 0 0 80"
		"SelectionSelectedBoxBg" "0 0 0 190"

		// Hint message colors
		"HintMessageFg"			"255 255 255 255"
		"HintMessageBg" 		"0 0 0 60"

		"ProgressBarFg"			"255 30 13 255"

		// Top-left corner of the "Counter-Strike" on the main screen
		"Main.Title1.X"		"32"
		"Main.Title1.Y"		"180"
		"Main.Title1.Color"	"255 255 255 255"

		// Top-left corner of the "SOURCE" on the main screen
		"Main.Title2.X"		"380"
		"Main.Title2.Y"		"205"
		"Main.Title2.Color"	"255 255 255 80"

		// Top-left corner of the "BETA" on the main screen
		"Main.Title3.X"		"460"
		"Main.Title3.Y"		"-10"
		"Main.Title3.Color"	"255 255 0 255"

		// Top-left corner of the menu on the main screen
		"Main.Menu.X"		"32"
		"Main.Menu.Y"		"248"

		// Blank space to leave beneath the menu on the main screen
		"Main.BottomBorder"	"32"
		
		// Team Colors (Insurgency)
		"Security.SolidColor"		"96 201 255 255"
		"Insurgents.SolidColor"		"255 201 96 255"
		"FriendlyTeam.SolidColor"	"83 157 178 255"
		"EnemyTeam.SolidColor"		"172 64 41 255"
		"Squad.SolidColor" 			"132 150 28 255"
		"SpecialPlayer.SolidColor"	"206 171 63 255"
		"Developer.SolidColor"		"194 30 30 255"
		"Neutral.SolidColor"		"255 255 255 255"
		"CommonHud.BgColor"			"0 0 0 200"
		
		// Team Colors (DOI)
		"Allies.SolidColor"						"141 165 112 255"
		"Axis.SolidColor"						"212 83 61 255"
		"Friendly.SolidColor" 					"141 165 112 255"
		"Enemy.SolidColor"						"212 83 61 255"
		"FriendlyInteraction.SolidColor"		"255 248 212 255"
		"FriendlyObjectiveOverview.SolidColor" 	"91 105 70 255"
		"EnemyObjectiveOverview.SolidColor"		"117 73 63 255"
		"NeutralObjectiveOverview.SolidColor"	"38 38 36 255"
		"AlliedObjectiveOverview.SolidColor"	"91 105 70 255"
		"AxisObjectiveOverview.SolidColor"		"117 73 63 255"

		// Scoreboard
		"LocalPlayerBackground"		"InsBlack50"
		
		// Game Timer
		"GameTimer.MinutesAndSeconds"		"InsWhite"
		"GameTimer.Milliseconds"			"InsWhite25"

		// Class Buttons
		"ClassButton.DisabledAlpha"				"255"
		"ClassButton.ActiveAlpha"				"255"
		"ClassButton.EquippedAlpha"				"255"
		"ClassButton.ArmedAlpha"				"255"
		
		// Inventory Stuff
		// Equipped Item button, this sits above "Change X" listing what you have equipped.
		"InventoryEquipped.Background"					"DOITransparent"
		"InventoryEquipped.BackgroundHover"				"DOIInventorySelection"
		"InventoryEquipped.BackgroundDisabled"			"DOITransparent"
		"InventoryEquipped.Text"						"DOIWhite"
		"InventoryEquipped.TextActive"					"DOIWhite"
		"InventoryEquipped.TextHover"					"DOIInventoryHoverText"
		"InventoryEquipped.TextDisabled"				"DOIInventoryDisabledText"
		"InventoryEquipped.XButtonHover"				"DOIWhite"
		
		// Change X button
		"InventoryChange.Text"							"DOIWhite"
		"InventoryChange.TextHover"						"DOIInventoryHoverText"
		"InventoryChange.TextDepressed"					"DOIWhite"		
		"InventoryChange.Background"					"DOITransparent"
		"InventoryChange.BackgroundHover"				"DOIInventorySelection"
		"InventoryChange.BackgroundDepressed"			"DOITransparent"
		
		// Item menu buttons (preview of image, description text etc)
		"InventoryMenuButton.TitleBackground"			"53 51 38 50"
		"InventoryMenuButton.TitleBackgroundHover"		"38 38 39 220"
		"InventoryMenuButton.TitleBackgroundSelected"	"DOIButtonBackground"		
		"InventoryMenuButton.ButtonBackground"			"53 51 38 50"
		"InventoryMenuButton.ButtonBackgroundHover"		"38 38 39 220"
		"InventoryMenuButton.ButtonBackgroundSelected"	"DOIButtonBackground"		
		"InventoryMenuButton.Text"						"DOIBlack"
		"InventoryMenuButton.TextActive"				"DOIWhite"
		"InventoryMenuButton.TextDisabled"				"DOIInventoryDisabledText"
		"InventoryMenuButton.Image"						"255 255 255 255"  			// Color of background preview image
		"InventoryMenuButton.ImageDisabled"				"140 160 160 140"			// Color of background preview image (disabled)
		"InventoryMenuButton.SelectText"				"DOIWhite"
		
		// Cancel/Apply button
		"InventoryCancelButton.Background"				"DOIButtonBackground"	
		"InventoryCancelButton.Text"					"DOIWhite"

		// Tooltip
		"InventoryTooltip.Background"					"DOIInventorySelection"
		
		// Item listing (bottom right of screen)
		// (Header buttons)
		"InventoryListTitle.Text"						"DOIEquipmentSlotText"
		"InventoryListTitle.TextHover"					"DOIEquipmentSlotText"
		"InventoryListTitle.TextDepressed"				"DOIEquipmentSlotText"
		"InventoryListTitle.Background"					"DOITransparent"
		"InventoryListTitle.BackgroundHover"			"DOITransparent"
		"InventoryListTitle.BackgroundDepressed"		"DOITransparent"
		"InventoryListTitle.Gear"						"DOITransparent" // Little cog in the title
		
		// Inventory weapon pointer line (points to attachments)
		"InventoryWeaponPointer.Line"					"DOIWhite"
		"InventoryWeaponPointer.Circle"					"DOIWhite"
				
		// Radial menu
		"RadialMenu.Text"								"InsWhite"
		"RadialMenu.TextHover"							"InsWhite"
		"RadialMenu.BG"									"InsBlack25"
		"RadialMenu.BGHover"							"InsBlack75"
		
		// Floating Markers
		"Markers.Enemy"								"InsEnemy"
		"Markers.Position"							"InsGreen"
		"Markers.Grenade"								"InsEnemy"
		"Markers.Smoke"								"InsGreen"
		"Markers.Ordinance"							"InsEnemy"
		"Markers.Smoke"								"InsGreen"
		"Markers.Suppress"							"InsEnemy"
		
		// End-round Screen		
		"EndRoundLobby.Text"							"InsWhite"
		// For more colours, check out UI/endround_lobby/...
		
		// Floating markers
		"FloatingHudMarker.TargetObjectiveColor"			"InsWhite" // Color of little arrows indicating targeted objective.
	}
	
	//////////////////////// BITMAP FONT FILES /////////////////////////////
	//
	// Bitmap Fonts are ****VERY*** expensive static memory resources so they are purposely sparse
	BitmapFontFiles
	{
		// UI buttons, custom font, (256x64)
		"Buttons"		"materials/vgui/fonts/buttons_32.vbf"      [!$PS3]
		"Buttons"		"materials/vgui/fonts/buttons_ps3_32.vbf"  [$PS3 && !$INPUTSWAPAB]
		"Buttons"		"materials/vgui/fonts/buttons_ps3_j_32.vbf"  [$PS3 && $INPUTSWAPAB]
	}
	
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace

		//-------------------------------------------------------------------------------------------
		// ENGINE FONTS
		//-------------------------------------------------------------------------------------------
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"24"
				"weight"	"400"
				"antialias" "1"
			}
		}

		"DebugFixedSmall" 
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"28"
				"weight"	"400"
				"antialias" "1"
			}
		}

		DebugOverlay 
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"24"
				"weight"	"400"
				"outline"	"1"
			}
		}

		Default 
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"9"
				"weight"	"700"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"700"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"900"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"900"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"900"
				"antialias" "1"
				"yres"	"1200 10000"
				"additive"	"1"
			}
		}

		"DefaultSmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x01FF"
				"yres"	"480 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"13"
				"weight"	"0"
				"range"		"0x0000 0x01FF"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x01FF"
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x01FF"
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"0"
				"range"		"0x0000 0x01FF"
				"yres"	"1200 6000"
				"antialias"	"1"
			}
			"6"
			{
				"name"		"Arial"
				"tall"		"12"
				"range" 		"0x0000 0x01FF"
				"weight"		"0"
			}
		}

		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"13"
				"weight"	"0"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"0"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1200 6000"
				"antialias"	"1"
			}
			"6"
			{
				"name"		"Verdana"
				"tall"		"12"
				"range" 		"0x0000 0x01FF"
				"weight"		"0"
			}
			"7"
			{
				"name"		"Arial"
				"tall"		"11"
				"range" 		"0x0000 0x01FF"
				"weight"		"0"
			}
		}
		
		"CenterPrintText"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"16"
				"weight"		"400"
				"antialias"		"1"
			}		
		}
		
	// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"5"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24" 
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
				"range"		"0x0000 0x01FF"	//	Rozszerzona Łacina, bo jednak wspiera
				"antialias" "1"
				"additive"	"1"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}

		"ViewportMenuFont_Title"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"32"
				"weight"	"800"
				"antialias" "1"
			}
		}

		"ViewportMenuFont_SmallButton"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"14"
				"weight"	"300"
				"antialias" "1"
			}
		}

		"ViewportMenuFont_SmallButton_Blur"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"14"
				"weight"	"300"
				"antialias" "1"
				"blur"		"3"
			}
		}

		"ViewportMenuFont_Button"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"18"
				"weight"	"300"
				"antialias" "1"
			}
		}

		"ViewportMenuFont_ButtonBlur"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"18"
				"weight"	"300"
				"antialias" "1"
				"blur"		"3"
				//"additive"	"1"
			}
		}

		"TargetIdFont"
		{
			"1"
			{
				"name"		"TypewriterTextBold"
				"tall"		"8"
				"weight"	"400"
				"antialias" "1"
			}
		}

		"HudVictoryText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"20"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"HudHeroText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"HudRoundStartText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"20"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"HudWeaponSelectionFont"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"HudDominationTeamText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"400"
				"antialias" "1"
			}
		}

		"HudCommonFloating"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"100"
				"antialias" 	"1"
			}		
		}
		"HudCommonTiny"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"10"
				"weight"		"100"
				"antialias" 	"1"
			}		
		}


		"HudCommonVerySmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"7"
				"weight"		"500"
				"antialias" 	"1"
			}
		}

		"HudCommonSmallAdditive"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"100"
				"antialias"		"1"
				"additive"		"1"
			}
		}
		
		"HudHintText"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"18"
				"weight"		"100"
				"antialias"		"1"
			}		
		}

		"HudCommonSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"16"
				"weight"		"100"
				"antialias" 	"1"
			}
		}

		"HudFloatingText"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"14"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudWaveCount"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"500"
				"antialias" 	"1"
			}
		}

		"HudWeaponInfo"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"10"
				"weight"		"300"
				"antialias" 	"1"
			}
		}
		
		"HudWeaponInfoSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"300"
				"antialias" 	"1"
			}
		}


		"HudImportantMessage"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"13"
				"weight"		"500"
				"antialias" 	"1"
			}
		}
		
		"HudMessageDetail"
		{
			"1"
			{
				"name"			"misproject"
				"tall"			"18"
				"weight"		"500"
				"antialias"		"1"
			}
		}

		"HudWeaponInfoLarge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"15"
				"weight"		"500"
				"antialias" 	"1"
			}
		}

		"HudDescriptiveText"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"14"
				"weight"		"100"
				"antialias" 	"1"
			}		
		}
		
		"HudDescriptiveTextSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"15"
				"weight"		"100"
				"antialias" 	"1"
				"range"			"0x0000 0xFFFF"
			}		
		}

		"HudDescriptiveVariableWidth"
		{
			"1"
			{
				"name"			"TypewriterTextVarible"
				"tall"			"14"
				"weight"		"100"
				"antialias" 	"1"
			}		
		}
		
		"HudDescriptiveVariableWidthLarge"
		{
			"1"
			{
				"name"			"TypewriterTextVarible"
				"tall"			"18"
				"weight"		"100"
				"antialias" 	"1"
			}		
		}
		
		"HudCommonSlimAdditive"
		{
			"1"
			{
				"name"			"Stratum2-Bold"	[!$RUSSIAN]
				"name"			"Arial"				[$RUSSIAN]
				"tall"			"10"
				"weight"		"100"
				"antialias"		"1"
				"additive"		"1"
			}
		}

		"HudCommonSlim"
		{
			"1"
			{
				"name"			"Stratum2-Bold"	[!$RUSSIAN]
				"name"			"Arial"				[$RUSSIAN]
				"tall"			"10"
				"weight"		"700"
				"antialias" 	"1"
			}
		}

		"HudCommonMediumAdditive"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"250"
				"antialias" 	"1"
				"additive"		"1"
			}
		}

		"HudCommonMedium"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"250"
				"antialias" 	"1"
			}
		}

		"HudCommonMediumLarge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"18"
				"weight"		"250"
				"antialias" 	"1"
			}
		}

		"HudCommonLargeAdditive"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"15"
				"weight"		"250"
				"antialias" 	"1"
				"additive"		"1"
			}
		}

		"HudCommonLarge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"23"
				"weight"		"250"
				"antialias" 	"1"
			}
		}

		"HudCommonHuge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"26"
				"weight"		"250"
				"antialias" 	"1"
			}
		}

		"HudLabelLarge"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"15"
				"weight"		"500"
				"antialias"		"1"
			}
		}

		"HudLabelTitle"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"14"
				"weight"		"300"
				"antialias"		"1"		
			}
		}

		"HudLabelSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"13"
				"weight"		"300"
				"antialias"		"1"
			}
		}


		"LeaderboardWinCountFont"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"48"
				"weight"	"1200"
				"antialias" "1"
			}
		}

		"LeaderboardScoreFont"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"16"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"LeaderboardTeamNameText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"8"
				"weight"	"1200"
				"antialias" "1"
			}
		}

		"LeaderboardMiscText"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"9"
				"weight"	"600"
				"antialias" "1"
			}
		}
		
		"EndRoundLobbyTitle"
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"Misproject"
				"tall"		"98"
				"weight"	"400"
				"antialias"	"1"
			}		
		}
		
//////////////////////// DAY OF INFAMY /////////////////////////////
		

		"HudObjectiveLetter"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"16"
				"weight"		"100"
				"antialias" 	"1"
			}
		}

		"HudObjectiveLetterFloating"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"10"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
		"HudGenericText"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"14"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
		"HudGenericTextNormal"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
		"HudGenericTextSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"10"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
		"HudGenericTextTeammate"
		{
			"1"
			{
				"name"			"TypewriterTextVarible"
				"tall"			"11"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
		"HudGenericTextLarge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"18"
				"weight"		"100"
				"antialias" 	"1"
			}
		}

		"HudGenericTextLarger"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"22"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudGenericTextExtraLarge"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"26"
				"weight"		"200"
				"antialias" 	"1"
			}
		}
		
		"HudHeader20"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"20"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudHeaderExtraLarge"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"24"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudHeaderExtraLargeHeadline"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"32"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudHeaderExtraExtraLarge"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"44"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudHeaderExtraExtraExtraLarge"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"60"
				"weight"		"10"
				"antialias" 	"1"
			}
		}

		"HudHeaderTeamName"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"30"
				"weight"		"200"
				"antialias" 	"1"
			}
		}

		"HudHeaderWinCondition"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"56"
				"weight"		"200"
				"antialias" 	"1"
			}
		}
		
		"HudHeaderLarge"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"18"
				"weight"		"10"
				"antialias" 	"1"
			}
		}

		"HudHeaderMedium"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"16"
				"weight"		"100"
				"antialias" 	"1"
			}
		}

		"HudHeaderSmall"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"14"
				"weight"		"100"
				"antialias" 	"1"
			}
		}

		"HudHeaderExtraSmall"
		{
			"1"
			{
				"name"			"Doif"
				"tall"			"10"
				"weight"		"100"
				"antialias" 	"1"
			}
		}
		
//////////////////////// INSTRUCTOR /////////////////////////////

		"InstructorTitle"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"16"
				"weight"		"400"
				"antialias"		"1"
				"dropshadow"	"1"
			}
		}

		"InstructorTitle_ss"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"400"
				"antialias"		"1"
				"dropshadow"	"1"
			}
		}
		
		"InstructorButtons"
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.65"
				"scaley"	"0.65"
			}
		}
		
		"InstructorButtons_ss"
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.8" [$GAMECONSOLELODEF]
				"scaley"	"0.8" [$GAMECONSOLELODEF]
				"scalex"	"0.5" [$GAMECONSOLEHIDEF]
				"scaley"	"0.5" [$GAMECONSOLEHIDEF]
			}
		}
		
		"InstructorKeyBindings"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"12"
				"weight"		"800"
				"antialias"		"1"
			}
		}

		"InstructorKeyBindingsSmall"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"9"
				"weight"		"800"
				"antialias"		"1"
			}
		}
		
//////////////////////// CLOSE CAPTION /////////////////////////////

		"CloseCaption_Normal"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"TypewriterTextVarible"
				"tall"			"16"
				"weight"		"400"
				"antialias"		"1"
			}
		}
		
		"CloseCaption_Italic"
		{	
			"1"
			{
				"name"		"TypewriterTextVarible"
				"tall"		"20"
				"weight"	"500"
				"italic"	"1"
				"antialias"	"1"
			}
		}
		
		"CloseCaption_Bold" 
		{		
			"1"
			{
				"name"		"TypewriterTextVarible"
				"tall"		"20"
				"weight"	"900"
				"antialias"	"1"
			}
		}
		
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"TypewriterTextVarible"
				"tall"		"20"
				"weight"	"900"
				"italic"	"1"
				"antialias"	"1"
			}
		}

		"CloseCaption_Console" [$GAMECONSOLE]
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"UniversLTStd-BoldCn"
				"tall"		"20"
				"weight"	"400"
				"range"		"0x0000 0x01FF" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias"	"1"
			}
		}

		"RadialMenuButton"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"18"
				"weight"	"400"
				"antialias" 	"1"
			}
		}

		"RadialMenuButtonSmall"
		{
			"1"
			{
				"name"			"TypewriterTextBold"
				"tall"			"16"
				"weight"	"400"
				"antialias" 	"1"
			}
		}

		"RadialMenuButtonTiny"
		{
			"1"
			{
				"name"			"TypewriterTextNormal"
				"tall"			"13"
				"weight"		"400"
				"antialias" 	"1"
			}
		}

		"CompassDirectionLetters"
		{
			"1"
			{
				"name"			"Doifura"
				"tall"			"13"
				"weight"		"400"
				"antialias"		"1"
			}
		}

		"CompassDirectionLettersSmall"
		{
			"1"
			{
				"name"			"Doifura"
				"tall"			"8"
				"weight"		"200"
				"antialias"		"1"
			}
		}

		"HudEndRoundTaglineTitle"
		{
			"1"
			{
				"name"			"TypewriterTextVarible"
				"tall"			"20"
				"weight"		"300"
				"antialias" 	"1"
			}		
		}
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		//-------------------------------------------------------------------------------------------
		// INS BOARDERS
		//-------------------------------------------------------------------------------------------
		InsHudBorderGradient
		{
			"bordertype"			"scalable_image"
			"backgroundtype"		"2"

			"color"					"255 255 255 100"
			
			"image"					"borders/br_bg_hud_gradient"
			"src_corner_height"		"16"				// pixels inside the image
			"src_corner_width"		"16"
			"draw_corner_width"		"8"				// screen size of the corners ( and sides ), proportional
			"draw_corner_height" 	"8"	
		}
		
		HexagonalButton
		{
			"bordertype"			"image"
			"backgroundtype"		"1"

			"color"					"255 255 255 255"
			
			"image"					"bg_hexagonal_button"
			"tiled"					"0"
		}
		
		SubpanelBorder
		{
			Left
			{
				"1"
				{
					"color"	"75 71 59 255"
				}
				"2"
				{
					"color"	"75 71 59 255"
				}
				"3"
				{
					"color"	"75 71 59 255"
				}
			}
			Right
			{
				"1"
				{
					"color"	"75 71 59 255"
				}
				"2"
				{
					"color"	"75 71 59 255"
				}
				"3"
				{
					"color"	"75 71 59 255"
				}
			}
			Top
			{
				"1"
				{
					"color"	"75 71 59 255"
				}
				"2"
				{
					"color"	"75 71 59 255"
				}
				"3"
				{
					"color"	"75 71 59 255"
				}
			}
			Bottom
			{
				"1"
				{
					"color"	"75 71 59 255"
				}
				"2"
				{
					"color"	"75 71 59 255"
				}
				"3"
				{
					"color"	"75 71 59 255"
				}
			}
		}

		SubpanelBorderSelected
		{
			Left
			{
				"1"
				{
					"color"	"218 214 201 240"
				}
				"2"
				{
					"color"	"218 214 201 240"
				}
				"3"
				{
					"color"	"218 214 201 240"
				}
			}
			Right
			{
				"1"
				{
					"color"	"218 214 201 240"
				}
				"2"
				{
					"color"	"218 214 201 240"
				}
				"3"
				{
					"color"	"218 214 201 240"
				}
			}
			Top
			{
				"1"
				{
					"color"	"218 214 201 240"
				}
				"2"
				{
					"color"	"218 214 201 240"
				}
				"3"
				{
					"color"	"218 214 201 240"
				}
			}
			Bottom
			{
				"1"
				{
					"color"	"218 214 201 240"
				}
				"2"
				{
					"color"	"218 214 201 240"
				}
				"3"
				{
					"color"	"218 214 201 240"
				}
			}
		}
		
		SubheadingUnderlineLight
		{
			Bottom
			{
				"1"
				{
					"color"	"242 238 225 255"
				}
			}
		}
		
		SubheadingUnderlineDark
		{
			Bottom
			{
				"1"
				{
					"color"	"53 51 38 255"
				}
				"2"
				{
					"color"	"53 51 38 255"
				}				
				"3"
				{
					"color"	"53 51 38 255"
				}			
			}
		}

		HudInfoComponetsOutline
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "66 63 62 0"
					"offset" "0 0"
				}
				"2"
				{
					"color" "16 13 12 0"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "66 63 62 0"
					"offset" "0 0"
				}
				"2"
				{
					"color" "16 13 12 0"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "66 63 62 0"
					"offset" "0 0"
				}
				"2"
				{
					"color" "16 13 12 0"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "66 63 62 0"
					"offset" "0 0"
				}
				"2"
				{
					"color" "16 13 12 0"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"7"
		{
			"font"	"resource/DroidSansFallback.ttf"
			"name"	"Droid Sans Fallback"
			"range"	"0x00FF 0xFFFF"
		}
		
		"8"
		{
			"font"	"resource/DroidSansFallbackFull.ttf"
			"name"	"Droid Sans Fallback Full"
			"range"	"0x00FF 0xFFFF"
		}
		
		"9"
		{
			"font"	"resource/cmuntb.vfont"
			"name"	"TypewriterTextBold"
		}
		
		"10"
		{
			"font"	"resource/Doif.otf"
			"name"	"Doif"
		}

		"11"
		{
			"font"	"resource/html/uiresource/fonts/cmunvt.ttf"
			"name"	"TypewriterTextNormal"
		}

		"12"
		{
			"font"	"resource/Doifura.otf"
			"name"	"Doifura"
		}
		
		"13"
		{
			"font"	"resource/cmunvt.ttf"
			"name"	"TypewriterTextVarible"
		}
		
	}
}
