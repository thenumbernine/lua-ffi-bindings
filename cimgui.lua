local ffi = require 'ffi'

-- comments

-- typedefs

require 'ffi.req' 'c.stdio'
require 'ffi.req' 'c.stdint'
require 'ffi.req' 'c.stdarg'
require 'ffi.req' 'c.stdbool'
require 'sdl'	-- usd the SDL repo so that it can determine (/ detect?) what SDL version to use

ffi.cdef[[

// typedefs that can become enums

typedef enum {
	ImGui_ImplSDL3_GamepadMode_AutoFirst,
	ImGui_ImplSDL3_GamepadMode_AutoAll,
	ImGui_ImplSDL3_GamepadMode_Manual
} ImGui_ImplSDL3_GamepadMode;
typedef enum {
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1 << 0,
    ImGuiWindowFlags_NoResize = 1 << 1,
    ImGuiWindowFlags_NoMove = 1 << 2,
    ImGuiWindowFlags_NoScrollbar = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse = 1 << 4,
    ImGuiWindowFlags_NoCollapse = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize = 1 << 6,
    ImGuiWindowFlags_NoBackground = 1 << 7,
    ImGuiWindowFlags_NoSavedSettings = 1 << 8,
    ImGuiWindowFlags_NoMouseInputs = 1 << 9,
    ImGuiWindowFlags_MenuBar = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 1 << 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,
    ImGuiWindowFlags_NoNavInputs = 1 << 16,
    ImGuiWindowFlags_NoNavFocus = 1 << 17,
    ImGuiWindowFlags_UnsavedDocument = 1 << 18,
    ImGuiWindowFlags_NoDocking = 1 << 19,
    ImGuiWindowFlags_NoNav = ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NoDecoration = ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse,
    ImGuiWindowFlags_NoInputs = ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_DockNodeHost = 1 << 23,
    ImGuiWindowFlags_ChildWindow = 1 << 24,
    ImGuiWindowFlags_Tooltip = 1 << 25,
    ImGuiWindowFlags_Popup = 1 << 26,
    ImGuiWindowFlags_Modal = 1 << 27,
    ImGuiWindowFlags_ChildMenu = 1 << 28,
}ImGuiWindowFlags_;
typedef enum {
    ImGuiChildFlags_None = 0,
    ImGuiChildFlags_Borders = 1 << 0,
    ImGuiChildFlags_AlwaysUseWindowPadding = 1 << 1,
    ImGuiChildFlags_ResizeX = 1 << 2,
    ImGuiChildFlags_ResizeY = 1 << 3,
    ImGuiChildFlags_AutoResizeX = 1 << 4,
    ImGuiChildFlags_AutoResizeY = 1 << 5,
    ImGuiChildFlags_AlwaysAutoResize = 1 << 6,
    ImGuiChildFlags_FrameStyle = 1 << 7,
    ImGuiChildFlags_NavFlattened = 1 << 8,
}ImGuiChildFlags_;
typedef enum {
    ImGuiItemFlags_None = 0,
    ImGuiItemFlags_NoTabStop = 1 << 0,
    ImGuiItemFlags_NoNav = 1 << 1,
    ImGuiItemFlags_NoNavDefaultFocus = 1 << 2,
    ImGuiItemFlags_ButtonRepeat = 1 << 3,
    ImGuiItemFlags_AutoClosePopups = 1 << 4,
    ImGuiItemFlags_AllowDuplicateId = 1 << 5,
}ImGuiItemFlags_;
typedef enum {
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1 << 0,
    ImGuiInputTextFlags_CharsHexadecimal = 1 << 1,
    ImGuiInputTextFlags_CharsScientific = 1 << 2,
    ImGuiInputTextFlags_CharsUppercase = 1 << 3,
    ImGuiInputTextFlags_CharsNoBlank = 1 << 4,
    ImGuiInputTextFlags_AllowTabInput = 1 << 5,
    ImGuiInputTextFlags_EnterReturnsTrue = 1 << 6,
    ImGuiInputTextFlags_EscapeClearsAll = 1 << 7,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 8,
    ImGuiInputTextFlags_ReadOnly = 1 << 9,
    ImGuiInputTextFlags_Password = 1 << 10,
    ImGuiInputTextFlags_AlwaysOverwrite = 1 << 11,
    ImGuiInputTextFlags_AutoSelectAll = 1 << 12,
    ImGuiInputTextFlags_ParseEmptyRefVal = 1 << 13,
    ImGuiInputTextFlags_DisplayEmptyRefVal = 1 << 14,
    ImGuiInputTextFlags_NoHorizontalScroll = 1 << 15,
    ImGuiInputTextFlags_NoUndoRedo = 1 << 16,
    ImGuiInputTextFlags_ElideLeft = 1 << 17,
    ImGuiInputTextFlags_CallbackCompletion = 1 << 18,
    ImGuiInputTextFlags_CallbackHistory = 1 << 19,
    ImGuiInputTextFlags_CallbackAlways = 1 << 20,
    ImGuiInputTextFlags_CallbackCharFilter = 1 << 21,
    ImGuiInputTextFlags_CallbackResize = 1 << 22,
    ImGuiInputTextFlags_CallbackEdit = 1 << 23,
}ImGuiInputTextFlags_;
typedef enum {
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1 << 0,
    ImGuiTreeNodeFlags_Framed = 1 << 1,
    ImGuiTreeNodeFlags_AllowOverlap = 1 << 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 1 << 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 1 << 4,
    ImGuiTreeNodeFlags_DefaultOpen = 1 << 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 1 << 6,
    ImGuiTreeNodeFlags_OpenOnArrow = 1 << 7,
    ImGuiTreeNodeFlags_Leaf = 1 << 8,
    ImGuiTreeNodeFlags_Bullet = 1 << 9,
    ImGuiTreeNodeFlags_FramePadding = 1 << 10,
    ImGuiTreeNodeFlags_SpanAvailWidth = 1 << 11,
    ImGuiTreeNodeFlags_SpanFullWidth = 1 << 12,
    ImGuiTreeNodeFlags_SpanLabelWidth = 1 << 13,
    ImGuiTreeNodeFlags_SpanAllColumns = 1 << 14,
    ImGuiTreeNodeFlags_LabelSpanAllColumns = 1 << 15,
    ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 1 << 17,
    ImGuiTreeNodeFlags_CollapsingHeader = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog,
}ImGuiTreeNodeFlags_;
typedef enum {
    ImGuiPopupFlags_None = 0,
    ImGuiPopupFlags_MouseButtonLeft = 0,
    ImGuiPopupFlags_MouseButtonRight = 1,
    ImGuiPopupFlags_MouseButtonMiddle = 2,
    ImGuiPopupFlags_MouseButtonMask_ = 0x1F,
    ImGuiPopupFlags_MouseButtonDefault_ = 1,
    ImGuiPopupFlags_NoReopen = 1 << 5,
    ImGuiPopupFlags_NoOpenOverExistingPopup = 1 << 7,
    ImGuiPopupFlags_NoOpenOverItems = 1 << 8,
    ImGuiPopupFlags_AnyPopupId = 1 << 10,
    ImGuiPopupFlags_AnyPopupLevel = 1 << 11,
    ImGuiPopupFlags_AnyPopup = ImGuiPopupFlags_AnyPopupId | ImGuiPopupFlags_AnyPopupLevel,
}ImGuiPopupFlags_;
typedef enum {
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_NoAutoClosePopups = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick = 1 << 2,
    ImGuiSelectableFlags_Disabled = 1 << 3,
    ImGuiSelectableFlags_AllowOverlap = 1 << 4,
    ImGuiSelectableFlags_Highlight = 1 << 5,
}ImGuiSelectableFlags_;
typedef enum {
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1 << 0,
    ImGuiComboFlags_HeightSmall = 1 << 1,
    ImGuiComboFlags_HeightRegular = 1 << 2,
    ImGuiComboFlags_HeightLarge = 1 << 3,
    ImGuiComboFlags_HeightLargest = 1 << 4,
    ImGuiComboFlags_NoArrowButton = 1 << 5,
    ImGuiComboFlags_NoPreview = 1 << 6,
    ImGuiComboFlags_WidthFitPreview = 1 << 7,
    ImGuiComboFlags_HeightMask_ = ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest,
}ImGuiComboFlags_;
typedef enum {
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1 << 0,
    ImGuiTabBarFlags_AutoSelectNewTabs = 1 << 1,
    ImGuiTabBarFlags_TabListPopupButton = 1 << 2,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 1 << 3,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 1 << 4,
    ImGuiTabBarFlags_NoTooltip = 1 << 5,
    ImGuiTabBarFlags_DrawSelectedOverline = 1 << 6,
    ImGuiTabBarFlags_FittingPolicyResizeDown = 1 << 7,
    ImGuiTabBarFlags_FittingPolicyScroll = 1 << 8,
    ImGuiTabBarFlags_FittingPolicyMask_ = ImGuiTabBarFlags_FittingPolicyResizeDown | ImGuiTabBarFlags_FittingPolicyScroll,
    ImGuiTabBarFlags_FittingPolicyDefault_ = ImGuiTabBarFlags_FittingPolicyResizeDown,
}ImGuiTabBarFlags_;
typedef enum {
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1 << 0,
    ImGuiTabItemFlags_SetSelected = 1 << 1,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 1 << 2,
    ImGuiTabItemFlags_NoPushId = 1 << 3,
    ImGuiTabItemFlags_NoTooltip = 1 << 4,
    ImGuiTabItemFlags_NoReorder = 1 << 5,
    ImGuiTabItemFlags_Leading = 1 << 6,
    ImGuiTabItemFlags_Trailing = 1 << 7,
    ImGuiTabItemFlags_NoAssumedClosure = 1 << 8,
}ImGuiTabItemFlags_;
typedef enum {
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1 << 0,
    ImGuiFocusedFlags_RootWindow = 1 << 1,
    ImGuiFocusedFlags_AnyWindow = 1 << 2,
    ImGuiFocusedFlags_NoPopupHierarchy = 1 << 3,
    ImGuiFocusedFlags_DockHierarchy = 1 << 4,
    ImGuiFocusedFlags_RootAndChildWindows = ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows,
}ImGuiFocusedFlags_;
typedef enum {
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1 << 0,
    ImGuiHoveredFlags_RootWindow = 1 << 1,
    ImGuiHoveredFlags_AnyWindow = 1 << 2,
    ImGuiHoveredFlags_NoPopupHierarchy = 1 << 3,
    ImGuiHoveredFlags_DockHierarchy = 1 << 4,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 1 << 5,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 1 << 7,
    ImGuiHoveredFlags_AllowWhenOverlappedByItem = 1 << 8,
    ImGuiHoveredFlags_AllowWhenOverlappedByWindow = 1 << 9,
    ImGuiHoveredFlags_AllowWhenDisabled = 1 << 10,
    ImGuiHoveredFlags_NoNavOverride = 1 << 11,
    ImGuiHoveredFlags_AllowWhenOverlapped = ImGuiHoveredFlags_AllowWhenOverlappedByItem | ImGuiHoveredFlags_AllowWhenOverlappedByWindow,
    ImGuiHoveredFlags_RectOnly = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
    ImGuiHoveredFlags_RootAndChildWindows = ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows,
    ImGuiHoveredFlags_ForTooltip = 1 << 12,
    ImGuiHoveredFlags_Stationary = 1 << 13,
    ImGuiHoveredFlags_DelayNone = 1 << 14,
    ImGuiHoveredFlags_DelayShort = 1 << 15,
    ImGuiHoveredFlags_DelayNormal = 1 << 16,
    ImGuiHoveredFlags_NoSharedDelay = 1 << 17,
}ImGuiHoveredFlags_;
typedef enum {
    ImGuiDockNodeFlags_None = 0,
    ImGuiDockNodeFlags_KeepAliveOnly = 1 << 0,
    ImGuiDockNodeFlags_NoDockingOverCentralNode = 1 << 2,
    ImGuiDockNodeFlags_PassthruCentralNode = 1 << 3,
    ImGuiDockNodeFlags_NoDockingSplit = 1 << 4,
    ImGuiDockNodeFlags_NoResize = 1 << 5,
    ImGuiDockNodeFlags_AutoHideTabBar = 1 << 6,
    ImGuiDockNodeFlags_NoUndocking = 1 << 7,
}ImGuiDockNodeFlags_;
typedef enum {
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 << 0,
    ImGuiDragDropFlags_SourceNoDisableHover = 1 << 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 1 << 2,
    ImGuiDragDropFlags_SourceAllowNullID = 1 << 3,
    ImGuiDragDropFlags_SourceExtern = 1 << 4,
    ImGuiDragDropFlags_PayloadAutoExpire = 1 << 5,
    ImGuiDragDropFlags_PayloadNoCrossContext = 1 << 6,
    ImGuiDragDropFlags_PayloadNoCrossProcess = 1 << 7,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1 << 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 1 << 11,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 1 << 12,
    ImGuiDragDropFlags_AcceptPeekOnly = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect,
}ImGuiDragDropFlags_;
typedef enum {
    ImGuiDataType_S8,
    ImGuiDataType_U8,
    ImGuiDataType_S16,
    ImGuiDataType_U16,
    ImGuiDataType_S32,
    ImGuiDataType_U32,
    ImGuiDataType_S64,
    ImGuiDataType_U64,
    ImGuiDataType_Float,
    ImGuiDataType_Double,
    ImGuiDataType_Bool,
    ImGuiDataType_String,
    ImGuiDataType_COUNT
}ImGuiDataType_;
typedef enum {
ImGuiDir_None=-1,
ImGuiDir_Left=0,
ImGuiDir_Right=1,
ImGuiDir_Up=2,
ImGuiDir_Down=3,
ImGuiDir_COUNT=4,
}ImGuiDir;
typedef enum {
ImGuiSortDirection_None=0,
ImGuiSortDirection_Ascending=1,
ImGuiSortDirection_Descending=2,
}ImGuiSortDirection;
typedef enum {
ImGuiKey_None=0,
ImGuiKey_NamedKey_BEGIN=512,
ImGuiKey_Tab=512,
ImGuiKey_LeftArrow=513,
ImGuiKey_RightArrow=514,
ImGuiKey_UpArrow=515,
ImGuiKey_DownArrow=516,
ImGuiKey_PageUp=517,
ImGuiKey_PageDown=518,
ImGuiKey_Home=519,
ImGuiKey_End=520,
ImGuiKey_Insert=521,
ImGuiKey_Delete=522,
ImGuiKey_Backspace=523,
ImGuiKey_Space=524,
ImGuiKey_Enter=525,
ImGuiKey_Escape=526,
ImGuiKey_LeftCtrl=527,
ImGuiKey_LeftShift=528,
ImGuiKey_LeftAlt=529,
ImGuiKey_LeftSuper=530,
ImGuiKey_RightCtrl=531,
ImGuiKey_RightShift=532,
ImGuiKey_RightAlt=533,
ImGuiKey_RightSuper=534,
ImGuiKey_Menu=535,
ImGuiKey_0=536,
ImGuiKey_1=537,
ImGuiKey_2=538,
ImGuiKey_3=539,
ImGuiKey_4=540,
ImGuiKey_5=541,
ImGuiKey_6=542,
ImGuiKey_7=543,
ImGuiKey_8=544,
ImGuiKey_9=545,
ImGuiKey_A=546,
ImGuiKey_B=547,
ImGuiKey_C=548,
ImGuiKey_D=549,
ImGuiKey_E=550,
ImGuiKey_F=551,
ImGuiKey_G=552,
ImGuiKey_H=553,
ImGuiKey_I=554,
ImGuiKey_J=555,
ImGuiKey_K=556,
ImGuiKey_L=557,
ImGuiKey_M=558,
ImGuiKey_N=559,
ImGuiKey_O=560,
ImGuiKey_P=561,
ImGuiKey_Q=562,
ImGuiKey_R=563,
ImGuiKey_S=564,
ImGuiKey_T=565,
ImGuiKey_U=566,
ImGuiKey_V=567,
ImGuiKey_W=568,
ImGuiKey_X=569,
ImGuiKey_Y=570,
ImGuiKey_Z=571,
ImGuiKey_F1=572,
ImGuiKey_F2=573,
ImGuiKey_F3=574,
ImGuiKey_F4=575,
ImGuiKey_F5=576,
ImGuiKey_F6=577,
ImGuiKey_F7=578,
ImGuiKey_F8=579,
ImGuiKey_F9=580,
ImGuiKey_F10=581,
ImGuiKey_F11=582,
ImGuiKey_F12=583,
ImGuiKey_F13=584,
ImGuiKey_F14=585,
ImGuiKey_F15=586,
ImGuiKey_F16=587,
ImGuiKey_F17=588,
ImGuiKey_F18=589,
ImGuiKey_F19=590,
ImGuiKey_F20=591,
ImGuiKey_F21=592,
ImGuiKey_F22=593,
ImGuiKey_F23=594,
ImGuiKey_F24=595,
ImGuiKey_Apostrophe=596,
ImGuiKey_Comma=597,
ImGuiKey_Minus=598,
ImGuiKey_Period=599,
ImGuiKey_Slash=600,
ImGuiKey_Semicolon=601,
ImGuiKey_Equal=602,
ImGuiKey_LeftBracket=603,
ImGuiKey_Backslash=604,
ImGuiKey_RightBracket=605,
ImGuiKey_GraveAccent=606,
ImGuiKey_CapsLock=607,
ImGuiKey_ScrollLock=608,
ImGuiKey_NumLock=609,
ImGuiKey_PrintScreen=610,
ImGuiKey_Pause=611,
ImGuiKey_Keypad0=612,
ImGuiKey_Keypad1=613,
ImGuiKey_Keypad2=614,
ImGuiKey_Keypad3=615,
ImGuiKey_Keypad4=616,
ImGuiKey_Keypad5=617,
ImGuiKey_Keypad6=618,
ImGuiKey_Keypad7=619,
ImGuiKey_Keypad8=620,
ImGuiKey_Keypad9=621,
ImGuiKey_KeypadDecimal=622,
ImGuiKey_KeypadDivide=623,
ImGuiKey_KeypadMultiply=624,
ImGuiKey_KeypadSubtract=625,
ImGuiKey_KeypadAdd=626,
ImGuiKey_KeypadEnter=627,
ImGuiKey_KeypadEqual=628,
ImGuiKey_AppBack=629,
ImGuiKey_AppForward=630,
ImGuiKey_Oem102=631,
ImGuiKey_GamepadStart=632,
ImGuiKey_GamepadBack=633,
ImGuiKey_GamepadFaceLeft=634,
ImGuiKey_GamepadFaceRight=635,
ImGuiKey_GamepadFaceUp=636,
ImGuiKey_GamepadFaceDown=637,
ImGuiKey_GamepadDpadLeft=638,
ImGuiKey_GamepadDpadRight=639,
ImGuiKey_GamepadDpadUp=640,
ImGuiKey_GamepadDpadDown=641,
ImGuiKey_GamepadL1=642,
ImGuiKey_GamepadR1=643,
ImGuiKey_GamepadL2=644,
ImGuiKey_GamepadR2=645,
ImGuiKey_GamepadL3=646,
ImGuiKey_GamepadR3=647,
ImGuiKey_GamepadLStickLeft=648,
ImGuiKey_GamepadLStickRight=649,
ImGuiKey_GamepadLStickUp=650,
ImGuiKey_GamepadLStickDown=651,
ImGuiKey_GamepadRStickLeft=652,
ImGuiKey_GamepadRStickRight=653,
ImGuiKey_GamepadRStickUp=654,
ImGuiKey_GamepadRStickDown=655,
ImGuiKey_MouseLeft=656,
ImGuiKey_MouseRight=657,
ImGuiKey_MouseMiddle=658,
ImGuiKey_MouseX1=659,
ImGuiKey_MouseX2=660,
ImGuiKey_MouseWheelX=661,
ImGuiKey_MouseWheelY=662,
ImGuiKey_ReservedForModCtrl=663,
ImGuiKey_ReservedForModShift=664,
ImGuiKey_ReservedForModAlt=665,
ImGuiKey_ReservedForModSuper=666,
ImGuiKey_NamedKey_END=667,
ImGuiMod_None=0,
ImGuiMod_Ctrl=1 << 12,
ImGuiMod_Shift=1 << 13,
ImGuiMod_Alt=1 << 14,
ImGuiMod_Super=1 << 15,
ImGuiMod_Mask_=0xF000,
ImGuiKey_NamedKey_COUNT=ImGuiKey_NamedKey_END - ImGuiKey_NamedKey_BEGIN,
}ImGuiKey;
typedef enum {
    ImGuiInputFlags_None = 0,
    ImGuiInputFlags_Repeat = 1 << 0,
    ImGuiInputFlags_RouteActive = 1 << 10,
    ImGuiInputFlags_RouteFocused = 1 << 11,
    ImGuiInputFlags_RouteGlobal = 1 << 12,
    ImGuiInputFlags_RouteAlways = 1 << 13,
    ImGuiInputFlags_RouteOverFocused = 1 << 14,
    ImGuiInputFlags_RouteOverActive = 1 << 15,
    ImGuiInputFlags_RouteUnlessBgFocused = 1 << 16,
    ImGuiInputFlags_RouteFromRootWindow = 1 << 17,
    ImGuiInputFlags_Tooltip = 1 << 18,
}ImGuiInputFlags_;
typedef enum {
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1 << 0,
    ImGuiConfigFlags_NavEnableGamepad = 1 << 1,
    ImGuiConfigFlags_NoMouse = 1 << 4,
    ImGuiConfigFlags_NoMouseCursorChange = 1 << 5,
    ImGuiConfigFlags_NoKeyboard = 1 << 6,
    ImGuiConfigFlags_DockingEnable = 1 << 7,
    ImGuiConfigFlags_ViewportsEnable = 1 << 10,
    ImGuiConfigFlags_DpiEnableScaleViewports= 1 << 14,
    ImGuiConfigFlags_DpiEnableScaleFonts = 1 << 15,
    ImGuiConfigFlags_IsSRGB = 1 << 20,
    ImGuiConfigFlags_IsTouchScreen = 1 << 21,
}ImGuiConfigFlags_;
typedef enum {
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1 << 0,
    ImGuiBackendFlags_HasMouseCursors = 1 << 1,
    ImGuiBackendFlags_HasSetMousePos = 1 << 2,
    ImGuiBackendFlags_RendererHasVtxOffset = 1 << 3,
    ImGuiBackendFlags_PlatformHasViewports = 1 << 10,
    ImGuiBackendFlags_HasMouseHoveredViewport=1 << 11,
    ImGuiBackendFlags_RendererHasViewports = 1 << 12,
}ImGuiBackendFlags_;
typedef enum {
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildBg,
    ImGuiCol_PopupBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgActive,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Separator,
    ImGuiCol_SeparatorHovered,
    ImGuiCol_SeparatorActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_TabHovered,
    ImGuiCol_Tab,
    ImGuiCol_TabSelected,
    ImGuiCol_TabSelectedOverline,
    ImGuiCol_TabDimmed,
    ImGuiCol_TabDimmedSelected,
    ImGuiCol_TabDimmedSelectedOverline,
    ImGuiCol_DockingPreview,
    ImGuiCol_DockingEmptyBg,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TableHeaderBg,
    ImGuiCol_TableBorderStrong,
    ImGuiCol_TableBorderLight,
    ImGuiCol_TableRowBg,
    ImGuiCol_TableRowBgAlt,
    ImGuiCol_TextLink,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_DragDropTarget,
    ImGuiCol_NavCursor,
    ImGuiCol_NavWindowingHighlight,
    ImGuiCol_NavWindowingDimBg,
    ImGuiCol_ModalWindowDimBg,
    ImGuiCol_COUNT,
}ImGuiCol_;
typedef enum {
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_DisabledAlpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_WindowTitleAlign,
    ImGuiStyleVar_ChildRounding,
    ImGuiStyleVar_ChildBorderSize,
    ImGuiStyleVar_PopupRounding,
    ImGuiStyleVar_PopupBorderSize,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_FrameBorderSize,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_CellPadding,
    ImGuiStyleVar_ScrollbarSize,
    ImGuiStyleVar_ScrollbarRounding,
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_GrabRounding,
    ImGuiStyleVar_ImageBorderSize,
    ImGuiStyleVar_TabRounding,
    ImGuiStyleVar_TabBorderSize,
    ImGuiStyleVar_TabBarBorderSize,
    ImGuiStyleVar_TabBarOverlineSize,
    ImGuiStyleVar_TableAngledHeadersAngle,
    ImGuiStyleVar_TableAngledHeadersTextAlign,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_SelectableTextAlign,
    ImGuiStyleVar_SeparatorTextBorderSize,
    ImGuiStyleVar_SeparatorTextAlign,
    ImGuiStyleVar_SeparatorTextPadding,
    ImGuiStyleVar_DockingSeparatorSize,
    ImGuiStyleVar_COUNT
}ImGuiStyleVar_;
typedef enum {
    ImGuiButtonFlags_None = 0,
    ImGuiButtonFlags_MouseButtonLeft = 1 << 0,
    ImGuiButtonFlags_MouseButtonRight = 1 << 1,
    ImGuiButtonFlags_MouseButtonMiddle = 1 << 2,
    ImGuiButtonFlags_MouseButtonMask_ = ImGuiButtonFlags_MouseButtonLeft | ImGuiButtonFlags_MouseButtonRight | ImGuiButtonFlags_MouseButtonMiddle,
    ImGuiButtonFlags_EnableNav = 1 << 3,
}ImGuiButtonFlags_;
typedef enum {
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 1 << 1,
    ImGuiColorEditFlags_NoPicker = 1 << 2,
    ImGuiColorEditFlags_NoOptions = 1 << 3,
    ImGuiColorEditFlags_NoSmallPreview = 1 << 4,
    ImGuiColorEditFlags_NoInputs = 1 << 5,
    ImGuiColorEditFlags_NoTooltip = 1 << 6,
    ImGuiColorEditFlags_NoLabel = 1 << 7,
    ImGuiColorEditFlags_NoSidePreview = 1 << 8,
    ImGuiColorEditFlags_NoDragDrop = 1 << 9,
    ImGuiColorEditFlags_NoBorder = 1 << 10,
    ImGuiColorEditFlags_AlphaOpaque = 1 << 11,
    ImGuiColorEditFlags_AlphaNoBg = 1 << 12,
    ImGuiColorEditFlags_AlphaPreviewHalf= 1 << 13,
    ImGuiColorEditFlags_AlphaBar = 1 << 16,
    ImGuiColorEditFlags_HDR = 1 << 19,
    ImGuiColorEditFlags_DisplayRGB = 1 << 20,
    ImGuiColorEditFlags_DisplayHSV = 1 << 21,
    ImGuiColorEditFlags_DisplayHex = 1 << 22,
    ImGuiColorEditFlags_Uint8 = 1 << 23,
    ImGuiColorEditFlags_Float = 1 << 24,
    ImGuiColorEditFlags_PickerHueBar = 1 << 25,
    ImGuiColorEditFlags_PickerHueWheel = 1 << 26,
    ImGuiColorEditFlags_InputRGB = 1 << 27,
    ImGuiColorEditFlags_InputHSV = 1 << 28,
    ImGuiColorEditFlags_DefaultOptions_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_AlphaMask_ = ImGuiColorEditFlags_NoAlpha | ImGuiColorEditFlags_AlphaOpaque | ImGuiColorEditFlags_AlphaNoBg | ImGuiColorEditFlags_AlphaPreviewHalf,
    ImGuiColorEditFlags_DisplayMask_ = ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex,
    ImGuiColorEditFlags_DataTypeMask_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float,
    ImGuiColorEditFlags_PickerMask_ = ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_InputMask_ = ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV,
}ImGuiColorEditFlags_;
typedef enum {
    ImGuiSliderFlags_None = 0,
    ImGuiSliderFlags_Logarithmic = 1 << 5,
    ImGuiSliderFlags_NoRoundToFormat = 1 << 6,
    ImGuiSliderFlags_NoInput = 1 << 7,
    ImGuiSliderFlags_WrapAround = 1 << 8,
    ImGuiSliderFlags_ClampOnInput = 1 << 9,
    ImGuiSliderFlags_ClampZeroRange = 1 << 10,
    ImGuiSliderFlags_NoSpeedTweaks = 1 << 11,
    ImGuiSliderFlags_AlwaysClamp = ImGuiSliderFlags_ClampOnInput | ImGuiSliderFlags_ClampZeroRange,
    ImGuiSliderFlags_InvalidMask_ = 0x7000000F,
}ImGuiSliderFlags_;
typedef enum {
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Right = 1,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_COUNT = 5
}ImGuiMouseButton_;
typedef enum {
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_ResizeAll,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Hand,
    ImGuiMouseCursor_Wait,
    ImGuiMouseCursor_Progress,
    ImGuiMouseCursor_NotAllowed,
    ImGuiMouseCursor_COUNT
}ImGuiMouseCursor_;
typedef enum {
ImGuiMouseSource_Mouse=0,
ImGuiMouseSource_TouchScreen=1,
ImGuiMouseSource_Pen=2,
ImGuiMouseSource_COUNT=3,
}ImGuiMouseSource;
typedef enum {
    ImGuiCond_None = 0,
    ImGuiCond_Always = 1 << 0,
    ImGuiCond_Once = 1 << 1,
    ImGuiCond_FirstUseEver = 1 << 2,
    ImGuiCond_Appearing = 1 << 3,
}ImGuiCond_;
typedef enum {
    ImGuiTableFlags_None = 0,
    ImGuiTableFlags_Resizable = 1 << 0,
    ImGuiTableFlags_Reorderable = 1 << 1,
    ImGuiTableFlags_Hideable = 1 << 2,
    ImGuiTableFlags_Sortable = 1 << 3,
    ImGuiTableFlags_NoSavedSettings = 1 << 4,
    ImGuiTableFlags_ContextMenuInBody = 1 << 5,
    ImGuiTableFlags_RowBg = 1 << 6,
    ImGuiTableFlags_BordersInnerH = 1 << 7,
    ImGuiTableFlags_BordersOuterH = 1 << 8,
    ImGuiTableFlags_BordersInnerV = 1 << 9,
    ImGuiTableFlags_BordersOuterV = 1 << 10,
    ImGuiTableFlags_BordersH = ImGuiTableFlags_BordersInnerH | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_BordersV = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersOuterV,
    ImGuiTableFlags_BordersInner = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersInnerH,
    ImGuiTableFlags_BordersOuter = ImGuiTableFlags_BordersOuterV | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_Borders = ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter,
    ImGuiTableFlags_NoBordersInBody = 1 << 11,
    ImGuiTableFlags_NoBordersInBodyUntilResize = 1 << 12,
    ImGuiTableFlags_SizingFixedFit = 1 << 13,
    ImGuiTableFlags_SizingFixedSame = 2 << 13,
    ImGuiTableFlags_SizingStretchProp = 3 << 13,
    ImGuiTableFlags_SizingStretchSame = 4 << 13,
    ImGuiTableFlags_NoHostExtendX = 1 << 16,
    ImGuiTableFlags_NoHostExtendY = 1 << 17,
    ImGuiTableFlags_NoKeepColumnsVisible = 1 << 18,
    ImGuiTableFlags_PreciseWidths = 1 << 19,
    ImGuiTableFlags_NoClip = 1 << 20,
    ImGuiTableFlags_PadOuterX = 1 << 21,
    ImGuiTableFlags_NoPadOuterX = 1 << 22,
    ImGuiTableFlags_NoPadInnerX = 1 << 23,
    ImGuiTableFlags_ScrollX = 1 << 24,
    ImGuiTableFlags_ScrollY = 1 << 25,
    ImGuiTableFlags_SortMulti = 1 << 26,
    ImGuiTableFlags_SortTristate = 1 << 27,
    ImGuiTableFlags_HighlightHoveredColumn = 1 << 28,
    ImGuiTableFlags_SizingMask_ = ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_SizingFixedSame | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_SizingStretchSame,
}ImGuiTableFlags_;
typedef enum {
    ImGuiTableColumnFlags_None = 0,
    ImGuiTableColumnFlags_Disabled = 1 << 0,
    ImGuiTableColumnFlags_DefaultHide = 1 << 1,
    ImGuiTableColumnFlags_DefaultSort = 1 << 2,
    ImGuiTableColumnFlags_WidthStretch = 1 << 3,
    ImGuiTableColumnFlags_WidthFixed = 1 << 4,
    ImGuiTableColumnFlags_NoResize = 1 << 5,
    ImGuiTableColumnFlags_NoReorder = 1 << 6,
    ImGuiTableColumnFlags_NoHide = 1 << 7,
    ImGuiTableColumnFlags_NoClip = 1 << 8,
    ImGuiTableColumnFlags_NoSort = 1 << 9,
    ImGuiTableColumnFlags_NoSortAscending = 1 << 10,
    ImGuiTableColumnFlags_NoSortDescending = 1 << 11,
    ImGuiTableColumnFlags_NoHeaderLabel = 1 << 12,
    ImGuiTableColumnFlags_NoHeaderWidth = 1 << 13,
    ImGuiTableColumnFlags_PreferSortAscending = 1 << 14,
    ImGuiTableColumnFlags_PreferSortDescending = 1 << 15,
    ImGuiTableColumnFlags_IndentEnable = 1 << 16,
    ImGuiTableColumnFlags_IndentDisable = 1 << 17,
    ImGuiTableColumnFlags_AngledHeader = 1 << 18,
    ImGuiTableColumnFlags_IsEnabled = 1 << 24,
    ImGuiTableColumnFlags_IsVisible = 1 << 25,
    ImGuiTableColumnFlags_IsSorted = 1 << 26,
    ImGuiTableColumnFlags_IsHovered = 1 << 27,
    ImGuiTableColumnFlags_WidthMask_ = ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed,
    ImGuiTableColumnFlags_IndentMask_ = ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable,
    ImGuiTableColumnFlags_StatusMask_ = ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered,
    ImGuiTableColumnFlags_NoDirectResize_ = 1 << 30,
}ImGuiTableColumnFlags_;
typedef enum {
    ImGuiTableRowFlags_None = 0,
    ImGuiTableRowFlags_Headers = 1 << 0,
}ImGuiTableRowFlags_;
typedef enum {
    ImGuiTableBgTarget_None = 0,
    ImGuiTableBgTarget_RowBg0 = 1,
    ImGuiTableBgTarget_RowBg1 = 2,
    ImGuiTableBgTarget_CellBg = 3,
}ImGuiTableBgTarget_;
typedef enum {
    ImGuiMultiSelectFlags_None = 0,
    ImGuiMultiSelectFlags_SingleSelect = 1 << 0,
    ImGuiMultiSelectFlags_NoSelectAll = 1 << 1,
    ImGuiMultiSelectFlags_NoRangeSelect = 1 << 2,
    ImGuiMultiSelectFlags_NoAutoSelect = 1 << 3,
    ImGuiMultiSelectFlags_NoAutoClear = 1 << 4,
    ImGuiMultiSelectFlags_NoAutoClearOnReselect = 1 << 5,
    ImGuiMultiSelectFlags_BoxSelect1d = 1 << 6,
    ImGuiMultiSelectFlags_BoxSelect2d = 1 << 7,
    ImGuiMultiSelectFlags_BoxSelectNoScroll = 1 << 8,
    ImGuiMultiSelectFlags_ClearOnEscape = 1 << 9,
    ImGuiMultiSelectFlags_ClearOnClickVoid = 1 << 10,
    ImGuiMultiSelectFlags_ScopeWindow = 1 << 11,
    ImGuiMultiSelectFlags_ScopeRect = 1 << 12,
    ImGuiMultiSelectFlags_SelectOnClick = 1 << 13,
    ImGuiMultiSelectFlags_SelectOnClickRelease = 1 << 14,
    ImGuiMultiSelectFlags_NavWrapX = 1 << 16,
}ImGuiMultiSelectFlags_;
typedef enum {
    ImGuiSelectionRequestType_None = 0,
    ImGuiSelectionRequestType_SetAll,
    ImGuiSelectionRequestType_SetRange,
}ImGuiSelectionRequestType;
typedef enum {
    ImDrawFlags_None = 0,
    ImDrawFlags_Closed = 1 << 0,
    ImDrawFlags_RoundCornersTopLeft = 1 << 4,
    ImDrawFlags_RoundCornersTopRight = 1 << 5,
    ImDrawFlags_RoundCornersBottomLeft = 1 << 6,
    ImDrawFlags_RoundCornersBottomRight = 1 << 7,
    ImDrawFlags_RoundCornersNone = 1 << 8,
    ImDrawFlags_RoundCornersTop = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersBottom = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersLeft = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersTopLeft,
    ImDrawFlags_RoundCornersRight = ImDrawFlags_RoundCornersBottomRight | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersAll = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight | ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersDefault_ = ImDrawFlags_RoundCornersAll,
    ImDrawFlags_RoundCornersMask_ = ImDrawFlags_RoundCornersAll | ImDrawFlags_RoundCornersNone,
}ImDrawFlags_;
typedef enum {
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1 << 0,
    ImDrawListFlags_AntiAliasedLinesUseTex = 1 << 1,
    ImDrawListFlags_AntiAliasedFill = 1 << 2,
    ImDrawListFlags_AllowVtxOffset = 1 << 3,
}ImDrawListFlags_;
typedef enum {
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1 << 0,
    ImFontAtlasFlags_NoMouseCursors = 1 << 1,
    ImFontAtlasFlags_NoBakedLines = 1 << 2,
}ImFontAtlasFlags_;
typedef enum {
    ImGuiViewportFlags_None = 0,
    ImGuiViewportFlags_IsPlatformWindow = 1 << 0,
    ImGuiViewportFlags_IsPlatformMonitor = 1 << 1,
    ImGuiViewportFlags_OwnedByApp = 1 << 2,
    ImGuiViewportFlags_NoDecoration = 1 << 3,
    ImGuiViewportFlags_NoTaskBarIcon = 1 << 4,
    ImGuiViewportFlags_NoFocusOnAppearing = 1 << 5,
    ImGuiViewportFlags_NoFocusOnClick = 1 << 6,
    ImGuiViewportFlags_NoInputs = 1 << 7,
    ImGuiViewportFlags_NoRendererClear = 1 << 8,
    ImGuiViewportFlags_NoAutoMerge = 1 << 9,
    ImGuiViewportFlags_TopMost = 1 << 10,
    ImGuiViewportFlags_CanHostOtherWindows = 1 << 11,
    ImGuiViewportFlags_IsMinimized = 1 << 12,
    ImGuiViewportFlags_IsFocused = 1 << 13,
}ImGuiViewportFlags_;
typedef enum {
    ImGuiDataType_Pointer = ImGuiDataType_COUNT,
    ImGuiDataType_ID,
}ImGuiDataTypePrivate_;
typedef enum {
    ImGuiItemFlags_Disabled = 1 << 10,
    ImGuiItemFlags_ReadOnly = 1 << 11,
    ImGuiItemFlags_MixedValue = 1 << 12,
    ImGuiItemFlags_NoWindowHoverableCheck = 1 << 13,
    ImGuiItemFlags_AllowOverlap = 1 << 14,
    ImGuiItemFlags_NoNavDisableMouseHover = 1 << 15,
    ImGuiItemFlags_NoMarkEdited = 1 << 16,
    ImGuiItemFlags_Inputable = 1 << 20,
    ImGuiItemFlags_HasSelectionUserData = 1 << 21,
    ImGuiItemFlags_IsMultiSelect = 1 << 22,
    ImGuiItemFlags_Default_ = ImGuiItemFlags_AutoClosePopups,
}ImGuiItemFlagsPrivate_;
typedef enum {
    ImGuiItemStatusFlags_None = 0,
    ImGuiItemStatusFlags_HoveredRect = 1 << 0,
    ImGuiItemStatusFlags_HasDisplayRect = 1 << 1,
    ImGuiItemStatusFlags_Edited = 1 << 2,
    ImGuiItemStatusFlags_ToggledSelection = 1 << 3,
    ImGuiItemStatusFlags_ToggledOpen = 1 << 4,
    ImGuiItemStatusFlags_HasDeactivated = 1 << 5,
    ImGuiItemStatusFlags_Deactivated = 1 << 6,
    ImGuiItemStatusFlags_HoveredWindow = 1 << 7,
    ImGuiItemStatusFlags_Visible = 1 << 8,
    ImGuiItemStatusFlags_HasClipRect = 1 << 9,
    ImGuiItemStatusFlags_HasShortcut = 1 << 10,
}ImGuiItemStatusFlags_;
typedef enum {
    ImGuiHoveredFlags_DelayMask_ = ImGuiHoveredFlags_DelayNone | ImGuiHoveredFlags_DelayShort | ImGuiHoveredFlags_DelayNormal | ImGuiHoveredFlags_NoSharedDelay,
    ImGuiHoveredFlags_AllowedMaskForIsWindowHovered = ImGuiHoveredFlags_ChildWindows | ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_AnyWindow | ImGuiHoveredFlags_NoPopupHierarchy | ImGuiHoveredFlags_DockHierarchy | ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_ForTooltip | ImGuiHoveredFlags_Stationary,
    ImGuiHoveredFlags_AllowedMaskForIsItemHovered = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped | ImGuiHoveredFlags_AllowWhenDisabled | ImGuiHoveredFlags_NoNavOverride | ImGuiHoveredFlags_ForTooltip | ImGuiHoveredFlags_Stationary | ImGuiHoveredFlags_DelayMask_,
}ImGuiHoveredFlagsPrivate_;
typedef enum {
    ImGuiInputTextFlags_Multiline = 1 << 26,
    ImGuiInputTextFlags_MergedItem = 1 << 27,
    ImGuiInputTextFlags_LocalizeDecimalPoint= 1 << 28,
}ImGuiInputTextFlagsPrivate_;
typedef enum {
    ImGuiButtonFlags_PressedOnClick = 1 << 4,
    ImGuiButtonFlags_PressedOnClickRelease = 1 << 5,
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 1 << 6,
    ImGuiButtonFlags_PressedOnRelease = 1 << 7,
    ImGuiButtonFlags_PressedOnDoubleClick = 1 << 8,
    ImGuiButtonFlags_PressedOnDragDropHold = 1 << 9,
    ImGuiButtonFlags_FlattenChildren = 1 << 11,
    ImGuiButtonFlags_AllowOverlap = 1 << 12,
    ImGuiButtonFlags_AlignTextBaseLine = 1 << 15,
    ImGuiButtonFlags_NoKeyModsAllowed = 1 << 16,
    ImGuiButtonFlags_NoHoldingActiveId = 1 << 17,
    ImGuiButtonFlags_NoNavFocus = 1 << 18,
    ImGuiButtonFlags_NoHoveredOnFocus = 1 << 19,
    ImGuiButtonFlags_NoSetKeyOwner = 1 << 20,
    ImGuiButtonFlags_NoTestKeyOwner = 1 << 21,
    ImGuiButtonFlags_PressedOnMask_ = ImGuiButtonFlags_PressedOnClick | ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnClickReleaseAnywhere | ImGuiButtonFlags_PressedOnRelease | ImGuiButtonFlags_PressedOnDoubleClick | ImGuiButtonFlags_PressedOnDragDropHold,
    ImGuiButtonFlags_PressedOnDefault_ = ImGuiButtonFlags_PressedOnClickRelease,
}ImGuiButtonFlagsPrivate_;
typedef enum {
    ImGuiComboFlags_CustomPreview = 1 << 20,
}ImGuiComboFlagsPrivate_;
typedef enum {
    ImGuiSliderFlags_Vertical = 1 << 20,
    ImGuiSliderFlags_ReadOnly = 1 << 21,
}ImGuiSliderFlagsPrivate_;
typedef enum {
    ImGuiSelectableFlags_NoHoldingActiveID = 1 << 20,
    ImGuiSelectableFlags_SelectOnNav = 1 << 21,
    ImGuiSelectableFlags_SelectOnClick = 1 << 22,
    ImGuiSelectableFlags_SelectOnRelease = 1 << 23,
    ImGuiSelectableFlags_SpanAvailWidth = 1 << 24,
    ImGuiSelectableFlags_SetNavIdOnHover = 1 << 25,
    ImGuiSelectableFlags_NoPadWithHalfSpacing = 1 << 26,
    ImGuiSelectableFlags_NoSetKeyOwner = 1 << 27,
}ImGuiSelectableFlagsPrivate_;
typedef enum {
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1 << 28,
    ImGuiTreeNodeFlags_UpsideDownArrow = 1 << 29,
    ImGuiTreeNodeFlags_OpenOnMask_ = ImGuiTreeNodeFlags_OpenOnDoubleClick | ImGuiTreeNodeFlags_OpenOnArrow,
}ImGuiTreeNodeFlagsPrivate_;
typedef enum {
    ImGuiSeparatorFlags_None = 0,
    ImGuiSeparatorFlags_Horizontal = 1 << 0,
    ImGuiSeparatorFlags_Vertical = 1 << 1,
    ImGuiSeparatorFlags_SpanAllColumns = 1 << 2,
}ImGuiSeparatorFlags_;
typedef enum {
    ImGuiFocusRequestFlags_None = 0,
    ImGuiFocusRequestFlags_RestoreFocusedChild = 1 << 0,
    ImGuiFocusRequestFlags_UnlessBelowModal = 1 << 1,
}ImGuiFocusRequestFlags_;
typedef enum {
    ImGuiTextFlags_None = 0,
    ImGuiTextFlags_NoWidthForLargeClippedText = 1 << 0,
}ImGuiTextFlags_;
typedef enum {
    ImGuiTooltipFlags_None = 0,
    ImGuiTooltipFlags_OverridePrevious = 1 << 1,
}ImGuiTooltipFlags_;
typedef enum {
    ImGuiLayoutType_Horizontal = 0,
    ImGuiLayoutType_Vertical = 1
}ImGuiLayoutType_;
typedef enum {
    ImGuiLogFlags_None = 0,
    ImGuiLogFlags_OutputTTY = 1 << 0,
    ImGuiLogFlags_OutputFile = 1 << 1,
    ImGuiLogFlags_OutputBuffer = 1 << 2,
    ImGuiLogFlags_OutputClipboard = 1 << 3,
    ImGuiLogFlags_OutputMask_ = ImGuiLogFlags_OutputTTY | ImGuiLogFlags_OutputFile | ImGuiLogFlags_OutputBuffer | ImGuiLogFlags_OutputClipboard,
}ImGuiLogFlags_;
typedef enum {
    ImGuiAxis_None = -1,
    ImGuiAxis_X = 0,
    ImGuiAxis_Y = 1
}ImGuiAxis;
typedef enum {
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram,
}ImGuiPlotType;
typedef enum {
    ImGuiWindowRefreshFlags_None = 0,
    ImGuiWindowRefreshFlags_TryToAvoidRefresh = 1 << 0,
    ImGuiWindowRefreshFlags_RefreshOnHover = 1 << 1,
    ImGuiWindowRefreshFlags_RefreshOnFocus = 1 << 2,
}ImGuiWindowRefreshFlags_;
typedef enum {
    ImGuiNextWindowDataFlags_None = 0,
    ImGuiNextWindowDataFlags_HasPos = 1 << 0,
    ImGuiNextWindowDataFlags_HasSize = 1 << 1,
    ImGuiNextWindowDataFlags_HasContentSize = 1 << 2,
    ImGuiNextWindowDataFlags_HasCollapsed = 1 << 3,
    ImGuiNextWindowDataFlags_HasSizeConstraint = 1 << 4,
    ImGuiNextWindowDataFlags_HasFocus = 1 << 5,
    ImGuiNextWindowDataFlags_HasBgAlpha = 1 << 6,
    ImGuiNextWindowDataFlags_HasScroll = 1 << 7,
    ImGuiNextWindowDataFlags_HasWindowFlags = 1 << 8,
    ImGuiNextWindowDataFlags_HasChildFlags = 1 << 9,
    ImGuiNextWindowDataFlags_HasRefreshPolicy = 1 << 10,
    ImGuiNextWindowDataFlags_HasViewport = 1 << 11,
    ImGuiNextWindowDataFlags_HasDock = 1 << 12,
    ImGuiNextWindowDataFlags_HasWindowClass = 1 << 13,
}ImGuiNextWindowDataFlags_;
typedef enum {
    ImGuiNextItemDataFlags_None = 0,
    ImGuiNextItemDataFlags_HasWidth = 1 << 0,
    ImGuiNextItemDataFlags_HasOpen = 1 << 1,
    ImGuiNextItemDataFlags_HasShortcut = 1 << 2,
    ImGuiNextItemDataFlags_HasRefVal = 1 << 3,
    ImGuiNextItemDataFlags_HasStorageID = 1 << 4,
}ImGuiNextItemDataFlags_;
typedef enum {
    ImGuiPopupPositionPolicy_Default,
    ImGuiPopupPositionPolicy_ComboBox,
    ImGuiPopupPositionPolicy_Tooltip,
}ImGuiPopupPositionPolicy;
typedef enum {
    ImGuiInputEventType_None = 0,
    ImGuiInputEventType_MousePos,
    ImGuiInputEventType_MouseWheel,
    ImGuiInputEventType_MouseButton,
    ImGuiInputEventType_MouseViewport,
    ImGuiInputEventType_Key,
    ImGuiInputEventType_Text,
    ImGuiInputEventType_Focus,
    ImGuiInputEventType_COUNT
}ImGuiInputEventType;
typedef enum {
    ImGuiInputSource_None = 0,
    ImGuiInputSource_Mouse,
    ImGuiInputSource_Keyboard,
    ImGuiInputSource_Gamepad,
    ImGuiInputSource_COUNT
}ImGuiInputSource;
typedef enum {
    ImGuiInputFlags_RepeatRateDefault = 1 << 1,
    ImGuiInputFlags_RepeatRateNavMove = 1 << 2,
    ImGuiInputFlags_RepeatRateNavTweak = 1 << 3,
    ImGuiInputFlags_RepeatUntilRelease = 1 << 4,
    ImGuiInputFlags_RepeatUntilKeyModsChange = 1 << 5,
    ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone = 1 << 6,
    ImGuiInputFlags_RepeatUntilOtherKeyPress = 1 << 7,
    ImGuiInputFlags_LockThisFrame = 1 << 20,
    ImGuiInputFlags_LockUntilRelease = 1 << 21,
    ImGuiInputFlags_CondHovered = 1 << 22,
    ImGuiInputFlags_CondActive = 1 << 23,
    ImGuiInputFlags_CondDefault_ = ImGuiInputFlags_CondHovered | ImGuiInputFlags_CondActive,
    ImGuiInputFlags_RepeatRateMask_ = ImGuiInputFlags_RepeatRateDefault | ImGuiInputFlags_RepeatRateNavMove | ImGuiInputFlags_RepeatRateNavTweak,
    ImGuiInputFlags_RepeatUntilMask_ = ImGuiInputFlags_RepeatUntilRelease | ImGuiInputFlags_RepeatUntilKeyModsChange | ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone | ImGuiInputFlags_RepeatUntilOtherKeyPress,
    ImGuiInputFlags_RepeatMask_ = ImGuiInputFlags_Repeat | ImGuiInputFlags_RepeatRateMask_ | ImGuiInputFlags_RepeatUntilMask_,
    ImGuiInputFlags_CondMask_ = ImGuiInputFlags_CondHovered | ImGuiInputFlags_CondActive,
    ImGuiInputFlags_RouteTypeMask_ = ImGuiInputFlags_RouteActive | ImGuiInputFlags_RouteFocused | ImGuiInputFlags_RouteGlobal | ImGuiInputFlags_RouteAlways,
    ImGuiInputFlags_RouteOptionsMask_ = ImGuiInputFlags_RouteOverFocused | ImGuiInputFlags_RouteOverActive | ImGuiInputFlags_RouteUnlessBgFocused | ImGuiInputFlags_RouteFromRootWindow,
    ImGuiInputFlags_SupportedByIsKeyPressed = ImGuiInputFlags_RepeatMask_,
    ImGuiInputFlags_SupportedByIsMouseClicked = ImGuiInputFlags_Repeat,
    ImGuiInputFlags_SupportedByShortcut = ImGuiInputFlags_RepeatMask_ | ImGuiInputFlags_RouteTypeMask_ | ImGuiInputFlags_RouteOptionsMask_,
    ImGuiInputFlags_SupportedBySetNextItemShortcut = ImGuiInputFlags_RepeatMask_ | ImGuiInputFlags_RouteTypeMask_ | ImGuiInputFlags_RouteOptionsMask_ | ImGuiInputFlags_Tooltip,
    ImGuiInputFlags_SupportedBySetKeyOwner = ImGuiInputFlags_LockThisFrame | ImGuiInputFlags_LockUntilRelease,
    ImGuiInputFlags_SupportedBySetItemKeyOwner = ImGuiInputFlags_SupportedBySetKeyOwner | ImGuiInputFlags_CondMask_,
}ImGuiInputFlagsPrivate_;
typedef enum {
    ImGuiActivateFlags_None = 0,
    ImGuiActivateFlags_PreferInput = 1 << 0,
    ImGuiActivateFlags_PreferTweak = 1 << 1,
    ImGuiActivateFlags_TryToPreserveState = 1 << 2,
    ImGuiActivateFlags_FromTabbing = 1 << 3,
    ImGuiActivateFlags_FromShortcut = 1 << 4,
}ImGuiActivateFlags_;
typedef enum {
    ImGuiScrollFlags_None = 0,
    ImGuiScrollFlags_KeepVisibleEdgeX = 1 << 0,
    ImGuiScrollFlags_KeepVisibleEdgeY = 1 << 1,
    ImGuiScrollFlags_KeepVisibleCenterX = 1 << 2,
    ImGuiScrollFlags_KeepVisibleCenterY = 1 << 3,
    ImGuiScrollFlags_AlwaysCenterX = 1 << 4,
    ImGuiScrollFlags_AlwaysCenterY = 1 << 5,
    ImGuiScrollFlags_NoScrollParent = 1 << 6,
    ImGuiScrollFlags_MaskX_ = ImGuiScrollFlags_KeepVisibleEdgeX | ImGuiScrollFlags_KeepVisibleCenterX | ImGuiScrollFlags_AlwaysCenterX,
    ImGuiScrollFlags_MaskY_ = ImGuiScrollFlags_KeepVisibleEdgeY | ImGuiScrollFlags_KeepVisibleCenterY | ImGuiScrollFlags_AlwaysCenterY,
}ImGuiScrollFlags_;
typedef enum {
    ImGuiNavRenderCursorFlags_None = 0,
    ImGuiNavRenderCursorFlags_Compact = 1 << 1,
    ImGuiNavRenderCursorFlags_AlwaysDraw = 1 << 2,
    ImGuiNavRenderCursorFlags_NoRounding = 1 << 3,
}ImGuiNavRenderCursorFlags_;
typedef enum {
    ImGuiNavMoveFlags_None = 0,
    ImGuiNavMoveFlags_LoopX = 1 << 0,
    ImGuiNavMoveFlags_LoopY = 1 << 1,
    ImGuiNavMoveFlags_WrapX = 1 << 2,
    ImGuiNavMoveFlags_WrapY = 1 << 3,
    ImGuiNavMoveFlags_WrapMask_ = ImGuiNavMoveFlags_LoopX | ImGuiNavMoveFlags_LoopY | ImGuiNavMoveFlags_WrapX | ImGuiNavMoveFlags_WrapY,
    ImGuiNavMoveFlags_AllowCurrentNavId = 1 << 4,
    ImGuiNavMoveFlags_AlsoScoreVisibleSet = 1 << 5,
    ImGuiNavMoveFlags_ScrollToEdgeY = 1 << 6,
    ImGuiNavMoveFlags_Forwarded = 1 << 7,
    ImGuiNavMoveFlags_DebugNoResult = 1 << 8,
    ImGuiNavMoveFlags_FocusApi = 1 << 9,
    ImGuiNavMoveFlags_IsTabbing = 1 << 10,
    ImGuiNavMoveFlags_IsPageMove = 1 << 11,
    ImGuiNavMoveFlags_Activate = 1 << 12,
    ImGuiNavMoveFlags_NoSelect = 1 << 13,
    ImGuiNavMoveFlags_NoSetNavCursorVisible = 1 << 14,
    ImGuiNavMoveFlags_NoClearActiveId = 1 << 15,
}ImGuiNavMoveFlags_;
typedef enum {
    ImGuiNavLayer_Main = 0,
    ImGuiNavLayer_Menu = 1,
    ImGuiNavLayer_COUNT
}ImGuiNavLayer;
typedef enum {
    ImGuiTypingSelectFlags_None = 0,
    ImGuiTypingSelectFlags_AllowBackspace = 1 << 0,
    ImGuiTypingSelectFlags_AllowSingleCharMode = 1 << 1,
}ImGuiTypingSelectFlags_;
typedef enum {
    ImGuiOldColumnFlags_None = 0,
    ImGuiOldColumnFlags_NoBorder = 1 << 0,
    ImGuiOldColumnFlags_NoResize = 1 << 1,
    ImGuiOldColumnFlags_NoPreserveWidths = 1 << 2,
    ImGuiOldColumnFlags_NoForceWithinWindow = 1 << 3,
    ImGuiOldColumnFlags_GrowParentContentsSize = 1 << 4,
}ImGuiOldColumnFlags_;
typedef enum {
    ImGuiDockNodeFlags_DockSpace = 1 << 10,
    ImGuiDockNodeFlags_CentralNode = 1 << 11,
    ImGuiDockNodeFlags_NoTabBar = 1 << 12,
    ImGuiDockNodeFlags_HiddenTabBar = 1 << 13,
    ImGuiDockNodeFlags_NoWindowMenuButton = 1 << 14,
    ImGuiDockNodeFlags_NoCloseButton = 1 << 15,
    ImGuiDockNodeFlags_NoResizeX = 1 << 16,
    ImGuiDockNodeFlags_NoResizeY = 1 << 17,
    ImGuiDockNodeFlags_DockedWindowsInFocusRoute= 1 << 18,
    ImGuiDockNodeFlags_NoDockingSplitOther = 1 << 19,
    ImGuiDockNodeFlags_NoDockingOverMe = 1 << 20,
    ImGuiDockNodeFlags_NoDockingOverOther = 1 << 21,
    ImGuiDockNodeFlags_NoDockingOverEmpty = 1 << 22,
    ImGuiDockNodeFlags_NoDocking = ImGuiDockNodeFlags_NoDockingOverMe | ImGuiDockNodeFlags_NoDockingOverOther | ImGuiDockNodeFlags_NoDockingOverEmpty | ImGuiDockNodeFlags_NoDockingSplit | ImGuiDockNodeFlags_NoDockingSplitOther,
    ImGuiDockNodeFlags_SharedFlagsInheritMask_ = ~0,
    ImGuiDockNodeFlags_NoResizeFlagsMask_ = (int)ImGuiDockNodeFlags_NoResize | ImGuiDockNodeFlags_NoResizeX | ImGuiDockNodeFlags_NoResizeY,
    ImGuiDockNodeFlags_LocalFlagsTransferMask_ = (int)ImGuiDockNodeFlags_NoDockingSplit | ImGuiDockNodeFlags_NoResizeFlagsMask_ | (int)ImGuiDockNodeFlags_AutoHideTabBar | ImGuiDockNodeFlags_CentralNode | ImGuiDockNodeFlags_NoTabBar | ImGuiDockNodeFlags_HiddenTabBar | ImGuiDockNodeFlags_NoWindowMenuButton | ImGuiDockNodeFlags_NoCloseButton,
    ImGuiDockNodeFlags_SavedFlagsMask_ = ImGuiDockNodeFlags_NoResizeFlagsMask_ | ImGuiDockNodeFlags_DockSpace | ImGuiDockNodeFlags_CentralNode | ImGuiDockNodeFlags_NoTabBar | ImGuiDockNodeFlags_HiddenTabBar | ImGuiDockNodeFlags_NoWindowMenuButton | ImGuiDockNodeFlags_NoCloseButton,
}ImGuiDockNodeFlagsPrivate_;
typedef enum {
    ImGuiDataAuthority_Auto,
    ImGuiDataAuthority_DockNode,
    ImGuiDataAuthority_Window,
}ImGuiDataAuthority_;
typedef enum {
    ImGuiDockNodeState_Unknown,
    ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow,
    ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing,
    ImGuiDockNodeState_HostWindowVisible,
}ImGuiDockNodeState;
typedef enum {
    ImGuiWindowDockStyleCol_Text,
    ImGuiWindowDockStyleCol_TabHovered,
    ImGuiWindowDockStyleCol_TabFocused,
    ImGuiWindowDockStyleCol_TabSelected,
    ImGuiWindowDockStyleCol_TabSelectedOverline,
    ImGuiWindowDockStyleCol_TabDimmed,
    ImGuiWindowDockStyleCol_TabDimmedSelected,
    ImGuiWindowDockStyleCol_TabDimmedSelectedOverline,
    ImGuiWindowDockStyleCol_COUNT
}ImGuiWindowDockStyleCol;
typedef enum {
ImGuiLocKey_VersionStr=0,
ImGuiLocKey_TableSizeOne=1,
ImGuiLocKey_TableSizeAllFit=2,
ImGuiLocKey_TableSizeAllDefault=3,
ImGuiLocKey_TableResetOrder=4,
ImGuiLocKey_WindowingMainMenuBar=5,
ImGuiLocKey_WindowingPopup=6,
ImGuiLocKey_WindowingUntitled=7,
ImGuiLocKey_OpenLink_s=8,
ImGuiLocKey_CopyLink=9,
ImGuiLocKey_DockingHideTabBar=10,
ImGuiLocKey_DockingHoldShiftToDock=11,
ImGuiLocKey_DockingDragToUndockOrMoveNode=12,
ImGuiLocKey_COUNT=13,
}ImGuiLocKey;
typedef enum {
    ImGuiDebugLogFlags_None = 0,
    ImGuiDebugLogFlags_EventError = 1 << 0,
    ImGuiDebugLogFlags_EventActiveId = 1 << 1,
    ImGuiDebugLogFlags_EventFocus = 1 << 2,
    ImGuiDebugLogFlags_EventPopup = 1 << 3,
    ImGuiDebugLogFlags_EventNav = 1 << 4,
    ImGuiDebugLogFlags_EventClipper = 1 << 5,
    ImGuiDebugLogFlags_EventSelection = 1 << 6,
    ImGuiDebugLogFlags_EventIO = 1 << 7,
    ImGuiDebugLogFlags_EventFont = 1 << 8,
    ImGuiDebugLogFlags_EventInputRouting = 1 << 9,
    ImGuiDebugLogFlags_EventDocking = 1 << 10,
    ImGuiDebugLogFlags_EventViewport = 1 << 11,
    ImGuiDebugLogFlags_EventMask_ = ImGuiDebugLogFlags_EventError | ImGuiDebugLogFlags_EventActiveId | ImGuiDebugLogFlags_EventFocus | ImGuiDebugLogFlags_EventPopup | ImGuiDebugLogFlags_EventNav | ImGuiDebugLogFlags_EventClipper | ImGuiDebugLogFlags_EventSelection | ImGuiDebugLogFlags_EventIO | ImGuiDebugLogFlags_EventFont | ImGuiDebugLogFlags_EventInputRouting | ImGuiDebugLogFlags_EventDocking | ImGuiDebugLogFlags_EventViewport,
    ImGuiDebugLogFlags_OutputToTTY = 1 << 20,
    ImGuiDebugLogFlags_OutputToTestEngine = 1 << 21,
}ImGuiDebugLogFlags_;
typedef enum {
	ImGuiContextHookType_NewFramePre,
	ImGuiContextHookType_NewFramePost,
	ImGuiContextHookType_EndFramePre,
	ImGuiContextHookType_EndFramePost,
	ImGuiContextHookType_RenderPre,
	ImGuiContextHookType_RenderPost,
	ImGuiContextHookType_Shutdown,
	ImGuiContextHookType_PendingRemoval_
}ImGuiContextHookType;
typedef enum {
    ImGuiTabBarFlags_DockNode = 1 << 20,
    ImGuiTabBarFlags_IsFocused = 1 << 21,
    ImGuiTabBarFlags_SaveSettings = 1 << 22,
}ImGuiTabBarFlagsPrivate_;
typedef enum {
    ImGuiTabItemFlags_SectionMask_ = ImGuiTabItemFlags_Leading | ImGuiTabItemFlags_Trailing,
    ImGuiTabItemFlags_NoCloseButton = 1 << 20,
    ImGuiTabItemFlags_Button = 1 << 21,
    ImGuiTabItemFlags_Invisible = 1 << 22,
    ImGuiTabItemFlags_Unsorted = 1 << 23,
}ImGuiTabItemFlagsPrivate_;


typedef struct ImDrawChannel ImDrawChannel;
typedef struct ImDrawCmd ImDrawCmd;
typedef struct ImDrawData ImDrawData;
typedef struct ImDrawList ImDrawList;
typedef struct ImDrawListSharedData ImDrawListSharedData;
typedef struct ImDrawListSplitter ImDrawListSplitter;
typedef struct ImDrawVert ImDrawVert;
typedef struct ImFont ImFont;
typedef struct ImFontAtlas ImFontAtlas;
typedef struct ImFontBuilderIO ImFontBuilderIO;
typedef struct ImFontConfig ImFontConfig;
typedef struct ImFontGlyph ImFontGlyph;
typedef struct ImFontGlyphRangesBuilder ImFontGlyphRangesBuilder;
typedef struct ImColor ImColor;
typedef struct ImGuiContext ImGuiContext;
typedef struct ImGuiIO ImGuiIO;
typedef struct ImGuiInputTextCallbackData ImGuiInputTextCallbackData;
typedef struct ImGuiKeyData ImGuiKeyData;
typedef struct ImGuiListClipper ImGuiListClipper;
typedef struct ImGuiMultiSelectIO ImGuiMultiSelectIO;
typedef struct ImGuiOnceUponAFrame ImGuiOnceUponAFrame;
typedef struct ImGuiPayload ImGuiPayload;
typedef struct ImGuiPlatformIO ImGuiPlatformIO;
typedef struct ImGuiPlatformImeData ImGuiPlatformImeData;
typedef struct ImGuiPlatformMonitor ImGuiPlatformMonitor;
typedef struct ImGuiSelectionBasicStorage ImGuiSelectionBasicStorage;
typedef struct ImGuiSelectionExternalStorage ImGuiSelectionExternalStorage;
typedef struct ImGuiSelectionRequest ImGuiSelectionRequest;
typedef struct ImGuiSizeCallbackData ImGuiSizeCallbackData;
typedef struct ImGuiStorage ImGuiStorage;
typedef struct ImGuiStoragePair ImGuiStoragePair;
typedef struct ImGuiStyle ImGuiStyle;
typedef struct ImGuiTableSortSpecs ImGuiTableSortSpecs;
typedef struct ImGuiTableColumnSortSpecs ImGuiTableColumnSortSpecs;
typedef struct ImGuiTextBuffer ImGuiTextBuffer;
typedef struct ImGuiTextFilter ImGuiTextFilter;
typedef struct ImGuiViewport ImGuiViewport;
typedef struct ImGuiWindowClass ImGuiWindowClass;
typedef struct ImBitVector ImBitVector;
typedef struct ImRect ImRect;
typedef struct ImGuiTextIndex ImGuiTextIndex;
typedef struct ImDrawDataBuilder ImDrawDataBuilder;
typedef struct ImGuiBoxSelectState ImGuiBoxSelectState;
typedef struct ImGuiColorMod ImGuiColorMod;
typedef struct ImGuiContextHook ImGuiContextHook;
typedef struct ImGuiDataTypeInfo ImGuiDataTypeInfo;
typedef struct ImGuiDeactivatedItemData ImGuiDeactivatedItemData;
typedef struct ImGuiDockContext ImGuiDockContext;
typedef struct ImGuiDockRequest ImGuiDockRequest;
typedef struct ImGuiDockNode ImGuiDockNode;
typedef struct ImGuiDockNodeSettings ImGuiDockNodeSettings;
typedef struct ImGuiErrorRecoveryState ImGuiErrorRecoveryState;
typedef struct ImGuiGroupData ImGuiGroupData;
typedef struct ImGuiInputTextState ImGuiInputTextState;
typedef struct ImGuiInputTextDeactivateData ImGuiInputTextDeactivateData;
typedef struct ImGuiLastItemData ImGuiLastItemData;
typedef struct ImGuiLocEntry ImGuiLocEntry;
typedef struct ImGuiMenuColumns ImGuiMenuColumns;
typedef struct ImGuiMultiSelectState ImGuiMultiSelectState;
typedef struct ImGuiMultiSelectTempData ImGuiMultiSelectTempData;
typedef struct ImGuiNavItemData ImGuiNavItemData;
typedef struct ImGuiMetricsConfig ImGuiMetricsConfig;
typedef struct ImGuiNextWindowData ImGuiNextWindowData;
typedef struct ImGuiNextItemData ImGuiNextItemData;
typedef struct ImGuiOldColumnData ImGuiOldColumnData;
typedef struct ImGuiOldColumns ImGuiOldColumns;
typedef struct ImGuiPopupData ImGuiPopupData;
typedef struct ImGuiSettingsHandler ImGuiSettingsHandler;
typedef struct ImGuiStyleMod ImGuiStyleMod;
typedef struct ImGuiStyleVarInfo ImGuiStyleVarInfo;
typedef struct ImGuiTabBar ImGuiTabBar;
typedef struct ImGuiTabItem ImGuiTabItem;
typedef struct ImGuiTable ImGuiTable;
typedef struct ImGuiTableHeaderData ImGuiTableHeaderData;
typedef struct ImGuiTableColumn ImGuiTableColumn;
typedef struct ImGuiTableInstanceData ImGuiTableInstanceData;
typedef struct ImGuiTableTempData ImGuiTableTempData;
typedef struct ImGuiTableSettings ImGuiTableSettings;
typedef struct ImGuiTableColumnsSettings ImGuiTableColumnsSettings;
typedef struct ImGuiTreeNodeStackData ImGuiTreeNodeStackData;
typedef struct ImGuiTypingSelectState ImGuiTypingSelectState;
typedef struct ImGuiTypingSelectRequest ImGuiTypingSelectRequest;
typedef struct ImGuiWindow ImGuiWindow;
typedef struct ImGuiWindowDockStyle ImGuiWindowDockStyle;
typedef struct ImGuiWindowTempData ImGuiWindowTempData;
typedef struct ImGuiWindowSettings ImGuiWindowSettings;
typedef struct STB_TexteditState STB_TexteditState;
typedef struct ImVector_const_charPtr {int Size;int Capacity;const char** Data;} ImVector_const_charPtr;
typedef unsigned int ImGuiID;
typedef signed char ImS8;
typedef unsigned char ImU8;
typedef signed short ImS16;
typedef unsigned short ImU16;
typedef signed int ImS32;
typedef unsigned int ImU32;
typedef signed long long ImS64;
typedef unsigned long long ImU64;
struct ImDrawChannel;
struct ImDrawCmd;
struct ImDrawData;
struct ImDrawList;
struct ImDrawListSharedData;
struct ImDrawListSplitter;
struct ImDrawVert;
struct ImFont;
struct ImFontAtlas;
struct ImFontBuilderIO;
struct ImFontConfig;
struct ImFontGlyph;
struct ImFontGlyphRangesBuilder;
struct ImColor;
struct ImGuiContext;
struct ImGuiIO;
struct ImGuiInputTextCallbackData;
struct ImGuiKeyData;
struct ImGuiListClipper;
struct ImGuiMultiSelectIO;
struct ImGuiOnceUponAFrame;
struct ImGuiPayload;
struct ImGuiPlatformIO;
struct ImGuiPlatformImeData;
struct ImGuiPlatformMonitor;
struct ImGuiSelectionBasicStorage;
struct ImGuiSelectionExternalStorage;
struct ImGuiSelectionRequest;
struct ImGuiSizeCallbackData;
struct ImGuiStorage;
struct ImGuiStoragePair;
struct ImGuiStyle;
struct ImGuiTableSortSpecs;
struct ImGuiTableColumnSortSpecs;
struct ImGuiTextBuffer;
struct ImGuiTextFilter;
struct ImGuiViewport;
struct ImGuiWindowClass;
typedef int ImGuiCol;
typedef int ImGuiCond;
typedef int ImGuiDataType;
typedef int ImGuiMouseButton;
typedef int ImGuiMouseCursor;
typedef int ImGuiStyleVar;
typedef int ImGuiTableBgTarget;
typedef int ImDrawFlags;
typedef int ImDrawListFlags;
typedef int ImFontAtlasFlags;
typedef int ImGuiBackendFlags;
typedef int ImGuiButtonFlags;
typedef int ImGuiChildFlags;
typedef int ImGuiColorEditFlags;
typedef int ImGuiConfigFlags;
typedef int ImGuiComboFlags;
typedef int ImGuiDockNodeFlags;
typedef int ImGuiDragDropFlags;
typedef int ImGuiFocusedFlags;
typedef int ImGuiHoveredFlags;
typedef int ImGuiInputFlags;
typedef int ImGuiInputTextFlags;
typedef int ImGuiItemFlags;
typedef int ImGuiKeyChord;
typedef int ImGuiPopupFlags;
typedef int ImGuiMultiSelectFlags;
typedef int ImGuiSelectableFlags;
typedef int ImGuiSliderFlags;
typedef int ImGuiTabBarFlags;
typedef int ImGuiTabItemFlags;
typedef int ImGuiTableFlags;
typedef int ImGuiTableColumnFlags;
typedef int ImGuiTableRowFlags;
typedef int ImGuiTreeNodeFlags;
typedef int ImGuiViewportFlags;
typedef int ImGuiWindowFlags;
typedef ImU64 ImTextureID;
typedef unsigned short ImDrawIdx;
typedef unsigned int ImWchar32;
typedef unsigned short ImWchar16;
typedef ImWchar16 ImWchar;
typedef ImS64 ImGuiSelectionUserData;
typedef int (*ImGuiInputTextCallback)(ImGuiInputTextCallbackData* data);
typedef void (*ImGuiSizeCallback)(ImGuiSizeCallbackData* data);
typedef void* (*ImGuiMemAllocFunc)(size_t sz, void* user_data);
typedef void (*ImGuiMemFreeFunc)(void* ptr, void* user_data);
typedef struct ImVec2 ImVec2;
struct ImVec2
{
    float x, y;
};
typedef struct ImVec4 ImVec4;
struct ImVec4
{
    float x, y, z, w;
};
struct ImGuiTableSortSpecs
{
    const ImGuiTableColumnSortSpecs* Specs;
    int SpecsCount;
	_Bool SpecsDirty;
};
struct ImGuiTableColumnSortSpecs
{
    ImGuiID ColumnUserID;
    ImS16 ColumnIndex;
    ImS16 SortOrder;
    ImGuiSortDirection SortDirection;
};
struct ImGuiStyle
{
    float Alpha;
    float DisabledAlpha;
    ImVec2 WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    float WindowBorderHoverPadding;
    ImVec2 WindowMinSize;
    ImVec2 WindowTitleAlign;
    ImGuiDir WindowMenuButtonPosition;
    float ChildRounding;
    float ChildBorderSize;
    float PopupRounding;
    float PopupBorderSize;
    ImVec2 FramePadding;
    float FrameRounding;
    float FrameBorderSize;
    ImVec2 ItemSpacing;
    ImVec2 ItemInnerSpacing;
    ImVec2 CellPadding;
    ImVec2 TouchExtraPadding;
    float IndentSpacing;
    float ColumnsMinSpacing;
    float ScrollbarSize;
    float ScrollbarRounding;
    float GrabMinSize;
    float GrabRounding;
    float LogSliderDeadzone;
    float ImageBorderSize;
    float TabRounding;
    float TabBorderSize;
    float TabCloseButtonMinWidthSelected;
    float TabCloseButtonMinWidthUnselected;
    float TabBarBorderSize;
    float TabBarOverlineSize;
    float TableAngledHeadersAngle;
    ImVec2 TableAngledHeadersTextAlign;
    ImGuiDir ColorButtonPosition;
    ImVec2 ButtonTextAlign;
    ImVec2 SelectableTextAlign;
    float SeparatorTextBorderSize;
    ImVec2 SeparatorTextAlign;
    ImVec2 SeparatorTextPadding;
    ImVec2 DisplayWindowPadding;
    ImVec2 DisplaySafeAreaPadding;
    float DockingSeparatorSize;
    float MouseCursorScale;
	_Bool AntiAliasedLines;
	_Bool AntiAliasedLinesUseTex;
	_Bool AntiAliasedFill;
    float CurveTessellationTol;
    float CircleTessellationMaxError;
    ImVec4 Colors[ImGuiCol_COUNT];
    float HoverStationaryDelay;
    float HoverDelayShort;
    float HoverDelayNormal;
    ImGuiHoveredFlags HoverFlagsForTooltipMouse;
    ImGuiHoveredFlags HoverFlagsForTooltipNav;
};
struct ImGuiKeyData
{
	_Bool Down;
    float DownDuration;
    float DownDurationPrev;
    float AnalogValue;
};
typedef struct ImVector_ImWchar {int Size;int Capacity;ImWchar* Data;} ImVector_ImWchar;
struct ImGuiIO
{
    ImGuiConfigFlags ConfigFlags;
    ImGuiBackendFlags BackendFlags;
    ImVec2 DisplaySize;
    float DeltaTime;
    float IniSavingRate;
    const char* IniFilename;
    const char* LogFilename;
    void* UserData;
    ImFontAtlas*Fonts;
    float FontGlobalScale;
	_Bool FontAllowUserScaling;
    ImFont* FontDefault;
    ImVec2 DisplayFramebufferScale;
	_Bool ConfigNavSwapGamepadButtons;
	_Bool ConfigNavMoveSetMousePos;
	_Bool ConfigNavCaptureKeyboard;
	_Bool ConfigNavEscapeClearFocusItem;
	_Bool ConfigNavEscapeClearFocusWindow;
	_Bool ConfigNavCursorVisibleAuto;
	_Bool ConfigNavCursorVisibleAlways;
	_Bool ConfigDockingNoSplit;
	_Bool ConfigDockingWithShift;
	_Bool ConfigDockingAlwaysTabBar;
	_Bool ConfigDockingTransparentPayload;
	_Bool ConfigViewportsNoAutoMerge;
	_Bool ConfigViewportsNoTaskBarIcon;
	_Bool ConfigViewportsNoDecoration;
	_Bool ConfigViewportsNoDefaultParent;
	_Bool MouseDrawCursor;
	_Bool ConfigMacOSXBehaviors;
	_Bool ConfigInputTrickleEventQueue;
	_Bool ConfigInputTextCursorBlink;
	_Bool ConfigInputTextEnterKeepActive;
	_Bool ConfigDragClickToInputText;
	_Bool ConfigWindowsResizeFromEdges;
	_Bool ConfigWindowsMoveFromTitleBarOnly;
	_Bool ConfigWindowsCopyContentsWithCtrlC;
	_Bool ConfigScrollbarScrollByPage;
    float ConfigMemoryCompactTimer;
    float MouseDoubleClickTime;
    float MouseDoubleClickMaxDist;
    float MouseDragThreshold;
    float KeyRepeatDelay;
    float KeyRepeatRate;
	_Bool ConfigErrorRecovery;
	_Bool ConfigErrorRecoveryEnableAssert;
	_Bool ConfigErrorRecoveryEnableDebugLog;
	_Bool ConfigErrorRecoveryEnableTooltip;
	_Bool ConfigDebugIsDebuggerPresent;
	_Bool ConfigDebugHighlightIdConflicts;
	_Bool ConfigDebugHighlightIdConflictsShowItemPicker;
	_Bool ConfigDebugBeginReturnValueOnce;
	_Bool ConfigDebugBeginReturnValueLoop;
	_Bool ConfigDebugIgnoreFocusLoss;
	_Bool ConfigDebugIniSettings;
    const char* BackendPlatformName;
    const char* BackendRendererName;
    void* BackendPlatformUserData;
    void* BackendRendererUserData;
    void* BackendLanguageUserData;
	_Bool WantCaptureMouse;
	_Bool WantCaptureKeyboard;
	_Bool WantTextInput;
	_Bool WantSetMousePos;
	_Bool WantSaveIniSettings;
	_Bool NavActive;
	_Bool NavVisible;
    float Framerate;
    int MetricsRenderVertices;
    int MetricsRenderIndices;
    int MetricsRenderWindows;
    int MetricsActiveWindows;
    ImVec2 MouseDelta;
    ImGuiContext* Ctx;
    ImVec2 MousePos;
	_Bool MouseDown[5];
    float MouseWheel;
    float MouseWheelH;
    ImGuiMouseSource MouseSource;
    ImGuiID MouseHoveredViewport;
	_Bool KeyCtrl;
	_Bool KeyShift;
	_Bool KeyAlt;
	_Bool KeySuper;
    ImGuiKeyChord KeyMods;
    ImGuiKeyData KeysData[ImGuiKey_NamedKey_COUNT];
	_Bool WantCaptureMouseUnlessPopupClose;
    ImVec2 MousePosPrev;
    ImVec2 MouseClickedPos[5];
    double MouseClickedTime[5];
	_Bool MouseClicked[5];
	_Bool MouseDoubleClicked[5];
    ImU16 MouseClickedCount[5];
    ImU16 MouseClickedLastCount[5];
	_Bool MouseReleased[5];
    double MouseReleasedTime[5];
	_Bool MouseDownOwned[5];
	_Bool MouseDownOwnedUnlessPopupClose[5];
	_Bool MouseWheelRequestAxisSwap;
	_Bool MouseCtrlLeftAsRightClick;
    float MouseDownDuration[5];
    float MouseDownDurationPrev[5];
    ImVec2 MouseDragMaxDistanceAbs[5];
    float MouseDragMaxDistanceSqr[5];
    float PenPressure;
	_Bool AppFocusLost;
	_Bool AppAcceptingEvents;
    ImWchar16 InputQueueSurrogate;
    ImVector_ImWchar InputQueueCharacters;
};
struct ImGuiInputTextCallbackData
{
    ImGuiContext* Ctx;
    ImGuiInputTextFlags EventFlag;
    ImGuiInputTextFlags Flags;
    void* UserData;
    ImWchar EventChar;
    ImGuiKey EventKey;
    char* Buf;
    int BufTextLen;
    int BufSize;
	_Bool BufDirty;
    int CursorPos;
    int SelectionStart;
    int SelectionEnd;
};
struct ImGuiSizeCallbackData
{
    void* UserData;
    ImVec2 Pos;
    ImVec2 CurrentSize;
    ImVec2 DesiredSize;
};
struct ImGuiWindowClass
{
    ImGuiID ClassId;
    ImGuiID ParentViewportId;
    ImGuiID FocusRouteParentWindowId;
    ImGuiViewportFlags ViewportFlagsOverrideSet;
    ImGuiViewportFlags ViewportFlagsOverrideClear;
    ImGuiTabItemFlags TabItemFlagsOverrideSet;
    ImGuiDockNodeFlags DockNodeFlagsOverrideSet;
	_Bool DockingAlwaysTabBar;
	_Bool DockingAllowUnclassed;
};
struct ImGuiPayload
{
    void* Data;
    int DataSize;
    ImGuiID SourceId;
    ImGuiID SourceParentId;
    int DataFrameCount;
    char DataType[32 + 1];
	_Bool Preview;
	_Bool Delivery;
};
struct ImGuiOnceUponAFrame
{
     int RefFrame;
};
struct ImGuiTextRange
{
        const char* b;
        const char* e;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_ImGuiTextRange {int Size;int Capacity;ImGuiTextRange* Data;} ImVector_ImGuiTextRange;
struct ImGuiTextFilter
{
    char InputBuf[256];
    ImVector_ImGuiTextRange Filters;
    int CountGrep;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_char {int Size;int Capacity;char* Data;} ImVector_char;
struct ImGuiTextBuffer
{
    ImVector_char Buf;
};
struct ImGuiStoragePair
{
    ImGuiID key;
    union { int val_i; float val_f; void* val_p; };
};
typedef struct ImVector_ImGuiStoragePair {int Size;int Capacity;ImGuiStoragePair* Data;} ImVector_ImGuiStoragePair;
struct ImGuiStorage
{
    ImVector_ImGuiStoragePair Data;
};
struct ImGuiListClipper
{
    ImGuiContext* Ctx;
    int DisplayStart;
    int DisplayEnd;
    int ItemsCount;
    float ItemsHeight;
    float StartPosY;
    double StartSeekOffsetY;
    void* TempData;
};
struct ImColor
{
    ImVec4 Value;
};
typedef struct ImVector_ImGuiSelectionRequest {int Size;int Capacity;ImGuiSelectionRequest* Data;} ImVector_ImGuiSelectionRequest;
struct ImGuiMultiSelectIO
{
    ImVector_ImGuiSelectionRequest Requests;
    ImGuiSelectionUserData RangeSrcItem;
    ImGuiSelectionUserData NavIdItem;
	_Bool NavIdSelected;
	_Bool RangeSrcReset;
    int ItemsCount;
};
struct ImGuiSelectionRequest
{
    ImGuiSelectionRequestType Type;
	_Bool Selected;
    ImS8 RangeDirection;
    ImGuiSelectionUserData RangeFirstItem;
    ImGuiSelectionUserData RangeLastItem;
};
struct ImGuiSelectionBasicStorage
{
    int Size;
	_Bool PreserveOrder;
    void* UserData;
    ImGuiID (*AdapterIndexToStorageId)(ImGuiSelectionBasicStorage* self, int idx);
    int _SelectionOrder;
    ImGuiStorage _Storage;
};
struct ImGuiSelectionExternalStorage
{
    void* UserData;
    void (*AdapterSetItemSelected)(ImGuiSelectionExternalStorage* self, int idx, _Bool selected);
};
typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);
struct ImDrawCmd
{
    ImVec4 ClipRect;
    ImTextureID TextureId;
    unsigned int VtxOffset;
    unsigned int IdxOffset;
    unsigned int ElemCount;
    ImDrawCallback UserCallback;
    void* UserCallbackData;
    int UserCallbackDataSize;
    int UserCallbackDataOffset;
};
struct ImDrawVert
{
    ImVec2 pos;
    ImVec2 uv;
    ImU32 col;
};
typedef struct ImDrawCmdHeader ImDrawCmdHeader;
struct ImDrawCmdHeader
{
    ImVec4 ClipRect;
    ImTextureID TextureId;
    unsigned int VtxOffset;
};
typedef struct ImVector_ImDrawCmd {int Size;int Capacity;ImDrawCmd* Data;} ImVector_ImDrawCmd;
typedef struct ImVector_ImDrawIdx {int Size;int Capacity;ImDrawIdx* Data;} ImVector_ImDrawIdx;
struct ImDrawChannel
{
    ImVector_ImDrawCmd _CmdBuffer;
    ImVector_ImDrawIdx _IdxBuffer;
};
typedef struct ImVector_ImDrawChannel {int Size;int Capacity;ImDrawChannel* Data;} ImVector_ImDrawChannel;
struct ImDrawListSplitter
{
    int _Current;
    int _Count;
    ImVector_ImDrawChannel _Channels;
};
typedef struct ImVector_ImDrawVert {int Size;int Capacity;ImDrawVert* Data;} ImVector_ImDrawVert;
typedef struct ImVector_ImVec2 {int Size;int Capacity;ImVec2* Data;} ImVector_ImVec2;
typedef struct ImVector_ImVec4 {int Size;int Capacity;ImVec4* Data;} ImVector_ImVec4;
typedef struct ImVector_ImTextureID {int Size;int Capacity;ImTextureID* Data;} ImVector_ImTextureID;
typedef struct ImVector_ImU8 {int Size;int Capacity;ImU8* Data;} ImVector_ImU8;
struct ImDrawList
{
    ImVector_ImDrawCmd CmdBuffer;
    ImVector_ImDrawIdx IdxBuffer;
    ImVector_ImDrawVert VtxBuffer;
    ImDrawListFlags Flags;
    unsigned int _VtxCurrentIdx;
    ImDrawListSharedData* _Data;
    ImDrawVert* _VtxWritePtr;
    ImDrawIdx* _IdxWritePtr;
    ImVector_ImVec2 _Path;
    ImDrawCmdHeader _CmdHeader;
    ImDrawListSplitter _Splitter;
    ImVector_ImVec4 _ClipRectStack;
    ImVector_ImTextureID _TextureIdStack;
    ImVector_ImU8 _CallbacksDataBuf;
    float _FringeScale;
    const char* _OwnerName;
};
typedef struct ImVector_ImDrawListPtr {int Size;int Capacity;ImDrawList** Data;} ImVector_ImDrawListPtr;
struct ImDrawData
{
	_Bool Valid;
    int CmdListsCount;
    int TotalIdxCount;
    int TotalVtxCount;
    ImVector_ImDrawListPtr CmdLists;
    ImVec2 DisplayPos;
    ImVec2 DisplaySize;
    ImVec2 FramebufferScale;
    ImGuiViewport* OwnerViewport;
};
struct ImFontConfig
{
    void* FontData;
    int FontDataSize;
	_Bool FontDataOwnedByAtlas;
	_Bool MergeMode;
	_Bool PixelSnapH;
    int FontNo;
    int OversampleH;
    int OversampleV;
    float SizePixels;
    ImVec2 GlyphOffset;
    const ImWchar* GlyphRanges;
    float GlyphMinAdvanceX;
    float GlyphMaxAdvanceX;
    float GlyphExtraAdvanceX;
    unsigned int FontBuilderFlags;
    float RasterizerMultiply;
    float RasterizerDensity;
    ImWchar EllipsisChar;
    char Name[40];
    ImFont* DstFont;
};
struct ImFontGlyph
{
    unsigned int Colored : 1;
    unsigned int Visible : 1;
    unsigned int Codepoint : 30;
    float AdvanceX;
    float X0, Y0, X1, Y1;
    float U0, V0, U1, V1;
};
typedef struct ImVector_ImU32 {int Size;int Capacity;ImU32* Data;} ImVector_ImU32;
struct ImFontGlyphRangesBuilder
{
    ImVector_ImU32 UsedChars;
};
typedef struct ImFontAtlasCustomRect ImFontAtlasCustomRect;
struct ImFontAtlasCustomRect
{
    unsigned short X, Y;
    unsigned short Width, Height;
    unsigned int GlyphID : 31;
    unsigned int GlyphColored : 1;
    float GlyphAdvanceX;
    ImVec2 GlyphOffset;
    ImFont* Font;
};
typedef struct ImVector_ImFontPtr {int Size;int Capacity;ImFont** Data;} ImVector_ImFontPtr;
typedef struct ImVector_ImFontAtlasCustomRect {int Size;int Capacity;ImFontAtlasCustomRect* Data;} ImVector_ImFontAtlasCustomRect;
typedef struct ImVector_ImFontConfig {int Size;int Capacity;ImFontConfig* Data;} ImVector_ImFontConfig;
struct ImFontAtlas
{
    ImFontAtlasFlags Flags;
    ImTextureID TexID;
    int TexDesiredWidth;
    int TexGlyphPadding;
    void* UserData;
	_Bool Locked;
	_Bool TexReady;
	_Bool TexPixelsUseColors;
    unsigned char* TexPixelsAlpha8;
    unsigned int* TexPixelsRGBA32;
    int TexWidth;
    int TexHeight;
    ImVec2 TexUvScale;
    ImVec2 TexUvWhitePixel;
    ImVector_ImFontPtr Fonts;
    ImVector_ImFontAtlasCustomRect CustomRects;
    ImVector_ImFontConfig Sources;
    ImVec4 TexUvLines[(32) + 1];
    const ImFontBuilderIO* FontBuilderIO;
    unsigned int FontBuilderFlags;
    int PackIdMouseCursors;
    int PackIdLines;
};
typedef struct ImVector_float {int Size;int Capacity;float* Data;} ImVector_float;
typedef struct ImVector_ImU16 {int Size;int Capacity;ImU16* Data;} ImVector_ImU16;
typedef struct ImVector_ImFontGlyph {int Size;int Capacity;ImFontGlyph* Data;} ImVector_ImFontGlyph;
struct ImFont
{
    ImVector_float IndexAdvanceX;
    float FallbackAdvanceX;
    float FontSize;
    ImVector_ImU16 IndexLookup;
    ImVector_ImFontGlyph Glyphs;
    ImFontGlyph* FallbackGlyph;
    ImFontAtlas* ContainerAtlas;
    ImFontConfig* Sources;
    short SourcesCount;
    short EllipsisCharCount;
    ImWchar EllipsisChar;
    ImWchar FallbackChar;
    float EllipsisWidth;
    float EllipsisCharStep;
    float Scale;
    float Ascent, Descent;
    int MetricsTotalSurface;
	_Bool DirtyLookupTables;
    ImU8 Used8kPagesMap[(0xFFFF +1)/8192/8];
};
struct ImGuiViewport
{
    ImGuiID ID;
    ImGuiViewportFlags Flags;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 WorkPos;
    ImVec2 WorkSize;
    float DpiScale;
    ImGuiID ParentViewportId;
    ImDrawData* DrawData;
    void* RendererUserData;
    void* PlatformUserData;
    void* PlatformHandle;
    void* PlatformHandleRaw;
	_Bool PlatformWindowCreated;
	_Bool PlatformRequestMove;
	_Bool PlatformRequestResize;
	_Bool PlatformRequestClose;
};
typedef struct ImVector_ImGuiPlatformMonitor {int Size;int Capacity;ImGuiPlatformMonitor* Data;} ImVector_ImGuiPlatformMonitor;
typedef struct ImVector_ImGuiViewportPtr {int Size;int Capacity;ImGuiViewport** Data;} ImVector_ImGuiViewportPtr;
struct ImGuiPlatformIO
{
    const char* (*Platform_GetClipboardTextFn)(ImGuiContext* ctx);
    void (*Platform_SetClipboardTextFn)(ImGuiContext* ctx, const char* text);
    void* Platform_ClipboardUserData;
	_Bool (*Platform_OpenInShellFn)(ImGuiContext* ctx, const char* path);
    void* Platform_OpenInShellUserData;
    void (*Platform_SetImeDataFn)(ImGuiContext* ctx, ImGuiViewport* viewport, ImGuiPlatformImeData* data);
    void* Platform_ImeUserData;
    ImWchar Platform_LocaleDecimalPoint;
    void* Renderer_RenderState;
    void (*Platform_CreateWindow)(ImGuiViewport* vp);
    void (*Platform_DestroyWindow)(ImGuiViewport* vp);
    void (*Platform_ShowWindow)(ImGuiViewport* vp);
    void (*Platform_SetWindowPos)(ImGuiViewport* vp, ImVec2 pos);
    ImVec2 (*Platform_GetWindowPos)(ImGuiViewport* vp);
    void (*Platform_SetWindowSize)(ImGuiViewport* vp, ImVec2 size);
    ImVec2 (*Platform_GetWindowSize)(ImGuiViewport* vp);
    void (*Platform_SetWindowFocus)(ImGuiViewport* vp);
	_Bool (*Platform_GetWindowFocus)(ImGuiViewport* vp);
	_Bool (*Platform_GetWindowMinimized)(ImGuiViewport* vp);
    void (*Platform_SetWindowTitle)(ImGuiViewport* vp, const char* str);
    void (*Platform_SetWindowAlpha)(ImGuiViewport* vp, float alpha);
    void (*Platform_UpdateWindow)(ImGuiViewport* vp);
    void (*Platform_RenderWindow)(ImGuiViewport* vp, void* render_arg);
    void (*Platform_SwapBuffers)(ImGuiViewport* vp, void* render_arg);
    float (*Platform_GetWindowDpiScale)(ImGuiViewport* vp);
    void (*Platform_OnChangedViewport)(ImGuiViewport* vp);
    ImVec4 (*Platform_GetWindowWorkAreaInsets)(ImGuiViewport* vp);
    int (*Platform_CreateVkSurface)(ImGuiViewport* vp, ImU64 vk_inst, const void* vk_allocators, ImU64* out_vk_surface);
    void (*Renderer_CreateWindow)(ImGuiViewport* vp);
    void (*Renderer_DestroyWindow)(ImGuiViewport* vp);
    void (*Renderer_SetWindowSize)(ImGuiViewport* vp, ImVec2 size);
    void (*Renderer_RenderWindow)(ImGuiViewport* vp, void* render_arg);
    void (*Renderer_SwapBuffers)(ImGuiViewport* vp, void* render_arg);
    ImVector_ImGuiPlatformMonitor Monitors;
    ImVector_ImGuiViewportPtr Viewports;
};
struct ImGuiPlatformMonitor
{
    ImVec2 MainPos, MainSize;
    ImVec2 WorkPos, WorkSize;
    float DpiScale;
    void* PlatformHandle;
};
struct ImGuiPlatformImeData
{
	_Bool WantVisible;
    ImVec2 InputPos;
    float InputLineHeight;
};
struct ImBitVector;
struct ImRect;
struct ImGuiTextIndex;
struct ImDrawDataBuilder;
struct ImDrawListSharedData;
struct ImGuiBoxSelectState;
struct ImGuiColorMod;
struct ImGuiContext;
struct ImGuiContextHook;
struct ImGuiDataTypeInfo;
struct ImGuiDeactivatedItemData;
struct ImGuiDockContext;
struct ImGuiDockRequest;
struct ImGuiDockNode;
struct ImGuiDockNodeSettings;
struct ImGuiErrorRecoveryState;
struct ImGuiGroupData;
struct ImGuiInputTextState;
struct ImGuiInputTextDeactivateData;
struct ImGuiLastItemData;
struct ImGuiLocEntry;
struct ImGuiMenuColumns;
struct ImGuiMultiSelectState;
struct ImGuiMultiSelectTempData;
struct ImGuiNavItemData;
struct ImGuiMetricsConfig;
struct ImGuiNextWindowData;
struct ImGuiNextItemData;
struct ImGuiOldColumnData;
struct ImGuiOldColumns;
struct ImGuiPopupData;
struct ImGuiSettingsHandler;
struct ImGuiStyleMod;
struct ImGuiStyleVarInfo;
struct ImGuiTabBar;
struct ImGuiTabItem;
struct ImGuiTable;
struct ImGuiTableHeaderData;
struct ImGuiTableColumn;
struct ImGuiTableInstanceData;
struct ImGuiTableTempData;
struct ImGuiTableSettings;
struct ImGuiTableColumnsSettings;
struct ImGuiTreeNodeStackData;
struct ImGuiTypingSelectState;
struct ImGuiTypingSelectRequest;
struct ImGuiWindow;
struct ImGuiWindowDockStyle;
struct ImGuiWindowTempData;
struct ImGuiWindowSettings;
typedef int ImGuiDataAuthority;
typedef int ImGuiLayoutType;
typedef int ImGuiActivateFlags;
typedef int ImGuiDebugLogFlags;
typedef int ImGuiFocusRequestFlags;
typedef int ImGuiItemStatusFlags;
typedef int ImGuiOldColumnFlags;
typedef int ImGuiLogFlags;
typedef int ImGuiNavRenderCursorFlags;
typedef int ImGuiNavMoveFlags;
typedef int ImGuiNextItemDataFlags;
typedef int ImGuiNextWindowDataFlags;
typedef int ImGuiScrollFlags;
typedef int ImGuiSeparatorFlags;
typedef int ImGuiTextFlags;
typedef int ImGuiTooltipFlags;
typedef int ImGuiTypingSelectFlags;
typedef int ImGuiWindowRefreshFlags;
typedef FILE* ImFileHandle;
typedef struct ImVec1 ImVec1;
struct ImVec1
{
    float x;
};
typedef struct ImVec2ih ImVec2ih;
struct ImVec2ih
{
    short x, y;
};
struct ImRect
{
    ImVec2 Min;
    ImVec2 Max;
};
typedef ImU32* ImBitArrayPtr;
struct ImBitVector
{
    ImVector_ImU32 Storage;
};
typedef int ImPoolIdx;
typedef struct ImVector_int {int Size;int Capacity;int* Data;} ImVector_int;
struct ImGuiTextIndex
{
    ImVector_int LineOffsets;
    int EndOffset;
};
struct ImDrawListSharedData
{
    ImVec2 TexUvWhitePixel;
    const ImVec4* TexUvLines;
    ImFont* Font;
    float FontSize;
    float FontScale;
    float CurveTessellationTol;
    float CircleSegmentMaxError;
    float InitialFringeScale;
    ImDrawListFlags InitialFlags;
    ImVec4 ClipRectFullscreen;
    ImVector_ImVec2 TempBuffer;
    ImVec2 ArcFastVtx[48];
    float ArcFastRadiusCutoff;
    ImU8 CircleSegmentCounts[64];
};
struct ImDrawDataBuilder
{
    ImVector_ImDrawListPtr* Layers[2];
    ImVector_ImDrawListPtr LayerData1;
};
struct ImGuiStyleVarInfo
{
    ImU32 Count : 8;
    ImGuiDataType DataType : 8;
    ImU32 Offset : 16;
};
struct ImGuiColorMod
{
    ImGuiCol Col;
    ImVec4 BackupValue;
};
struct ImGuiStyleMod
{
    ImGuiStyleVar VarIdx;
    union { int BackupInt[2]; float BackupFloat[2]; };
};
typedef struct ImGuiDataTypeStorage ImGuiDataTypeStorage;
struct ImGuiDataTypeStorage
{
    ImU8 Data[8];
};
struct ImGuiDataTypeInfo
{
    size_t Size;
    const char* Name;
    const char* PrintFmt;
    const char* ScanFmt;
};
typedef struct ImGuiComboPreviewData ImGuiComboPreviewData;
struct ImGuiComboPreviewData
{
    ImRect PreviewRect;
    ImVec2 BackupCursorPos;
    ImVec2 BackupCursorMaxPos;
    ImVec2 BackupCursorPosPrevLine;
    float BackupPrevLineTextBaseOffset;
    ImGuiLayoutType BackupLayout;
};
struct ImGuiGroupData
{
    ImGuiID WindowID;
    ImVec2 BackupCursorPos;
    ImVec2 BackupCursorMaxPos;
    ImVec2 BackupCursorPosPrevLine;
    ImVec1 BackupIndent;
    ImVec1 BackupGroupOffset;
    ImVec2 BackupCurrLineSize;
    float BackupCurrLineTextBaseOffset;
    ImGuiID BackupActiveIdIsAlive;
	_Bool BackupDeactivatedIdIsAlive;
	_Bool BackupHoveredIdIsAlive;
	_Bool BackupIsSameLine;
	_Bool EmitItem;
};
struct ImGuiMenuColumns
{
    ImU32 TotalWidth;
    ImU32 NextTotalWidth;
    ImU16 Spacing;
    ImU16 OffsetIcon;
    ImU16 OffsetLabel;
    ImU16 OffsetShortcut;
    ImU16 OffsetMark;
    ImU16 Widths[4];
};
typedef struct ImGuiInputTextDeactivatedState ImGuiInputTextDeactivatedState;
struct ImGuiInputTextDeactivatedState
{
    ImGuiID ID;
    ImVector_char TextA;
}; struct STB_TexteditState;
typedef STB_TexteditState ImStbTexteditState;
struct ImGuiInputTextState
{
    ImGuiContext* Ctx;
    ImStbTexteditState* Stb;
    ImGuiInputTextFlags Flags;
    ImGuiID ID;
    int TextLen;
    const char* TextSrc;
    ImVector_char TextA;
    ImVector_char TextToRevertTo;
    ImVector_char CallbackTextBackup;
    int BufCapacity;
    ImVec2 Scroll;
    float CursorAnim;
	_Bool CursorFollow;
	_Bool SelectedAllMouseLock;
	_Bool Edited;
	_Bool WantReloadUserBuf;
    int ReloadSelectionStart;
    int ReloadSelectionEnd;
};
struct ImGuiNextWindowData
{
    ImGuiNextWindowDataFlags HasFlags;
    ImGuiCond PosCond;
    ImGuiCond SizeCond;
    ImGuiCond CollapsedCond;
    ImGuiCond DockCond;
    ImVec2 PosVal;
    ImVec2 PosPivotVal;
    ImVec2 SizeVal;
    ImVec2 ContentSizeVal;
    ImVec2 ScrollVal;
    ImGuiWindowFlags WindowFlags;
    ImGuiChildFlags ChildFlags;
	_Bool PosUndock;
	_Bool CollapsedVal;
    ImRect SizeConstraintRect;
    ImGuiSizeCallback SizeCallback;
    void* SizeCallbackUserData;
    float BgAlphaVal;
    ImGuiID ViewportId;
    ImGuiID DockId;
    ImGuiWindowClass WindowClass;
    ImVec2 MenuBarOffsetMinVal;
    ImGuiWindowRefreshFlags RefreshFlagsVal;
};
struct ImGuiNextItemData
{
    ImGuiNextItemDataFlags HasFlags;
    ImGuiItemFlags ItemFlags;
    ImGuiID FocusScopeId;
    ImGuiSelectionUserData SelectionUserData;
    float Width;
    ImGuiKeyChord Shortcut;
    ImGuiInputFlags ShortcutFlags;
	_Bool OpenVal;
    ImU8 OpenCond;
    ImGuiDataTypeStorage RefVal;
    ImGuiID StorageId;
};
struct ImGuiLastItemData
{
    ImGuiID ID;
    ImGuiItemFlags ItemFlags;
    ImGuiItemStatusFlags StatusFlags;
    ImRect Rect;
    ImRect NavRect;
    ImRect DisplayRect;
    ImRect ClipRect;
    ImGuiKeyChord Shortcut;
};
struct ImGuiTreeNodeStackData
{
    ImGuiID ID;
    ImGuiTreeNodeFlags TreeFlags;
    ImGuiItemFlags ItemFlags;
    ImRect NavRect;
};
struct ImGuiErrorRecoveryState
{
    short SizeOfWindowStack;
    short SizeOfIDStack;
    short SizeOfTreeStack;
    short SizeOfColorStack;
    short SizeOfStyleVarStack;
    short SizeOfFontStack;
    short SizeOfFocusScopeStack;
    short SizeOfGroupStack;
    short SizeOfItemFlagsStack;
    short SizeOfBeginPopupStack;
    short SizeOfDisabledStack;
};
typedef struct ImGuiWindowStackData ImGuiWindowStackData;
struct ImGuiWindowStackData
{
    ImGuiWindow* Window;
    ImGuiLastItemData ParentLastItemDataBackup;
    ImGuiErrorRecoveryState StackSizesInBegin;
	_Bool DisabledOverrideReenable;
    float DisabledOverrideReenableAlphaBackup;
};
typedef struct ImGuiShrinkWidthItem ImGuiShrinkWidthItem;
struct ImGuiShrinkWidthItem
{
    int Index;
    float Width;
    float InitialWidth;
};
typedef struct ImGuiPtrOrIndex ImGuiPtrOrIndex;
struct ImGuiPtrOrIndex
{
    void* Ptr;
    int Index;
};
struct ImGuiDeactivatedItemData
{
    ImGuiID ID;
    int ElapseFrame;
	_Bool HasBeenEditedBefore;
	_Bool IsAlive;
};
struct ImGuiPopupData
{
    ImGuiID PopupId;
    ImGuiWindow* Window;
    ImGuiWindow* RestoreNavWindow;
    int ParentNavLayer;
    int OpenFrameCount;
    ImGuiID OpenParentId;
    ImVec2 OpenPopupPos;
    ImVec2 OpenMousePos;
};
typedef struct ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN {ImU32 Storage[(ImGuiKey_NamedKey_COUNT+31)>>5];} ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
typedef ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN ImBitArrayForNamedKeys;
typedef struct ImGuiInputEventMousePos ImGuiInputEventMousePos;
struct ImGuiInputEventMousePos
{ float PosX, PosY; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventMouseWheel ImGuiInputEventMouseWheel;
struct ImGuiInputEventMouseWheel
{ float WheelX, WheelY; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventMouseButton ImGuiInputEventMouseButton;
struct ImGuiInputEventMouseButton
{ int Button; _Bool Down; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventMouseViewport ImGuiInputEventMouseViewport;
struct ImGuiInputEventMouseViewport
{ ImGuiID HoveredViewportID;
};
typedef struct ImGuiInputEventKey ImGuiInputEventKey;
struct ImGuiInputEventKey
{ ImGuiKey Key; _Bool Down; float AnalogValue;
};
typedef struct ImGuiInputEventText ImGuiInputEventText;
struct ImGuiInputEventText
{ unsigned int Char;
};
typedef struct ImGuiInputEventAppFocused ImGuiInputEventAppFocused;
struct ImGuiInputEventAppFocused
{ _Bool Focused;
};
typedef struct ImGuiInputEvent ImGuiInputEvent;
struct ImGuiInputEvent
{
    ImGuiInputEventType Type;
    ImGuiInputSource Source;
    ImU32 EventId;
    union
    {
        ImGuiInputEventMousePos MousePos;
        ImGuiInputEventMouseWheel MouseWheel;
        ImGuiInputEventMouseButton MouseButton;
        ImGuiInputEventMouseViewport MouseViewport;
        ImGuiInputEventKey Key;
        ImGuiInputEventText Text;
        ImGuiInputEventAppFocused AppFocused;
    };
	_Bool AddedByTestEngine;
};
typedef ImS16 ImGuiKeyRoutingIndex;
typedef struct ImGuiKeyRoutingData ImGuiKeyRoutingData;
struct ImGuiKeyRoutingData
{
    ImGuiKeyRoutingIndex NextEntryIndex;
    ImU16 Mods;
    ImU8 RoutingCurrScore;
    ImU8 RoutingNextScore;
    ImGuiID RoutingCurr;
    ImGuiID RoutingNext;
};
typedef struct ImGuiKeyRoutingTable ImGuiKeyRoutingTable;
typedef struct ImVector_ImGuiKeyRoutingData {int Size;int Capacity;ImGuiKeyRoutingData* Data;} ImVector_ImGuiKeyRoutingData;
struct ImGuiKeyRoutingTable
{
    ImGuiKeyRoutingIndex Index[ImGuiKey_NamedKey_COUNT];
    ImVector_ImGuiKeyRoutingData Entries;
    ImVector_ImGuiKeyRoutingData EntriesNext;
};
typedef struct ImGuiKeyOwnerData ImGuiKeyOwnerData;
struct ImGuiKeyOwnerData
{
    ImGuiID OwnerCurr;
    ImGuiID OwnerNext;
	_Bool LockThisFrame;
	_Bool LockUntilRelease;
};
typedef struct ImGuiListClipperRange ImGuiListClipperRange;
struct ImGuiListClipperRange
{
    int Min;
    int Max;
	_Bool PosToIndexConvert;
    ImS8 PosToIndexOffsetMin;
    ImS8 PosToIndexOffsetMax;
};
typedef struct ImGuiListClipperData ImGuiListClipperData;
typedef struct ImVector_ImGuiListClipperRange {int Size;int Capacity;ImGuiListClipperRange* Data;} ImVector_ImGuiListClipperRange;
struct ImGuiListClipperData
{
    ImGuiListClipper* ListClipper;
    float LossynessOffset;
    int StepNo;
    int ItemsFrozen;
    ImVector_ImGuiListClipperRange Ranges;
};
struct ImGuiNavItemData
{
    ImGuiWindow* Window;
    ImGuiID ID;
    ImGuiID FocusScopeId;
    ImRect RectRel;
    ImGuiItemFlags ItemFlags;
    float DistBox;
    float DistCenter;
    float DistAxial;
    ImGuiSelectionUserData SelectionUserData;
};
typedef struct ImGuiFocusScopeData ImGuiFocusScopeData;
struct ImGuiFocusScopeData
{
    ImGuiID ID;
    ImGuiID WindowID;
};
struct ImGuiTypingSelectRequest
{
    ImGuiTypingSelectFlags Flags;
    int SearchBufferLen;
    const char* SearchBuffer;
	_Bool SelectRequest;
	_Bool SingleCharMode;
    ImS8 SingleCharSize;
};
struct ImGuiTypingSelectState
{
    ImGuiTypingSelectRequest Request;
    char SearchBuffer[64];
    ImGuiID FocusScope;
    int LastRequestFrame;
    float LastRequestTime;
	_Bool SingleCharModeLock;
};
struct ImGuiOldColumnData
{
    float OffsetNorm;
    float OffsetNormBeforeResize;
    ImGuiOldColumnFlags Flags;
    ImRect ClipRect;
};
typedef struct ImVector_ImGuiOldColumnData {int Size;int Capacity;ImGuiOldColumnData* Data;} ImVector_ImGuiOldColumnData;
struct ImGuiOldColumns
{
    ImGuiID ID;
    ImGuiOldColumnFlags Flags;
	_Bool IsFirstFrame;
	_Bool IsBeingResized;
    int Current;
    int Count;
    float OffMinX, OffMaxX;
    float LineMinY, LineMaxY;
    float HostCursorPosY;
    float HostCursorMaxPosX;
    ImRect HostInitialClipRect;
    ImRect HostBackupClipRect;
    ImRect HostBackupParentWorkRect;
    ImVector_ImGuiOldColumnData Columns;
    ImDrawListSplitter Splitter;
};
struct ImGuiBoxSelectState
{
    ImGuiID ID;
	_Bool IsActive;
	_Bool IsStarting;
	_Bool IsStartedFromVoid;
	_Bool IsStartedSetNavIdOnce;
	_Bool RequestClear;
    ImGuiKeyChord KeyMods : 16;
    ImVec2 StartPosRel;
    ImVec2 EndPosRel;
    ImVec2 ScrollAccum;
    ImGuiWindow* Window;
	_Bool UnclipMode;
    ImRect UnclipRect;
    ImRect BoxSelectRectPrev;
    ImRect BoxSelectRectCurr;
};
struct ImGuiMultiSelectTempData
{
    ImGuiMultiSelectIO IO;
    ImGuiMultiSelectState* Storage;
    ImGuiID FocusScopeId;
    ImGuiMultiSelectFlags Flags;
    ImVec2 ScopeRectMin;
    ImVec2 BackupCursorMaxPos;
    ImGuiSelectionUserData LastSubmittedItem;
    ImGuiID BoxSelectId;
    ImGuiKeyChord KeyMods;
    ImS8 LoopRequestSetAll;
	_Bool IsEndIO;
	_Bool IsFocused;
	_Bool IsKeyboardSetRange;
	_Bool NavIdPassedBy;
	_Bool RangeSrcPassedBy;
	_Bool RangeDstPassedBy;
};
struct ImGuiMultiSelectState
{
    ImGuiWindow* Window;
    ImGuiID ID;
    int LastFrameActive;
    int LastSelectionSize;
    ImS8 RangeSelected;
    ImS8 NavIdSelected;
    ImGuiSelectionUserData RangeSrcItem;
    ImGuiSelectionUserData NavIdItem;
};
typedef struct ImVector_ImGuiWindowPtr {int Size;int Capacity;ImGuiWindow** Data;} ImVector_ImGuiWindowPtr;
struct ImGuiDockNode
{
    ImGuiID ID;
    ImGuiDockNodeFlags SharedFlags;
    ImGuiDockNodeFlags LocalFlags;
    ImGuiDockNodeFlags LocalFlagsInWindows;
    ImGuiDockNodeFlags MergedFlags;
    ImGuiDockNodeState State;
    ImGuiDockNode* ParentNode;
    ImGuiDockNode* ChildNodes[2];
    ImVector_ImGuiWindowPtr Windows;
    ImGuiTabBar* TabBar;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 SizeRef;
    ImGuiAxis SplitAxis;
    ImGuiWindowClass WindowClass;
    ImU32 LastBgColor;
    ImGuiWindow* HostWindow;
    ImGuiWindow* VisibleWindow;
    ImGuiDockNode* CentralNode;
    ImGuiDockNode* OnlyNodeWithWindows;
    int CountNodeWithWindows;
    int LastFrameAlive;
    int LastFrameActive;
    int LastFrameFocused;
    ImGuiID LastFocusedNodeId;
    ImGuiID SelectedTabId;
    ImGuiID WantCloseTabId;
    ImGuiID RefViewportId;
    ImGuiDataAuthority AuthorityForPos :3;
    ImGuiDataAuthority AuthorityForSize :3;
    ImGuiDataAuthority AuthorityForViewport :3;
	_Bool IsVisible :1;
	_Bool IsFocused :1;
	_Bool IsBgDrawnThisFrame :1;
	_Bool HasCloseButton :1;
	_Bool HasWindowMenuButton :1;
	_Bool HasCentralNodeChild :1;
	_Bool WantCloseAll :1;
	_Bool WantLockSizeOnce :1;
	_Bool WantMouseMove :1;
	_Bool WantHiddenTabBarUpdate :1;
	_Bool WantHiddenTabBarToggle :1;
};
struct ImGuiWindowDockStyle
{
    ImU32 Colors[ImGuiWindowDockStyleCol_COUNT];
};
typedef struct ImVector_ImGuiDockRequest {int Size;int Capacity;ImGuiDockRequest* Data;} ImVector_ImGuiDockRequest;
typedef struct ImVector_ImGuiDockNodeSettings {int Size;int Capacity;ImGuiDockNodeSettings* Data;} ImVector_ImGuiDockNodeSettings;
struct ImGuiDockContext
{
    ImGuiStorage Nodes;
    ImVector_ImGuiDockRequest Requests;
    ImVector_ImGuiDockNodeSettings NodesSettings;
	_Bool WantFullRebuild;
};
typedef struct ImGuiViewportP ImGuiViewportP;
struct ImGuiViewportP
{
    ImGuiViewport _ImGuiViewport;
    ImGuiWindow* Window;
    int Idx;
    int LastFrameActive;
    int LastFocusedStampCount;
    ImGuiID LastNameHash;
    ImVec2 LastPos;
    ImVec2 LastSize;
    float Alpha;
    float LastAlpha;
	_Bool LastFocusedHadNavWindow;
    short PlatformMonitor;
    int BgFgDrawListsLastFrame[2];
    ImDrawList* BgFgDrawLists[2];
    ImDrawData DrawDataP;
    ImDrawDataBuilder DrawDataBuilder;
    ImVec2 LastPlatformPos;
    ImVec2 LastPlatformSize;
    ImVec2 LastRendererSize;
    ImVec2 WorkInsetMin;
    ImVec2 WorkInsetMax;
    ImVec2 BuildWorkInsetMin;
    ImVec2 BuildWorkInsetMax;
};
struct ImGuiWindowSettings
{
    ImGuiID ID;
    ImVec2ih Pos;
    ImVec2ih Size;
    ImVec2ih ViewportPos;
    ImGuiID ViewportId;
    ImGuiID DockId;
    ImGuiID ClassId;
    short DockOrder;
	_Bool Collapsed;
	_Bool IsChild;
	_Bool WantApply;
	_Bool WantDelete;
};
struct ImGuiSettingsHandler
{
    const char* TypeName;
    ImGuiID TypeHash;
    void (*ClearAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*ReadInitFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void* (*ReadOpenFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, const char* name);
    void (*ReadLineFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, void* entry, const char* line);
    void (*ApplyAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*WriteAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, ImGuiTextBuffer* out_buf);
    void* UserData;
};
struct ImGuiLocEntry
{
    ImGuiLocKey Key;
    const char* Text;
};
typedef void (*ImGuiErrorCallback)(ImGuiContext* ctx, void* user_data, const char* msg);
typedef struct ImGuiDebugAllocEntry ImGuiDebugAllocEntry;
struct ImGuiDebugAllocEntry
{
    int FrameCount;
    ImS16 AllocCount;
    ImS16 FreeCount;
};
typedef struct ImGuiDebugAllocInfo ImGuiDebugAllocInfo;
struct ImGuiDebugAllocInfo
{
    int TotalAllocCount;
    int TotalFreeCount;
    ImS16 LastEntriesIdx;
    ImGuiDebugAllocEntry LastEntriesBuf[6];
};
struct ImGuiMetricsConfig
{
	_Bool ShowDebugLog;
	_Bool ShowIDStackTool;
	_Bool ShowWindowsRects;
	_Bool ShowWindowsBeginOrder;
	_Bool ShowTablesRects;
	_Bool ShowDrawCmdMesh;
	_Bool ShowDrawCmdBoundingBoxes;
	_Bool ShowTextEncodingViewer;
	_Bool ShowDockingNodes;
    int ShowWindowsRectsType;
    int ShowTablesRectsType;
    int HighlightMonitorIdx;
    ImGuiID HighlightViewportID;
};
typedef struct ImGuiStackLevelInfo ImGuiStackLevelInfo;
struct ImGuiStackLevelInfo
{
    ImGuiID ID;
    ImS8 QueryFrameCount;
	_Bool QuerySuccess;
    ImGuiDataType DataType : 8;
    char Desc[57];
};
typedef struct ImGuiIDStackTool ImGuiIDStackTool;
typedef struct ImVector_ImGuiStackLevelInfo {int Size;int Capacity;ImGuiStackLevelInfo* Data;} ImVector_ImGuiStackLevelInfo;
struct ImGuiIDStackTool
{
    int LastActiveFrame;
    int StackLevel;
    ImGuiID QueryId;
    ImVector_ImGuiStackLevelInfo Results;
	_Bool CopyToClipboardOnCtrlC;
    float CopyToClipboardLastTime;
    ImGuiTextBuffer ResultPathBuf;
};
typedef void (*ImGuiContextHookCallback)(ImGuiContext* ctx, ImGuiContextHook* hook);
struct ImGuiContextHook
{
    ImGuiID HookId;
    ImGuiContextHookType Type;
    ImGuiID Owner;
    ImGuiContextHookCallback Callback;
    void* UserData;
};
typedef struct ImVector_ImGuiInputEvent {int Size;int Capacity;ImGuiInputEvent* Data;} ImVector_ImGuiInputEvent;
typedef struct ImVector_ImGuiWindowStackData {int Size;int Capacity;ImGuiWindowStackData* Data;} ImVector_ImGuiWindowStackData;
typedef struct ImVector_ImGuiColorMod {int Size;int Capacity;ImGuiColorMod* Data;} ImVector_ImGuiColorMod;
typedef struct ImVector_ImGuiStyleMod {int Size;int Capacity;ImGuiStyleMod* Data;} ImVector_ImGuiStyleMod;
typedef struct ImVector_ImGuiFocusScopeData {int Size;int Capacity;ImGuiFocusScopeData* Data;} ImVector_ImGuiFocusScopeData;
typedef struct ImVector_ImGuiItemFlags {int Size;int Capacity;ImGuiItemFlags* Data;} ImVector_ImGuiItemFlags;
typedef struct ImVector_ImGuiGroupData {int Size;int Capacity;ImGuiGroupData* Data;} ImVector_ImGuiGroupData;
typedef struct ImVector_ImGuiPopupData {int Size;int Capacity;ImGuiPopupData* Data;} ImVector_ImGuiPopupData;
typedef struct ImVector_ImGuiTreeNodeStackData {int Size;int Capacity;ImGuiTreeNodeStackData* Data;} ImVector_ImGuiTreeNodeStackData;
typedef struct ImVector_ImGuiViewportPPtr {int Size;int Capacity;ImGuiViewportP** Data;} ImVector_ImGuiViewportPPtr;
typedef struct ImVector_unsigned_char {int Size;int Capacity;unsigned char* Data;} ImVector_unsigned_char;
typedef struct ImVector_ImGuiListClipperData {int Size;int Capacity;ImGuiListClipperData* Data;} ImVector_ImGuiListClipperData;
typedef struct ImVector_ImGuiTableTempData {int Size;int Capacity;ImGuiTableTempData* Data;} ImVector_ImGuiTableTempData;
typedef struct ImVector_ImGuiTable {int Size;int Capacity;ImGuiTable* Data;} ImVector_ImGuiTable;
typedef struct ImPool_ImGuiTable {ImVector_ImGuiTable Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTable;
typedef struct ImVector_ImGuiTabBar {int Size;int Capacity;ImGuiTabBar* Data;} ImVector_ImGuiTabBar;
typedef struct ImPool_ImGuiTabBar {ImVector_ImGuiTabBar Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTabBar;
typedef struct ImVector_ImGuiPtrOrIndex {int Size;int Capacity;ImGuiPtrOrIndex* Data;} ImVector_ImGuiPtrOrIndex;
typedef struct ImVector_ImGuiShrinkWidthItem {int Size;int Capacity;ImGuiShrinkWidthItem* Data;} ImVector_ImGuiShrinkWidthItem;
typedef struct ImVector_ImGuiMultiSelectTempData {int Size;int Capacity;ImGuiMultiSelectTempData* Data;} ImVector_ImGuiMultiSelectTempData;
typedef struct ImVector_ImGuiMultiSelectState {int Size;int Capacity;ImGuiMultiSelectState* Data;} ImVector_ImGuiMultiSelectState;
typedef struct ImPool_ImGuiMultiSelectState {ImVector_ImGuiMultiSelectState Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiMultiSelectState;
typedef struct ImVector_ImGuiID {int Size;int Capacity;ImGuiID* Data;} ImVector_ImGuiID;
typedef struct ImVector_ImGuiSettingsHandler {int Size;int Capacity;ImGuiSettingsHandler* Data;} ImVector_ImGuiSettingsHandler;
typedef struct ImChunkStream_ImGuiWindowSettings {ImVector_char Buf;} ImChunkStream_ImGuiWindowSettings;
typedef struct ImChunkStream_ImGuiTableSettings {ImVector_char Buf;} ImChunkStream_ImGuiTableSettings;
typedef struct ImVector_ImGuiContextHook {int Size;int Capacity;ImGuiContextHook* Data;} ImVector_ImGuiContextHook;
struct ImGuiContext
{
	_Bool Initialized;
	_Bool FontAtlasOwnedByContext;
    ImGuiIO IO;
    ImGuiPlatformIO PlatformIO;
    ImGuiStyle Style;
    ImGuiConfigFlags ConfigFlagsCurrFrame;
    ImGuiConfigFlags ConfigFlagsLastFrame;
    ImFont* Font;
    float FontSize;
    float FontBaseSize;
    float FontScale;
    float CurrentDpiScale;
    ImDrawListSharedData DrawListSharedData;
    double Time;
    int FrameCount;
    int FrameCountEnded;
    int FrameCountPlatformEnded;
    int FrameCountRendered;
    ImGuiID WithinEndChildID;
	_Bool WithinFrameScope;
	_Bool WithinFrameScopeWithImplicitWindow;
	_Bool GcCompactAll;
	_Bool TestEngineHookItems;
    void* TestEngine;
    char ContextName[16];
    ImVector_ImGuiInputEvent InputEventsQueue;
    ImVector_ImGuiInputEvent InputEventsTrail;
    ImGuiMouseSource InputEventsNextMouseSource;
    ImU32 InputEventsNextEventId;
    ImVector_ImGuiWindowPtr Windows;
    ImVector_ImGuiWindowPtr WindowsFocusOrder;
    ImVector_ImGuiWindowPtr WindowsTempSortBuffer;
    ImVector_ImGuiWindowStackData CurrentWindowStack;
    ImGuiStorage WindowsById;
    int WindowsActiveCount;
    float WindowsBorderHoverPadding;
    ImGuiID DebugBreakInWindow;
    ImGuiWindow* CurrentWindow;
    ImGuiWindow* HoveredWindow;
    ImGuiWindow* HoveredWindowUnderMovingWindow;
    ImGuiWindow* HoveredWindowBeforeClear;
    ImGuiWindow* MovingWindow;
    ImGuiWindow* WheelingWindow;
    ImVec2 WheelingWindowRefMousePos;
    int WheelingWindowStartFrame;
    int WheelingWindowScrolledFrame;
    float WheelingWindowReleaseTimer;
    ImVec2 WheelingWindowWheelRemainder;
    ImVec2 WheelingAxisAvg;
    ImGuiID DebugDrawIdConflicts;
    ImGuiID DebugHookIdInfo;
    ImGuiID HoveredId;
    ImGuiID HoveredIdPreviousFrame;
    int HoveredIdPreviousFrameItemCount;
    float HoveredIdTimer;
    float HoveredIdNotActiveTimer;
	_Bool HoveredIdAllowOverlap;
	_Bool HoveredIdIsDisabled;
	_Bool ItemUnclipByLog;
    ImGuiID ActiveId;
    ImGuiID ActiveIdIsAlive;
    float ActiveIdTimer;
	_Bool ActiveIdIsJustActivated;
	_Bool ActiveIdAllowOverlap;
	_Bool ActiveIdNoClearOnFocusLoss;
	_Bool ActiveIdHasBeenPressedBefore;
	_Bool ActiveIdHasBeenEditedBefore;
	_Bool ActiveIdHasBeenEditedThisFrame;
	_Bool ActiveIdFromShortcut;
    int ActiveIdMouseButton : 8;
    ImVec2 ActiveIdClickOffset;
    ImGuiWindow* ActiveIdWindow;
    ImGuiInputSource ActiveIdSource;
    ImGuiID ActiveIdPreviousFrame;
    ImGuiDeactivatedItemData DeactivatedItemData;
    ImGuiDataTypeStorage ActiveIdValueOnActivation;
    ImGuiID LastActiveId;
    float LastActiveIdTimer;
    double LastKeyModsChangeTime;
    double LastKeyModsChangeFromNoneTime;
    double LastKeyboardKeyPressTime;
    ImBitArrayForNamedKeys KeysMayBeCharInput;
    ImGuiKeyOwnerData KeysOwnerData[ImGuiKey_NamedKey_COUNT];
    ImGuiKeyRoutingTable KeysRoutingTable;
    ImU32 ActiveIdUsingNavDirMask;
	_Bool ActiveIdUsingAllKeyboardKeys;
    ImGuiKeyChord DebugBreakInShortcutRouting;
    ImGuiID CurrentFocusScopeId;
    ImGuiItemFlags CurrentItemFlags;
    ImGuiID DebugLocateId;
    ImGuiNextItemData NextItemData;
    ImGuiLastItemData LastItemData;
    ImGuiNextWindowData NextWindowData;
	_Bool DebugShowGroupRects;
    ImGuiCol DebugFlashStyleColorIdx;
    ImVector_ImGuiColorMod ColorStack;
    ImVector_ImGuiStyleMod StyleVarStack;
    ImVector_ImFontPtr FontStack;
    ImVector_ImGuiFocusScopeData FocusScopeStack;
    ImVector_ImGuiItemFlags ItemFlagsStack;
    ImVector_ImGuiGroupData GroupStack;
    ImVector_ImGuiPopupData OpenPopupStack;
    ImVector_ImGuiPopupData BeginPopupStack;
    ImVector_ImGuiTreeNodeStackData TreeNodeStack;
    ImVector_ImGuiViewportPPtr Viewports;
    ImGuiViewportP* CurrentViewport;
    ImGuiViewportP* MouseViewport;
    ImGuiViewportP* MouseLastHoveredViewport;
    ImGuiID PlatformLastFocusedViewportId;
    ImGuiPlatformMonitor FallbackMonitor;
    ImRect PlatformMonitorsFullWorkRect;
    int ViewportCreatedCount;
    int PlatformWindowsCreatedCount;
    int ViewportFocusedStampCount;
	_Bool NavCursorVisible;
	_Bool NavHighlightItemUnderNav;
	_Bool NavMousePosDirty;
	_Bool NavIdIsAlive;
    ImGuiID NavId;
    ImGuiWindow* NavWindow;
    ImGuiID NavFocusScopeId;
    ImGuiNavLayer NavLayer;
    ImGuiID NavActivateId;
    ImGuiID NavActivateDownId;
    ImGuiID NavActivatePressedId;
    ImGuiActivateFlags NavActivateFlags;
    ImVector_ImGuiFocusScopeData NavFocusRoute;
    ImGuiID NavHighlightActivatedId;
    float NavHighlightActivatedTimer;
    ImGuiID NavNextActivateId;
    ImGuiActivateFlags NavNextActivateFlags;
    ImGuiInputSource NavInputSource;
    ImGuiSelectionUserData NavLastValidSelectionUserData;
    ImS8 NavCursorHideFrames;
	_Bool NavAnyRequest;
	_Bool NavInitRequest;
	_Bool NavInitRequestFromMove;
    ImGuiNavItemData NavInitResult;
	_Bool NavMoveSubmitted;
	_Bool NavMoveScoringItems;
	_Bool NavMoveForwardToNextFrame;
    ImGuiNavMoveFlags NavMoveFlags;
    ImGuiScrollFlags NavMoveScrollFlags;
    ImGuiKeyChord NavMoveKeyMods;
    ImGuiDir NavMoveDir;
    ImGuiDir NavMoveDirForDebug;
    ImGuiDir NavMoveClipDir;
    ImRect NavScoringRect;
    ImRect NavScoringNoClipRect;
    int NavScoringDebugCount;
    int NavTabbingDir;
    int NavTabbingCounter;
    ImGuiNavItemData NavMoveResultLocal;
    ImGuiNavItemData NavMoveResultLocalVisible;
    ImGuiNavItemData NavMoveResultOther;
    ImGuiNavItemData NavTabbingResultFirst;
    ImGuiID NavJustMovedFromFocusScopeId;
    ImGuiID NavJustMovedToId;
    ImGuiID NavJustMovedToFocusScopeId;
    ImGuiKeyChord NavJustMovedToKeyMods;
	_Bool NavJustMovedToIsTabbing;
	_Bool NavJustMovedToHasSelectionData;
    ImGuiKeyChord ConfigNavWindowingKeyNext;
    ImGuiKeyChord ConfigNavWindowingKeyPrev;
    ImGuiWindow* NavWindowingTarget;
    ImGuiWindow* NavWindowingTargetAnim;
    ImGuiWindow* NavWindowingListWindow;
    float NavWindowingTimer;
    float NavWindowingHighlightAlpha;
	_Bool NavWindowingToggleLayer;
    ImGuiKey NavWindowingToggleKey;
    ImVec2 NavWindowingAccumDeltaPos;
    ImVec2 NavWindowingAccumDeltaSize;
    float DimBgRatio;
	_Bool DragDropActive;
	_Bool DragDropWithinSource;
	_Bool DragDropWithinTarget;
    ImGuiDragDropFlags DragDropSourceFlags;
    int DragDropSourceFrameCount;
    int DragDropMouseButton;
    ImGuiPayload DragDropPayload;
    ImRect DragDropTargetRect;
    ImRect DragDropTargetClipRect;
    ImGuiID DragDropTargetId;
    ImGuiDragDropFlags DragDropAcceptFlags;
    float DragDropAcceptIdCurrRectSurface;
    ImGuiID DragDropAcceptIdCurr;
    ImGuiID DragDropAcceptIdPrev;
    int DragDropAcceptFrameCount;
    ImGuiID DragDropHoldJustPressedId;
    ImVector_unsigned_char DragDropPayloadBufHeap;
    unsigned char DragDropPayloadBufLocal[16];
    int ClipperTempDataStacked;
    ImVector_ImGuiListClipperData ClipperTempData;
    ImGuiTable* CurrentTable;
    ImGuiID DebugBreakInTable;
    int TablesTempDataStacked;
    ImVector_ImGuiTableTempData TablesTempData;
    ImPool_ImGuiTable Tables;
    ImVector_float TablesLastTimeActive;
    ImVector_ImDrawChannel DrawChannelsTempMergeBuffer;
    ImGuiTabBar* CurrentTabBar;
    ImPool_ImGuiTabBar TabBars;
    ImVector_ImGuiPtrOrIndex CurrentTabBarStack;
    ImVector_ImGuiShrinkWidthItem ShrinkWidthBuffer;
    ImGuiBoxSelectState BoxSelectState;
    ImGuiMultiSelectTempData* CurrentMultiSelect;
    int MultiSelectTempDataStacked;
    ImVector_ImGuiMultiSelectTempData MultiSelectTempData;
    ImPool_ImGuiMultiSelectState MultiSelectStorage;
    ImGuiID HoverItemDelayId;
    ImGuiID HoverItemDelayIdPreviousFrame;
    float HoverItemDelayTimer;
    float HoverItemDelayClearTimer;
    ImGuiID HoverItemUnlockedStationaryId;
    ImGuiID HoverWindowUnlockedStationaryId;
    ImGuiMouseCursor MouseCursor;
    float MouseStationaryTimer;
    ImVec2 MouseLastValidPos;
    ImGuiInputTextState InputTextState;
    ImGuiInputTextDeactivatedState InputTextDeactivatedState;
    ImFont InputTextPasswordFont;
    ImGuiID TempInputId;
    ImGuiDataTypeStorage DataTypeZeroValue;
    int BeginMenuDepth;
    int BeginComboDepth;
    ImGuiColorEditFlags ColorEditOptions;
    ImGuiID ColorEditCurrentID;
    ImGuiID ColorEditSavedID;
    float ColorEditSavedHue;
    float ColorEditSavedSat;
    ImU32 ColorEditSavedColor;
    ImVec4 ColorPickerRef;
    ImGuiComboPreviewData ComboPreviewData;
    ImRect WindowResizeBorderExpectedRect;
	_Bool WindowResizeRelativeMode;
    short ScrollbarSeekMode;
    float ScrollbarClickDeltaToGrabCenter;
    float SliderGrabClickOffset;
    float SliderCurrentAccum;
	_Bool SliderCurrentAccumDirty;
	_Bool DragCurrentAccumDirty;
    float DragCurrentAccum;
    float DragSpeedDefaultRatio;
    float DisabledAlphaBackup;
    short DisabledStackSize;
    short TooltipOverrideCount;
    ImGuiWindow* TooltipPreviousWindow;
    ImVector_char ClipboardHandlerData;
    ImVector_ImGuiID MenusIdSubmittedThisFrame;
    ImGuiTypingSelectState TypingSelectState;
    ImGuiPlatformImeData PlatformImeData;
    ImGuiPlatformImeData PlatformImeDataPrev;
    ImGuiID PlatformImeViewport;
    ImGuiDockContext DockContext;
    void (*DockNodeWindowMenuHandler)(ImGuiContext* ctx, ImGuiDockNode* node, ImGuiTabBar* tab_bar);
	_Bool SettingsLoaded;
    float SettingsDirtyTimer;
    ImGuiTextBuffer SettingsIniData;
    ImVector_ImGuiSettingsHandler SettingsHandlers;
    ImChunkStream_ImGuiWindowSettings SettingsWindows;
    ImChunkStream_ImGuiTableSettings SettingsTables;
    ImVector_ImGuiContextHook Hooks;
    ImGuiID HookIdNext;
    const char* LocalizationTable[ImGuiLocKey_COUNT];
	_Bool LogEnabled;
    ImGuiLogFlags LogFlags;
    ImGuiWindow* LogWindow;
    ImFileHandle LogFile;
    ImGuiTextBuffer LogBuffer;
    const char* LogNextPrefix;
    const char* LogNextSuffix;
    float LogLinePosY;
	_Bool LogLineFirstItem;
    int LogDepthRef;
    int LogDepthToExpand;
    int LogDepthToExpandDefault;
    ImGuiErrorCallback ErrorCallback;
    void* ErrorCallbackUserData;
    ImVec2 ErrorTooltipLockedPos;
	_Bool ErrorFirst;
    int ErrorCountCurrentFrame;
    ImGuiErrorRecoveryState StackSizesInNewFrame;
    ImGuiErrorRecoveryState*StackSizesInBeginForCurrentWindow;
    int DebugDrawIdConflictsCount;
    ImGuiDebugLogFlags DebugLogFlags;
    ImGuiTextBuffer DebugLogBuf;
    ImGuiTextIndex DebugLogIndex;
    int DebugLogSkippedErrors;
    ImGuiDebugLogFlags DebugLogAutoDisableFlags;
    ImU8 DebugLogAutoDisableFrames;
    ImU8 DebugLocateFrames;
	_Bool DebugBreakInLocateId;
    ImGuiKeyChord DebugBreakKeyChord;
    ImS8 DebugBeginReturnValueCullDepth;
	_Bool DebugItemPickerActive;
    ImU8 DebugItemPickerMouseButton;
    ImGuiID DebugItemPickerBreakId;
    float DebugFlashStyleColorTime;
    ImVec4 DebugFlashStyleColorBackup;
    ImGuiMetricsConfig DebugMetricsConfig;
    ImGuiIDStackTool DebugIDStackTool;
    ImGuiDebugAllocInfo DebugAllocInfo;
    ImGuiDockNode* DebugHoveredDockNode;
    float FramerateSecPerFrame[60];
    int FramerateSecPerFrameIdx;
    int FramerateSecPerFrameCount;
    float FramerateSecPerFrameAccum;
    int WantCaptureMouseNextFrame;
    int WantCaptureKeyboardNextFrame;
    int WantTextInputNextFrame;
    ImVector_char TempBuffer;
    char TempKeychordName[64];
};
struct ImGuiWindowTempData
{
    ImVec2 CursorPos;
    ImVec2 CursorPosPrevLine;
    ImVec2 CursorStartPos;
    ImVec2 CursorMaxPos;
    ImVec2 IdealMaxPos;
    ImVec2 CurrLineSize;
    ImVec2 PrevLineSize;
    float CurrLineTextBaseOffset;
    float PrevLineTextBaseOffset;
	_Bool IsSameLine;
	_Bool IsSetPos;
    ImVec1 Indent;
    ImVec1 ColumnsOffset;
    ImVec1 GroupOffset;
    ImVec2 CursorStartPosLossyness;
    ImGuiNavLayer NavLayerCurrent;
    short NavLayersActiveMask;
    short NavLayersActiveMaskNext;
	_Bool NavIsScrollPushableX;
	_Bool NavHideHighlightOneFrame;
	_Bool NavWindowHasScrollY;
	_Bool MenuBarAppending;
    ImVec2 MenuBarOffset;
    ImGuiMenuColumns MenuColumns;
    int TreeDepth;
    ImU32 TreeHasStackDataDepthMask;
    ImVector_ImGuiWindowPtr ChildWindows;
    ImGuiStorage* StateStorage;
    ImGuiOldColumns* CurrentColumns;
    int CurrentTableIdx;
    ImGuiLayoutType LayoutType;
    ImGuiLayoutType ParentLayoutType;
    ImU32 ModalDimBgColor;
    ImGuiItemStatusFlags WindowItemStatusFlags;
    ImGuiItemStatusFlags ChildItemStatusFlags;
    ImGuiItemStatusFlags DockTabItemStatusFlags;
    ImRect DockTabItemRect;
    float ItemWidth;
    float TextWrapPos;
    ImVector_float ItemWidthStack;
    ImVector_float TextWrapPosStack;
};
typedef struct ImVector_ImGuiOldColumns {int Size;int Capacity;ImGuiOldColumns* Data;} ImVector_ImGuiOldColumns;
struct ImGuiWindow
{
    ImGuiContext* Ctx;
    char* Name;
    ImGuiID ID;
    ImGuiWindowFlags Flags, FlagsPreviousFrame;
    ImGuiChildFlags ChildFlags;
    ImGuiWindowClass WindowClass;
    ImGuiViewportP* Viewport;
    ImGuiID ViewportId;
    ImVec2 ViewportPos;
    int ViewportAllowPlatformMonitorExtend;
    ImVec2 Pos;
    ImVec2 Size;
    ImVec2 SizeFull;
    ImVec2 ContentSize;
    ImVec2 ContentSizeIdeal;
    ImVec2 ContentSizeExplicit;
    ImVec2 WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    float TitleBarHeight, MenuBarHeight;
    float DecoOuterSizeX1, DecoOuterSizeY1;
    float DecoOuterSizeX2, DecoOuterSizeY2;
    float DecoInnerSizeX1, DecoInnerSizeY1;
    int NameBufLen;
    ImGuiID MoveId;
    ImGuiID TabId;
    ImGuiID ChildId;
    ImGuiID PopupId;
    ImVec2 Scroll;
    ImVec2 ScrollMax;
    ImVec2 ScrollTarget;
    ImVec2 ScrollTargetCenterRatio;
    ImVec2 ScrollTargetEdgeSnapDist;
    ImVec2 ScrollbarSizes;
	_Bool ScrollbarX, ScrollbarY;
	_Bool ScrollbarXStabilizeEnabled;
    ImU8 ScrollbarXStabilizeToggledHistory;
	_Bool ViewportOwned;
	_Bool Active;
	_Bool WasActive;
	_Bool WriteAccessed;
	_Bool Collapsed;
	_Bool WantCollapseToggle;
	_Bool SkipItems;
	_Bool SkipRefresh;
	_Bool Appearing;
	_Bool Hidden;
	_Bool IsFallbackWindow;
	_Bool IsExplicitChild;
	_Bool HasCloseButton;
    signed char ResizeBorderHovered;
    signed char ResizeBorderHeld;
    short BeginCount;
    short BeginCountPreviousFrame;
    short BeginOrderWithinParent;
    short BeginOrderWithinContext;
    short FocusOrder;
    ImS8 AutoFitFramesX, AutoFitFramesY;
	_Bool AutoFitOnlyGrows;
    ImGuiDir AutoPosLastDirection;
    ImS8 HiddenFramesCanSkipItems;
    ImS8 HiddenFramesCannotSkipItems;
    ImS8 HiddenFramesForRenderOnly;
    ImS8 DisableInputsFrames;
    ImGuiCond SetWindowPosAllowFlags : 8;
    ImGuiCond SetWindowSizeAllowFlags : 8;
    ImGuiCond SetWindowCollapsedAllowFlags : 8;
    ImGuiCond SetWindowDockAllowFlags : 8;
    ImVec2 SetWindowPosVal;
    ImVec2 SetWindowPosPivot;
    ImVector_ImGuiID IDStack;
    ImGuiWindowTempData DC;
    ImRect OuterRectClipped;
    ImRect InnerRect;
    ImRect InnerClipRect;
    ImRect WorkRect;
    ImRect ParentWorkRect;
    ImRect ClipRect;
    ImRect ContentRegionRect;
    ImVec2ih HitTestHoleSize;
    ImVec2ih HitTestHoleOffset;
    int LastFrameActive;
    int LastFrameJustFocused;
    float LastTimeActive;
    float ItemWidthDefault;
    ImGuiStorage StateStorage;
    ImVector_ImGuiOldColumns ColumnsStorage;
    float FontWindowScale;
    float FontWindowScaleParents;
    float FontDpiScale;
    float FontRefSize;
    int SettingsOffset;
    ImDrawList* DrawList;
    ImDrawList DrawListInst;
    ImGuiWindow* ParentWindow;
    ImGuiWindow* ParentWindowInBeginStack;
    ImGuiWindow* RootWindow;
    ImGuiWindow* RootWindowPopupTree;
    ImGuiWindow* RootWindowDockTree;
    ImGuiWindow* RootWindowForTitleBarHighlight;
    ImGuiWindow* RootWindowForNav;
    ImGuiWindow* ParentWindowForFocusRoute;
    ImGuiWindow* NavLastChildNavWindow;
    ImGuiID NavLastIds[ImGuiNavLayer_COUNT];
    ImRect NavRectRel[ImGuiNavLayer_COUNT];
    ImVec2 NavPreferredScoringPosRel[ImGuiNavLayer_COUNT];
    ImGuiID NavRootFocusScopeId;
    int MemoryDrawListIdxCapacity;
    int MemoryDrawListVtxCapacity;
	_Bool MemoryCompacted;
	_Bool DockIsActive :1;
	_Bool DockNodeIsVisible :1;
	_Bool DockTabIsVisible :1;
	_Bool DockTabWantClose :1;
    short DockOrder;
    ImGuiWindowDockStyle DockStyle;
    ImGuiDockNode* DockNode;
    ImGuiDockNode* DockNodeAsHost;
    ImGuiID DockId;
};
struct ImGuiTabItem
{
    ImGuiID ID;
    ImGuiTabItemFlags Flags;
    ImGuiWindow* Window;
    int LastFrameVisible;
    int LastFrameSelected;
    float Offset;
    float Width;
    float ContentWidth;
    float RequestedWidth;
    ImS32 NameOffset;
    ImS16 BeginOrder;
    ImS16 IndexDuringLayout;
	_Bool WantClose;
};
typedef struct ImVector_ImGuiTabItem {int Size;int Capacity;ImGuiTabItem* Data;} ImVector_ImGuiTabItem;
struct ImGuiTabBar
{
    ImGuiWindow* Window;
    ImVector_ImGuiTabItem Tabs;
    ImGuiTabBarFlags Flags;
    ImGuiID ID;
    ImGuiID SelectedTabId;
    ImGuiID NextSelectedTabId;
    ImGuiID VisibleTabId;
    int CurrFrameVisible;
    int PrevFrameVisible;
    ImRect BarRect;
    float CurrTabsContentsHeight;
    float PrevTabsContentsHeight;
    float WidthAllTabs;
    float WidthAllTabsIdeal;
    float ScrollingAnim;
    float ScrollingTarget;
    float ScrollingTargetDistToVisibility;
    float ScrollingSpeed;
    float ScrollingRectMinX;
    float ScrollingRectMaxX;
    float SeparatorMinX;
    float SeparatorMaxX;
    ImGuiID ReorderRequestTabId;
    ImS16 ReorderRequestOffset;
    ImS8 BeginCount;
	_Bool WantLayout;
	_Bool VisibleTabWasSubmitted;
	_Bool TabsAddedNew;
    ImS16 TabsActiveCount;
    ImS16 LastTabItemIdx;
    float ItemSpacingY;
    ImVec2 FramePadding;
    ImVec2 BackupCursorPos;
    ImGuiTextBuffer TabsNames;
};
typedef ImS16 ImGuiTableColumnIdx;
typedef ImU16 ImGuiTableDrawChannelIdx;
struct ImGuiTableColumn
{
    ImGuiTableColumnFlags Flags;
    float WidthGiven;
    float MinX;
    float MaxX;
    float WidthRequest;
    float WidthAuto;
    float WidthMax;
    float StretchWeight;
    float InitStretchWeightOrWidth;
    ImRect ClipRect;
    ImGuiID UserID;
    float WorkMinX;
    float WorkMaxX;
    float ItemWidth;
    float ContentMaxXFrozen;
    float ContentMaxXUnfrozen;
    float ContentMaxXHeadersUsed;
    float ContentMaxXHeadersIdeal;
    ImS16 NameOffset;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx IndexWithinEnabledSet;
    ImGuiTableColumnIdx PrevEnabledColumn;
    ImGuiTableColumnIdx NextEnabledColumn;
    ImGuiTableColumnIdx SortOrder;
    ImGuiTableDrawChannelIdx DrawChannelCurrent;
    ImGuiTableDrawChannelIdx DrawChannelFrozen;
    ImGuiTableDrawChannelIdx DrawChannelUnfrozen;
	_Bool IsEnabled;
	_Bool IsUserEnabled;
	_Bool IsUserEnabledNextFrame;
	_Bool IsVisibleX;
	_Bool IsVisibleY;
	_Bool IsRequestOutput;
	_Bool IsSkipItems;
	_Bool IsPreserveWidthAuto;
    ImS8 NavLayerCurrent;
    ImU8 AutoFitQueue;
    ImU8 CannotSkipItemsQueue;
    ImU8 SortDirection : 2;
    ImU8 SortDirectionsAvailCount : 2;
    ImU8 SortDirectionsAvailMask : 4;
    ImU8 SortDirectionsAvailList;
};
typedef struct ImGuiTableCellData ImGuiTableCellData;
struct ImGuiTableCellData
{
    ImU32 BgColor;
    ImGuiTableColumnIdx Column;
};
struct ImGuiTableHeaderData
{
    ImGuiTableColumnIdx Index;
    ImU32 TextColor;
    ImU32 BgColor0;
    ImU32 BgColor1;
};
struct ImGuiTableInstanceData
{
    ImGuiID TableInstanceID;
    float LastOuterHeight;
    float LastTopHeadersRowHeight;
    float LastFrozenHeight;
    int HoveredRowLast;
    int HoveredRowNext;
};
typedef struct ImSpan_ImGuiTableColumn {ImGuiTableColumn* Data;ImGuiTableColumn* DataEnd;} ImSpan_ImGuiTableColumn;
typedef struct ImSpan_ImGuiTableColumnIdx {ImGuiTableColumnIdx* Data;ImGuiTableColumnIdx* DataEnd;} ImSpan_ImGuiTableColumnIdx;
typedef struct ImSpan_ImGuiTableCellData {ImGuiTableCellData* Data;ImGuiTableCellData* DataEnd;} ImSpan_ImGuiTableCellData;
typedef struct ImVector_ImGuiTableInstanceData {int Size;int Capacity;ImGuiTableInstanceData* Data;} ImVector_ImGuiTableInstanceData;
typedef struct ImVector_ImGuiTableColumnSortSpecs {int Size;int Capacity;ImGuiTableColumnSortSpecs* Data;} ImVector_ImGuiTableColumnSortSpecs;
struct ImGuiTable
{
    ImGuiID ID;
    ImGuiTableFlags Flags;
    void* RawData;
    ImGuiTableTempData* TempData;
    ImSpan_ImGuiTableColumn Columns;
    ImSpan_ImGuiTableColumnIdx DisplayOrderToIndex;
    ImSpan_ImGuiTableCellData RowCellData;
    ImBitArrayPtr EnabledMaskByDisplayOrder;
    ImBitArrayPtr EnabledMaskByIndex;
    ImBitArrayPtr VisibleMaskByIndex;
    ImGuiTableFlags SettingsLoadedFlags;
    int SettingsOffset;
    int LastFrameActive;
    int ColumnsCount;
    int CurrentRow;
    int CurrentColumn;
    ImS16 InstanceCurrent;
    ImS16 InstanceInteracted;
    float RowPosY1;
    float RowPosY2;
    float RowMinHeight;
    float RowCellPaddingY;
    float RowTextBaseline;
    float RowIndentOffsetX;
    ImGuiTableRowFlags RowFlags : 16;
    ImGuiTableRowFlags LastRowFlags : 16;
    int RowBgColorCounter;
    ImU32 RowBgColor[2];
    ImU32 BorderColorStrong;
    ImU32 BorderColorLight;
    float BorderX1;
    float BorderX2;
    float HostIndentX;
    float MinColumnWidth;
    float OuterPaddingX;
    float CellPaddingX;
    float CellSpacingX1;
    float CellSpacingX2;
    float InnerWidth;
    float ColumnsGivenWidth;
    float ColumnsAutoFitWidth;
    float ColumnsStretchSumWeights;
    float ResizedColumnNextWidth;
    float ResizeLockMinContentsX2;
    float RefScale;
    float AngledHeadersHeight;
    float AngledHeadersSlope;
    ImRect OuterRect;
    ImRect InnerRect;
    ImRect WorkRect;
    ImRect InnerClipRect;
    ImRect BgClipRect;
    ImRect Bg0ClipRectForDrawCmd;
    ImRect Bg2ClipRectForDrawCmd;
    ImRect HostClipRect;
    ImRect HostBackupInnerClipRect;
    ImGuiWindow* OuterWindow;
    ImGuiWindow* InnerWindow;
    ImGuiTextBuffer ColumnsNames;
    ImDrawListSplitter* DrawSplitter;
    ImGuiTableInstanceData InstanceDataFirst;
    ImVector_ImGuiTableInstanceData InstanceDataExtra;
    ImGuiTableColumnSortSpecs SortSpecsSingle;
    ImVector_ImGuiTableColumnSortSpecs SortSpecsMulti;
    ImGuiTableSortSpecs SortSpecs;
    ImGuiTableColumnIdx SortSpecsCount;
    ImGuiTableColumnIdx ColumnsEnabledCount;
    ImGuiTableColumnIdx ColumnsEnabledFixedCount;
    ImGuiTableColumnIdx DeclColumnsCount;
    ImGuiTableColumnIdx AngledHeadersCount;
    ImGuiTableColumnIdx HoveredColumnBody;
    ImGuiTableColumnIdx HoveredColumnBorder;
    ImGuiTableColumnIdx HighlightColumnHeader;
    ImGuiTableColumnIdx AutoFitSingleColumn;
    ImGuiTableColumnIdx ResizedColumn;
    ImGuiTableColumnIdx LastResizedColumn;
    ImGuiTableColumnIdx HeldHeaderColumn;
    ImGuiTableColumnIdx ReorderColumn;
    ImGuiTableColumnIdx ReorderColumnDir;
    ImGuiTableColumnIdx LeftMostEnabledColumn;
    ImGuiTableColumnIdx RightMostEnabledColumn;
    ImGuiTableColumnIdx LeftMostStretchedColumn;
    ImGuiTableColumnIdx RightMostStretchedColumn;
    ImGuiTableColumnIdx ContextPopupColumn;
    ImGuiTableColumnIdx FreezeRowsRequest;
    ImGuiTableColumnIdx FreezeRowsCount;
    ImGuiTableColumnIdx FreezeColumnsRequest;
    ImGuiTableColumnIdx FreezeColumnsCount;
    ImGuiTableColumnIdx RowCellDataCurrent;
    ImGuiTableDrawChannelIdx DummyDrawChannel;
    ImGuiTableDrawChannelIdx Bg2DrawChannelCurrent;
    ImGuiTableDrawChannelIdx Bg2DrawChannelUnfrozen;
    ImS8 NavLayer;
	_Bool IsLayoutLocked;
	_Bool IsInsideRow;
	_Bool IsInitializing;
	_Bool IsSortSpecsDirty;
	_Bool IsUsingHeaders;
	_Bool IsContextPopupOpen;
	_Bool DisableDefaultContextMenu;
	_Bool IsSettingsRequestLoad;
	_Bool IsSettingsDirty;
	_Bool IsDefaultDisplayOrder;
	_Bool IsResetAllRequest;
	_Bool IsResetDisplayOrderRequest;
	_Bool IsUnfrozenRows;
	_Bool IsDefaultSizingPolicy;
	_Bool IsActiveIdAliveBeforeTable;
	_Bool IsActiveIdInTable;
	_Bool HasScrollbarYCurr;
	_Bool HasScrollbarYPrev;
	_Bool MemoryCompacted;
	_Bool HostSkipItems;
};
typedef struct ImVector_ImGuiTableHeaderData {int Size;int Capacity;ImGuiTableHeaderData* Data;} ImVector_ImGuiTableHeaderData;
struct ImGuiTableTempData
{
    int TableIndex;
    float LastTimeActive;
    float AngledHeadersExtraWidth;
    ImVector_ImGuiTableHeaderData AngledHeadersRequests;
    ImVec2 UserOuterSize;
    ImDrawListSplitter DrawSplitter;
    ImRect HostBackupWorkRect;
    ImRect HostBackupParentWorkRect;
    ImVec2 HostBackupPrevLineSize;
    ImVec2 HostBackupCurrLineSize;
    ImVec2 HostBackupCursorMaxPos;
    ImVec1 HostBackupColumnsOffset;
    float HostBackupItemWidth;
    int HostBackupItemWidthStackSize;
};
typedef struct ImGuiTableColumnSettings ImGuiTableColumnSettings;
struct ImGuiTableColumnSettings
{
    float WidthOrWeight;
    ImGuiID UserID;
    ImGuiTableColumnIdx Index;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx SortOrder;
    ImU8 SortDirection : 2;
    ImS8 IsEnabled : 2;
    ImU8 IsStretch : 1;
};
struct ImGuiTableSettings
{
    ImGuiID ID;
    ImGuiTableFlags SaveFlags;
    float RefScale;
    ImGuiTableColumnIdx ColumnsCount;
    ImGuiTableColumnIdx ColumnsCountMax;
	_Bool WantApply;
};
struct ImFontBuilderIO
{
	_Bool (*FontBuilder_Build)(ImFontAtlas* atlas);
};
]]
local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'cimgui_sdl3',
	defs = {
		-- enums

		CIMGUI_INCLUDED = 1,
		IM_UNICODE_CODEPOINT_MAX = 0xffff,
		IMGUI_HAS_DOCK = 1,

		-- functions

		GImGui = [[ImGuiContext* GImGui;]],
		ImVec2_ImVec2_Nil = [[ImVec2* ImVec2_ImVec2_Nil();]],
		ImVec2_destroy = [[void ImVec2_destroy(ImVec2* self);]],
		ImVec2_ImVec2_Float = [[ImVec2* ImVec2_ImVec2_Float(float _x,float _y);]],
		ImVec4_ImVec4_Nil = [[ImVec4* ImVec4_ImVec4_Nil();]],
		ImVec4_destroy = [[void ImVec4_destroy(ImVec4* self);]],
		ImVec4_ImVec4_Float = [[ImVec4* ImVec4_ImVec4_Float(float _x,float _y,float _z,float _w);]],
		igCreateContext = [[ImGuiContext* igCreateContext(ImFontAtlas* shared_font_atlas);]],
		igDestroyContext = [[void igDestroyContext(ImGuiContext* ctx);]],
		igGetCurrentContext = [[ImGuiContext* igGetCurrentContext();]],
		igSetCurrentContext = [[void igSetCurrentContext(ImGuiContext* ctx);]],
		igGetIO = [[ImGuiIO* igGetIO();]],
		igGetPlatformIO_Nil = [[ImGuiPlatformIO* igGetPlatformIO_Nil();]],
		igGetStyle = [[ImGuiStyle* igGetStyle();]],
		igNewFrame = [[void igNewFrame();]],
		igEndFrame = [[void igEndFrame();]],
		igRender = [[void igRender();]],
		igGetDrawData = [[ImDrawData* igGetDrawData();]],
		igShowDemoWindow = [[void igShowDemoWindow( _Bool * p_open);]],
		igShowMetricsWindow = [[void igShowMetricsWindow( _Bool * p_open);]],
		igShowDebugLogWindow = [[void igShowDebugLogWindow( _Bool * p_open);]],
		igShowIDStackToolWindow = [[void igShowIDStackToolWindow( _Bool * p_open);]],
		igShowAboutWindow = [[void igShowAboutWindow( _Bool * p_open);]],
		igShowStyleEditor = [[void igShowStyleEditor(ImGuiStyle* ref);]],
		igShowStyleSelector = [[_Bool igShowStyleSelector(const char* label);]],
		igShowFontSelector = [[void igShowFontSelector(const char* label);]],
		igShowUserGuide = [[void igShowUserGuide();]],
		igGetVersion = [[const char* igGetVersion();]],
		igStyleColorsDark = [[void igStyleColorsDark(ImGuiStyle* dst);]],
		igStyleColorsLight = [[void igStyleColorsLight(ImGuiStyle* dst);]],
		igStyleColorsClassic = [[void igStyleColorsClassic(ImGuiStyle* dst);]],
		igBegin = [[_Bool igBegin(const char* name, _Bool * p_open,ImGuiWindowFlags flags);]],
		igEnd = [[void igEnd();]],
		igBeginChild_Str = [[_Bool igBeginChild_Str(const char* str_id,const ImVec2 size,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);]],
		igBeginChild_ID = [[_Bool igBeginChild_ID(ImGuiID id,const ImVec2 size,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);]],
		igEndChild = [[void igEndChild();]],
		igIsWindowAppearing = [[_Bool igIsWindowAppearing();]],
		igIsWindowCollapsed = [[_Bool igIsWindowCollapsed();]],
		igIsWindowFocused = [[_Bool igIsWindowFocused(ImGuiFocusedFlags flags);]],
		igIsWindowHovered = [[_Bool igIsWindowHovered(ImGuiHoveredFlags flags);]],
		igGetWindowDrawList = [[ImDrawList* igGetWindowDrawList();]],
		igGetWindowDpiScale = [[float igGetWindowDpiScale();]],
		igGetWindowPos = [[void igGetWindowPos(ImVec2 *pOut);]],
		igGetWindowSize = [[void igGetWindowSize(ImVec2 *pOut);]],
		igGetWindowWidth = [[float igGetWindowWidth();]],
		igGetWindowHeight = [[float igGetWindowHeight();]],
		igGetWindowViewport = [[ImGuiViewport* igGetWindowViewport();]],
		igSetNextWindowPos = [[void igSetNextWindowPos(const ImVec2 pos,ImGuiCond cond,const ImVec2 pivot);]],
		igSetNextWindowSize = [[void igSetNextWindowSize(const ImVec2 size,ImGuiCond cond);]],
		igSetNextWindowSizeConstraints = [[void igSetNextWindowSizeConstraints(const ImVec2 size_min,const ImVec2 size_max,ImGuiSizeCallback custom_callback,void* custom_callback_data);]],
		igSetNextWindowContentSize = [[void igSetNextWindowContentSize(const ImVec2 size);]],
		igSetNextWindowCollapsed = [[void igSetNextWindowCollapsed( _Bool collapsed,ImGuiCond cond);]],
		igSetNextWindowFocus = [[void igSetNextWindowFocus();]],
		igSetNextWindowScroll = [[void igSetNextWindowScroll(const ImVec2 scroll);]],
		igSetNextWindowBgAlpha = [[void igSetNextWindowBgAlpha(float alpha);]],
		igSetNextWindowViewport = [[void igSetNextWindowViewport(ImGuiID viewport_id);]],
		igSetWindowPos_Vec2 = [[void igSetWindowPos_Vec2(const ImVec2 pos,ImGuiCond cond);]],
		igSetWindowSize_Vec2 = [[void igSetWindowSize_Vec2(const ImVec2 size,ImGuiCond cond);]],
		igSetWindowCollapsed_Bool = [[void igSetWindowCollapsed_Bool( _Bool collapsed,ImGuiCond cond);]],
		igSetWindowFocus_Nil = [[void igSetWindowFocus_Nil();]],
		igSetWindowFontScale = [[void igSetWindowFontScale(float scale);]],
		igSetWindowPos_Str = [[void igSetWindowPos_Str(const char* name,const ImVec2 pos,ImGuiCond cond);]],
		igSetWindowSize_Str = [[void igSetWindowSize_Str(const char* name,const ImVec2 size,ImGuiCond cond);]],
		igSetWindowCollapsed_Str = [[void igSetWindowCollapsed_Str(const char* name, _Bool collapsed,ImGuiCond cond);]],
		igSetWindowFocus_Str = [[void igSetWindowFocus_Str(const char* name);]],
		igGetScrollX = [[float igGetScrollX();]],
		igGetScrollY = [[float igGetScrollY();]],
		igSetScrollX_Float = [[void igSetScrollX_Float(float scroll_x);]],
		igSetScrollY_Float = [[void igSetScrollY_Float(float scroll_y);]],
		igGetScrollMaxX = [[float igGetScrollMaxX();]],
		igGetScrollMaxY = [[float igGetScrollMaxY();]],
		igSetScrollHereX = [[void igSetScrollHereX(float center_x_ratio);]],
		igSetScrollHereY = [[void igSetScrollHereY(float center_y_ratio);]],
		igSetScrollFromPosX_Float = [[void igSetScrollFromPosX_Float(float local_x,float center_x_ratio);]],
		igSetScrollFromPosY_Float = [[void igSetScrollFromPosY_Float(float local_y,float center_y_ratio);]],
		igPushFont = [[void igPushFont(ImFont* font);]],
		igPopFont = [[void igPopFont();]],
		igPushStyleColor_U32 = [[void igPushStyleColor_U32(ImGuiCol idx,ImU32 col);]],
		igPushStyleColor_Vec4 = [[void igPushStyleColor_Vec4(ImGuiCol idx,const ImVec4 col);]],
		igPopStyleColor = [[void igPopStyleColor(int count);]],
		igPushStyleVar_Float = [[void igPushStyleVar_Float(ImGuiStyleVar idx,float val);]],
		igPushStyleVar_Vec2 = [[void igPushStyleVar_Vec2(ImGuiStyleVar idx,const ImVec2 val);]],
		igPushStyleVarX = [[void igPushStyleVarX(ImGuiStyleVar idx,float val_x);]],
		igPushStyleVarY = [[void igPushStyleVarY(ImGuiStyleVar idx,float val_y);]],
		igPopStyleVar = [[void igPopStyleVar(int count);]],
		igPushItemFlag = [[void igPushItemFlag(ImGuiItemFlags option, _Bool enabled);]],
		igPopItemFlag = [[void igPopItemFlag();]],
		igPushItemWidth = [[void igPushItemWidth(float item_width);]],
		igPopItemWidth = [[void igPopItemWidth();]],
		igSetNextItemWidth = [[void igSetNextItemWidth(float item_width);]],
		igCalcItemWidth = [[float igCalcItemWidth();]],
		igPushTextWrapPos = [[void igPushTextWrapPos(float wrap_local_pos_x);]],
		igPopTextWrapPos = [[void igPopTextWrapPos();]],
		igGetFont = [[ImFont* igGetFont();]],
		igGetFontSize = [[float igGetFontSize();]],
		igGetFontTexUvWhitePixel = [[void igGetFontTexUvWhitePixel(ImVec2 *pOut);]],
		igGetColorU32_Col = [[ImU32 igGetColorU32_Col(ImGuiCol idx,float alpha_mul);]],
		igGetColorU32_Vec4 = [[ImU32 igGetColorU32_Vec4(const ImVec4 col);]],
		igGetColorU32_U32 = [[ImU32 igGetColorU32_U32(ImU32 col,float alpha_mul);]],
		igGetStyleColorVec4 = [[const ImVec4* igGetStyleColorVec4(ImGuiCol idx);]],
		igGetCursorScreenPos = [[void igGetCursorScreenPos(ImVec2 *pOut);]],
		igSetCursorScreenPos = [[void igSetCursorScreenPos(const ImVec2 pos);]],
		igGetContentRegionAvail = [[void igGetContentRegionAvail(ImVec2 *pOut);]],
		igGetCursorPos = [[void igGetCursorPos(ImVec2 *pOut);]],
		igGetCursorPosX = [[float igGetCursorPosX();]],
		igGetCursorPosY = [[float igGetCursorPosY();]],
		igSetCursorPos = [[void igSetCursorPos(const ImVec2 local_pos);]],
		igSetCursorPosX = [[void igSetCursorPosX(float local_x);]],
		igSetCursorPosY = [[void igSetCursorPosY(float local_y);]],
		igGetCursorStartPos = [[void igGetCursorStartPos(ImVec2 *pOut);]],
		igSeparator = [[void igSeparator();]],
		igSameLine = [[void igSameLine(float offset_from_start_x,float spacing);]],
		igNewLine = [[void igNewLine();]],
		igSpacing = [[void igSpacing();]],
		igDummy = [[void igDummy(const ImVec2 size);]],
		igIndent = [[void igIndent(float indent_w);]],
		igUnindent = [[void igUnindent(float indent_w);]],
		igBeginGroup = [[void igBeginGroup();]],
		igEndGroup = [[void igEndGroup();]],
		igAlignTextToFramePadding = [[void igAlignTextToFramePadding();]],
		igGetTextLineHeight = [[float igGetTextLineHeight();]],
		igGetTextLineHeightWithSpacing = [[float igGetTextLineHeightWithSpacing();]],
		igGetFrameHeight = [[float igGetFrameHeight();]],
		igGetFrameHeightWithSpacing = [[float igGetFrameHeightWithSpacing();]],
		igPushID_Str = [[void igPushID_Str(const char* str_id);]],
		igPushID_StrStr = [[void igPushID_StrStr(const char* str_id_begin,const char* str_id_end);]],
		igPushID_Ptr = [[void igPushID_Ptr(const void* ptr_id);]],
		igPushID_Int = [[void igPushID_Int(int int_id);]],
		igPopID = [[void igPopID();]],
		igGetID_Str = [[ImGuiID igGetID_Str(const char* str_id);]],
		igGetID_StrStr = [[ImGuiID igGetID_StrStr(const char* str_id_begin,const char* str_id_end);]],
		igGetID_Ptr = [[ImGuiID igGetID_Ptr(const void* ptr_id);]],
		igGetID_Int = [[ImGuiID igGetID_Int(int int_id);]],
		igTextUnformatted = [[void igTextUnformatted(const char* text,const char* text_end);]],
		igText = [[void igText(const char* fmt,...);]],
		igTextV = [[void igTextV(const char* fmt,va_list args);]],
		igTextColored = [[void igTextColored(const ImVec4 col,const char* fmt,...);]],
		igTextColoredV = [[void igTextColoredV(const ImVec4 col,const char* fmt,va_list args);]],
		igTextDisabled = [[void igTextDisabled(const char* fmt,...);]],
		igTextDisabledV = [[void igTextDisabledV(const char* fmt,va_list args);]],
		igTextWrapped = [[void igTextWrapped(const char* fmt,...);]],
		igTextWrappedV = [[void igTextWrappedV(const char* fmt,va_list args);]],
		igLabelText = [[void igLabelText(const char* label,const char* fmt,...);]],
		igLabelTextV = [[void igLabelTextV(const char* label,const char* fmt,va_list args);]],
		igBulletText = [[void igBulletText(const char* fmt,...);]],
		igBulletTextV = [[void igBulletTextV(const char* fmt,va_list args);]],
		igSeparatorText = [[void igSeparatorText(const char* label);]],
		igButton = [[_Bool igButton(const char* label,const ImVec2 size);]],
		igSmallButton = [[_Bool igSmallButton(const char* label);]],
		igInvisibleButton = [[_Bool igInvisibleButton(const char* str_id,const ImVec2 size,ImGuiButtonFlags flags);]],
		igArrowButton = [[_Bool igArrowButton(const char* str_id,ImGuiDir dir);]],
		igCheckbox = [[_Bool igCheckbox(const char* label, _Bool * v);]],
		igCheckboxFlags_IntPtr = [[_Bool igCheckboxFlags_IntPtr(const char* label,int* flags,int flags_value);]],
		igCheckboxFlags_UintPtr = [[_Bool igCheckboxFlags_UintPtr(const char* label,unsigned int* flags,unsigned int flags_value);]],
		igRadioButton_Bool = [[_Bool igRadioButton_Bool(const char* label, _Bool active);]],
		igRadioButton_IntPtr = [[_Bool igRadioButton_IntPtr(const char* label,int* v,int v_button);]],
		igProgressBar = [[void igProgressBar(float fraction,const ImVec2 size_arg,const char* overlay);]],
		igBullet = [[void igBullet();]],
		igTextLink = [[_Bool igTextLink(const char* label);]],
		igTextLinkOpenURL = [[void igTextLinkOpenURL(const char* label,const char* url);]],
		igImage = [[void igImage(ImTextureID user_texture_id,const ImVec2 image_size,const ImVec2 uv0,const ImVec2 uv1);]],
		igImageWithBg = [[void igImageWithBg(ImTextureID user_texture_id,const ImVec2 image_size,const ImVec2 uv0,const ImVec2 uv1,const ImVec4 bg_col,const ImVec4 tint_col);]],
		igImageButton = [[_Bool igImageButton(const char* str_id,ImTextureID user_texture_id,const ImVec2 image_size,const ImVec2 uv0,const ImVec2 uv1,const ImVec4 bg_col,const ImVec4 tint_col);]],
		igBeginCombo = [[_Bool igBeginCombo(const char* label,const char* preview_value,ImGuiComboFlags flags);]],
		igEndCombo = [[void igEndCombo();]],
		igCombo_Str_arr = [[_Bool igCombo_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int popup_max_height_in_items);]],
		igCombo_Str = [[_Bool igCombo_Str(const char* label,int* current_item,const char* items_separated_by_zeros,int popup_max_height_in_items);]],
		igCombo_FnStrPtr = [[_Bool igCombo_FnStrPtr(const char* label,int* current_item,const char*(*getter)(void* user_data,int idx),void* user_data,int items_count,int popup_max_height_in_items);]],
		igDragFloat = [[_Bool igDragFloat(const char* label,float* v,float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragFloat2 = [[_Bool igDragFloat2(const char* label,float v[2],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragFloat3 = [[_Bool igDragFloat3(const char* label,float v[3],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragFloat4 = [[_Bool igDragFloat4(const char* label,float v[4],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragFloatRange2 = [[_Bool igDragFloatRange2(const char* label,float* v_current_min,float* v_current_max,float v_speed,float v_min,float v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);]],
		igDragInt = [[_Bool igDragInt(const char* label,int* v,float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragInt2 = [[_Bool igDragInt2(const char* label,int v[2],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragInt3 = [[_Bool igDragInt3(const char* label,int v[3],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragInt4 = [[_Bool igDragInt4(const char* label,int v[4],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igDragIntRange2 = [[_Bool igDragIntRange2(const char* label,int* v_current_min,int* v_current_max,float v_speed,int v_min,int v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);]],
		igDragScalar = [[_Bool igDragScalar(const char* label,ImGuiDataType data_type,void* p_data,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igDragScalarN = [[_Bool igDragScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderFloat = [[_Bool igSliderFloat(const char* label,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderFloat2 = [[_Bool igSliderFloat2(const char* label,float v[2],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderFloat3 = [[_Bool igSliderFloat3(const char* label,float v[3],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderFloat4 = [[_Bool igSliderFloat4(const char* label,float v[4],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderAngle = [[_Bool igSliderAngle(const char* label,float* v_rad,float v_degrees_min,float v_degrees_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderInt = [[_Bool igSliderInt(const char* label,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderInt2 = [[_Bool igSliderInt2(const char* label,int v[2],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderInt3 = [[_Bool igSliderInt3(const char* label,int v[3],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderInt4 = [[_Bool igSliderInt4(const char* label,int v[4],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderScalar = [[_Bool igSliderScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderScalarN = [[_Bool igSliderScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igVSliderFloat = [[_Bool igVSliderFloat(const char* label,const ImVec2 size,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);]],
		igVSliderInt = [[_Bool igVSliderInt(const char* label,const ImVec2 size,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);]],
		igVSliderScalar = [[_Bool igVSliderScalar(const char* label,const ImVec2 size,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igInputText = [[_Bool igInputText(const char* label,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);]],
		igInputTextMultiline = [[_Bool igInputTextMultiline(const char* label,char* buf,size_t buf_size,const ImVec2 size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);]],
		igInputTextWithHint = [[_Bool igInputTextWithHint(const char* label,const char* hint,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);]],
		igInputFloat = [[_Bool igInputFloat(const char* label,float* v,float step,float step_fast,const char* format,ImGuiInputTextFlags flags);]],
		igInputFloat2 = [[_Bool igInputFloat2(const char* label,float v[2],const char* format,ImGuiInputTextFlags flags);]],
		igInputFloat3 = [[_Bool igInputFloat3(const char* label,float v[3],const char* format,ImGuiInputTextFlags flags);]],
		igInputFloat4 = [[_Bool igInputFloat4(const char* label,float v[4],const char* format,ImGuiInputTextFlags flags);]],
		igInputInt = [[_Bool igInputInt(const char* label,int* v,int step,int step_fast,ImGuiInputTextFlags flags);]],
		igInputInt2 = [[_Bool igInputInt2(const char* label,int v[2],ImGuiInputTextFlags flags);]],
		igInputInt3 = [[_Bool igInputInt3(const char* label,int v[3],ImGuiInputTextFlags flags);]],
		igInputInt4 = [[_Bool igInputInt4(const char* label,int v[4],ImGuiInputTextFlags flags);]],
		igInputDouble = [[_Bool igInputDouble(const char* label,double* v,double step,double step_fast,const char* format,ImGuiInputTextFlags flags);]],
		igInputScalar = [[_Bool igInputScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);]],
		igInputScalarN = [[_Bool igInputScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);]],
		igColorEdit3 = [[_Bool igColorEdit3(const char* label,float col[3],ImGuiColorEditFlags flags);]],
		igColorEdit4 = [[_Bool igColorEdit4(const char* label,float col[4],ImGuiColorEditFlags flags);]],
		igColorPicker3 = [[_Bool igColorPicker3(const char* label,float col[3],ImGuiColorEditFlags flags);]],
		igColorPicker4 = [[_Bool igColorPicker4(const char* label,float col[4],ImGuiColorEditFlags flags,const float* ref_col);]],
		igColorButton = [[_Bool igColorButton(const char* desc_id,const ImVec4 col,ImGuiColorEditFlags flags,const ImVec2 size);]],
		igSetColorEditOptions = [[void igSetColorEditOptions(ImGuiColorEditFlags flags);]],
		igTreeNode_Str = [[_Bool igTreeNode_Str(const char* label);]],
		igTreeNode_StrStr = [[_Bool igTreeNode_StrStr(const char* str_id,const char* fmt,...);]],
		igTreeNode_Ptr = [[_Bool igTreeNode_Ptr(const void* ptr_id,const char* fmt,...);]],
		igTreeNodeV_Str = [[_Bool igTreeNodeV_Str(const char* str_id,const char* fmt,va_list args);]],
		igTreeNodeV_Ptr = [[_Bool igTreeNodeV_Ptr(const void* ptr_id,const char* fmt,va_list args);]],
		igTreeNodeEx_Str = [[_Bool igTreeNodeEx_Str(const char* label,ImGuiTreeNodeFlags flags);]],
		igTreeNodeEx_StrStr = [[_Bool igTreeNodeEx_StrStr(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,...);]],
		igTreeNodeEx_Ptr = [[_Bool igTreeNodeEx_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,...);]],
		igTreeNodeExV_Str = [[_Bool igTreeNodeExV_Str(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);]],
		igTreeNodeExV_Ptr = [[_Bool igTreeNodeExV_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);]],
		igTreePush_Str = [[void igTreePush_Str(const char* str_id);]],
		igTreePush_Ptr = [[void igTreePush_Ptr(const void* ptr_id);]],
		igTreePop = [[void igTreePop();]],
		igGetTreeNodeToLabelSpacing = [[float igGetTreeNodeToLabelSpacing();]],
		igCollapsingHeader_TreeNodeFlags = [[_Bool igCollapsingHeader_TreeNodeFlags(const char* label,ImGuiTreeNodeFlags flags);]],
		igCollapsingHeader_BoolPtr = [[_Bool igCollapsingHeader_BoolPtr(const char* label, _Bool * p_visible,ImGuiTreeNodeFlags flags);]],
		igSetNextItemOpen = [[void igSetNextItemOpen( _Bool is_open,ImGuiCond cond);]],
		igSetNextItemStorageID = [[void igSetNextItemStorageID(ImGuiID storage_id);]],
		igSelectable_Bool = [[_Bool igSelectable_Bool(const char* label, _Bool selected,ImGuiSelectableFlags flags,const ImVec2 size);]],
		igSelectable_BoolPtr = [[_Bool igSelectable_BoolPtr(const char* label, _Bool * p_selected,ImGuiSelectableFlags flags,const ImVec2 size);]],
		igBeginMultiSelect = [[ImGuiMultiSelectIO* igBeginMultiSelect(ImGuiMultiSelectFlags flags,int selection_size,int items_count);]],
		igEndMultiSelect = [[ImGuiMultiSelectIO* igEndMultiSelect();]],
		igSetNextItemSelectionUserData = [[void igSetNextItemSelectionUserData(ImGuiSelectionUserData selection_user_data);]],
		igIsItemToggledSelection = [[_Bool igIsItemToggledSelection();]],
		igBeginListBox = [[_Bool igBeginListBox(const char* label,const ImVec2 size);]],
		igEndListBox = [[void igEndListBox();]],
		igListBox_Str_arr = [[_Bool igListBox_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int height_in_items);]],
		igListBox_FnStrPtr = [[_Bool igListBox_FnStrPtr(const char* label,int* current_item,const char*(*getter)(void* user_data,int idx),void* user_data,int items_count,int height_in_items);]],
		igPlotLines_FloatPtr = [[void igPlotLines_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size,int stride);]],
		float = [[void igPlotLines_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size);]],
		igPlotHistogram_FloatPtr = [[void igPlotHistogram_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size,int stride);]],
		float = [[void igPlotHistogram_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2 graph_size);]],
		igValue_Bool = [[void igValue_Bool(const char* prefix, _Bool b);]],
		igValue_Int = [[void igValue_Int(const char* prefix,int v);]],
		igValue_Uint = [[void igValue_Uint(const char* prefix,unsigned int v);]],
		igValue_Float = [[void igValue_Float(const char* prefix,float v,const char* float_format);]],
		igBeginMenuBar = [[_Bool igBeginMenuBar();]],
		igEndMenuBar = [[void igEndMenuBar();]],
		igBeginMainMenuBar = [[_Bool igBeginMainMenuBar();]],
		igEndMainMenuBar = [[void igEndMainMenuBar();]],
		igBeginMenu = [[_Bool igBeginMenu(const char* label, _Bool enabled);]],
		igEndMenu = [[void igEndMenu();]],
		igMenuItem_Bool = [[_Bool igMenuItem_Bool(const char* label,const char* shortcut, _Bool selected, _Bool enabled);]],
		igMenuItem_BoolPtr = [[_Bool igMenuItem_BoolPtr(const char* label,const char* shortcut, _Bool * p_selected, _Bool enabled);]],
		igBeginTooltip = [[_Bool igBeginTooltip();]],
		igEndTooltip = [[void igEndTooltip();]],
		igSetTooltip = [[void igSetTooltip(const char* fmt,...);]],
		igSetTooltipV = [[void igSetTooltipV(const char* fmt,va_list args);]],
		igBeginItemTooltip = [[_Bool igBeginItemTooltip();]],
		igSetItemTooltip = [[void igSetItemTooltip(const char* fmt,...);]],
		igSetItemTooltipV = [[void igSetItemTooltipV(const char* fmt,va_list args);]],
		igBeginPopup = [[_Bool igBeginPopup(const char* str_id,ImGuiWindowFlags flags);]],
		igBeginPopupModal = [[_Bool igBeginPopupModal(const char* name, _Bool * p_open,ImGuiWindowFlags flags);]],
		igEndPopup = [[void igEndPopup();]],
		igOpenPopup_Str = [[void igOpenPopup_Str(const char* str_id,ImGuiPopupFlags popup_flags);]],
		igOpenPopup_ID = [[void igOpenPopup_ID(ImGuiID id,ImGuiPopupFlags popup_flags);]],
		igOpenPopupOnItemClick = [[void igOpenPopupOnItemClick(const char* str_id,ImGuiPopupFlags popup_flags);]],
		igCloseCurrentPopup = [[void igCloseCurrentPopup();]],
		igBeginPopupContextItem = [[_Bool igBeginPopupContextItem(const char* str_id,ImGuiPopupFlags popup_flags);]],
		igBeginPopupContextWindow = [[_Bool igBeginPopupContextWindow(const char* str_id,ImGuiPopupFlags popup_flags);]],
		igBeginPopupContextVoid = [[_Bool igBeginPopupContextVoid(const char* str_id,ImGuiPopupFlags popup_flags);]],
		igIsPopupOpen_Str = [[_Bool igIsPopupOpen_Str(const char* str_id,ImGuiPopupFlags flags);]],
		igBeginTable = [[_Bool igBeginTable(const char* str_id,int columns,ImGuiTableFlags flags,const ImVec2 outer_size,float inner_width);]],
		igEndTable = [[void igEndTable();]],
		igTableNextRow = [[void igTableNextRow(ImGuiTableRowFlags row_flags,float min_row_height);]],
		igTableNextColumn = [[_Bool igTableNextColumn();]],
		igTableSetColumnIndex = [[_Bool igTableSetColumnIndex(int column_n);]],
		igTableSetupColumn = [[void igTableSetupColumn(const char* label,ImGuiTableColumnFlags flags,float init_width_or_weight,ImGuiID user_id);]],
		igTableSetupScrollFreeze = [[void igTableSetupScrollFreeze(int cols,int rows);]],
		igTableHeader = [[void igTableHeader(const char* label);]],
		igTableHeadersRow = [[void igTableHeadersRow();]],
		igTableAngledHeadersRow = [[void igTableAngledHeadersRow();]],
		igTableGetSortSpecs = [[ImGuiTableSortSpecs* igTableGetSortSpecs();]],
		igTableGetColumnCount = [[int igTableGetColumnCount();]],
		igTableGetColumnIndex = [[int igTableGetColumnIndex();]],
		igTableGetRowIndex = [[int igTableGetRowIndex();]],
		igTableGetColumnName_Int = [[const char* igTableGetColumnName_Int(int column_n);]],
		igTableGetColumnFlags = [[ImGuiTableColumnFlags igTableGetColumnFlags(int column_n);]],
		igTableSetColumnEnabled = [[void igTableSetColumnEnabled(int column_n, _Bool v);]],
		igTableGetHoveredColumn = [[int igTableGetHoveredColumn();]],
		igTableSetBgColor = [[void igTableSetBgColor(ImGuiTableBgTarget target,ImU32 color,int column_n);]],
		igColumns = [[void igColumns(int count,const char* id, _Bool borders);]],
		igNextColumn = [[void igNextColumn();]],
		igGetColumnIndex = [[int igGetColumnIndex();]],
		igGetColumnWidth = [[float igGetColumnWidth(int column_index);]],
		igSetColumnWidth = [[void igSetColumnWidth(int column_index,float width);]],
		igGetColumnOffset = [[float igGetColumnOffset(int column_index);]],
		igSetColumnOffset = [[void igSetColumnOffset(int column_index,float offset_x);]],
		igGetColumnsCount = [[int igGetColumnsCount();]],
		igBeginTabBar = [[_Bool igBeginTabBar(const char* str_id,ImGuiTabBarFlags flags);]],
		igEndTabBar = [[void igEndTabBar();]],
		igBeginTabItem = [[_Bool igBeginTabItem(const char* label, _Bool * p_open,ImGuiTabItemFlags flags);]],
		igEndTabItem = [[void igEndTabItem();]],
		igTabItemButton = [[_Bool igTabItemButton(const char* label,ImGuiTabItemFlags flags);]],
		igSetTabItemClosed = [[void igSetTabItemClosed(const char* tab_or_docked_window_label);]],
		igDockSpace = [[ImGuiID igDockSpace(ImGuiID dockspace_id,const ImVec2 size,ImGuiDockNodeFlags flags,const ImGuiWindowClass* window_class);]],
		igDockSpaceOverViewport = [[ImGuiID igDockSpaceOverViewport(ImGuiID dockspace_id,const ImGuiViewport* viewport,ImGuiDockNodeFlags flags,const ImGuiWindowClass* window_class);]],
		igSetNextWindowDockID = [[void igSetNextWindowDockID(ImGuiID dock_id,ImGuiCond cond);]],
		igSetNextWindowClass = [[void igSetNextWindowClass(const ImGuiWindowClass* window_class);]],
		igGetWindowDockID = [[ImGuiID igGetWindowDockID();]],
		igIsWindowDocked = [[_Bool igIsWindowDocked();]],
		igLogToTTY = [[void igLogToTTY(int auto_open_depth);]],
		igLogToFile = [[void igLogToFile(int auto_open_depth,const char* filename);]],
		igLogToClipboard = [[void igLogToClipboard(int auto_open_depth);]],
		igLogFinish = [[void igLogFinish();]],
		igLogButtons = [[void igLogButtons();]],
		igLogTextV = [[void igLogTextV(const char* fmt,va_list args);]],
		igBeginDragDropSource = [[_Bool igBeginDragDropSource(ImGuiDragDropFlags flags);]],
		igSetDragDropPayload = [[_Bool igSetDragDropPayload(const char* type,const void* data,size_t sz,ImGuiCond cond);]],
		igEndDragDropSource = [[void igEndDragDropSource();]],
		igBeginDragDropTarget = [[_Bool igBeginDragDropTarget();]],
		igAcceptDragDropPayload = [[const ImGuiPayload* igAcceptDragDropPayload(const char* type,ImGuiDragDropFlags flags);]],
		igEndDragDropTarget = [[void igEndDragDropTarget();]],
		igGetDragDropPayload = [[const ImGuiPayload* igGetDragDropPayload();]],
		igBeginDisabled = [[void igBeginDisabled( _Bool disabled);]],
		igEndDisabled = [[void igEndDisabled();]],
		igPushClipRect = [[void igPushClipRect(const ImVec2 clip_rect_min,const ImVec2 clip_rect_max, _Bool intersect_with_current_clip_rect);]],
		igPopClipRect = [[void igPopClipRect();]],
		igSetItemDefaultFocus = [[void igSetItemDefaultFocus();]],
		igSetKeyboardFocusHere = [[void igSetKeyboardFocusHere(int offset);]],
		igSetNavCursorVisible = [[void igSetNavCursorVisible( _Bool visible);]],
		igSetNextItemAllowOverlap = [[void igSetNextItemAllowOverlap();]],
		igIsItemHovered = [[_Bool igIsItemHovered(ImGuiHoveredFlags flags);]],
		igIsItemActive = [[_Bool igIsItemActive();]],
		igIsItemFocused = [[_Bool igIsItemFocused();]],
		igIsItemClicked = [[_Bool igIsItemClicked(ImGuiMouseButton mouse_button);]],
		igIsItemVisible = [[_Bool igIsItemVisible();]],
		igIsItemEdited = [[_Bool igIsItemEdited();]],
		igIsItemActivated = [[_Bool igIsItemActivated();]],
		igIsItemDeactivated = [[_Bool igIsItemDeactivated();]],
		igIsItemDeactivatedAfterEdit = [[_Bool igIsItemDeactivatedAfterEdit();]],
		igIsItemToggledOpen = [[_Bool igIsItemToggledOpen();]],
		igIsAnyItemHovered = [[_Bool igIsAnyItemHovered();]],
		igIsAnyItemActive = [[_Bool igIsAnyItemActive();]],
		igIsAnyItemFocused = [[_Bool igIsAnyItemFocused();]],
		igGetItemID = [[ImGuiID igGetItemID();]],
		igGetItemRectMin = [[void igGetItemRectMin(ImVec2 *pOut);]],
		igGetItemRectMax = [[void igGetItemRectMax(ImVec2 *pOut);]],
		igGetItemRectSize = [[void igGetItemRectSize(ImVec2 *pOut);]],
		igGetMainViewport = [[ImGuiViewport* igGetMainViewport();]],
		igGetBackgroundDrawList = [[ImDrawList* igGetBackgroundDrawList(ImGuiViewport* viewport);]],
		igGetForegroundDrawList_ViewportPtr = [[ImDrawList* igGetForegroundDrawList_ViewportPtr(ImGuiViewport* viewport);]],
		igIsRectVisible_Nil = [[_Bool igIsRectVisible_Nil(const ImVec2 size);]],
		igIsRectVisible_Vec2 = [[_Bool igIsRectVisible_Vec2(const ImVec2 rect_min,const ImVec2 rect_max);]],
		igGetTime = [[double igGetTime();]],
		igGetFrameCount = [[int igGetFrameCount();]],
		igGetDrawListSharedData = [[ImDrawListSharedData* igGetDrawListSharedData();]],
		igGetStyleColorName = [[const char* igGetStyleColorName(ImGuiCol idx);]],
		igSetStateStorage = [[void igSetStateStorage(ImGuiStorage* storage);]],
		igGetStateStorage = [[ImGuiStorage* igGetStateStorage();]],
		igCalcTextSize = [[void igCalcTextSize(ImVec2 *pOut,const char* text,const char* text_end, _Bool hide_text_after_double_hash,float wrap_width);]],
		igColorConvertU32ToFloat4 = [[void igColorConvertU32ToFloat4(ImVec4 *pOut,ImU32 in);]],
		igColorConvertFloat4ToU32 = [[ImU32 igColorConvertFloat4ToU32(const ImVec4 in);]],
		igColorConvertRGBtoHSV = [[void igColorConvertRGBtoHSV(float r,float g,float b,float* out_h,float* out_s,float* out_v);]],
		igColorConvertHSVtoRGB = [[void igColorConvertHSVtoRGB(float h,float s,float v,float* out_r,float* out_g,float* out_b);]],
		igIsKeyDown_Nil = [[_Bool igIsKeyDown_Nil(ImGuiKey key);]],
		igIsKeyPressed_Bool = [[_Bool igIsKeyPressed_Bool(ImGuiKey key, _Bool repeat);]],
		igIsKeyReleased_Nil = [[_Bool igIsKeyReleased_Nil(ImGuiKey key);]],
		igIsKeyChordPressed_Nil = [[_Bool igIsKeyChordPressed_Nil(ImGuiKeyChord key_chord);]],
		igGetKeyPressedAmount = [[int igGetKeyPressedAmount(ImGuiKey key,float repeat_delay,float rate);]],
		igGetKeyName = [[const char* igGetKeyName(ImGuiKey key);]],
		igSetNextFrameWantCaptureKeyboard = [[void igSetNextFrameWantCaptureKeyboard( _Bool want_capture_keyboard);]],
		igShortcut_Nil = [[_Bool igShortcut_Nil(ImGuiKeyChord key_chord,ImGuiInputFlags flags);]],
		igSetNextItemShortcut = [[void igSetNextItemShortcut(ImGuiKeyChord key_chord,ImGuiInputFlags flags);]],
		igSetItemKeyOwner_Nil = [[void igSetItemKeyOwner_Nil(ImGuiKey key);]],
		igIsMouseDown_Nil = [[_Bool igIsMouseDown_Nil(ImGuiMouseButton button);]],
		igIsMouseClicked_Bool = [[_Bool igIsMouseClicked_Bool(ImGuiMouseButton button, _Bool repeat);]],
		igIsMouseReleased_Nil = [[_Bool igIsMouseReleased_Nil(ImGuiMouseButton button);]],
		igIsMouseDoubleClicked_Nil = [[_Bool igIsMouseDoubleClicked_Nil(ImGuiMouseButton button);]],
		igIsMouseReleasedWithDelay = [[_Bool igIsMouseReleasedWithDelay(ImGuiMouseButton button,float delay);]],
		igGetMouseClickedCount = [[int igGetMouseClickedCount(ImGuiMouseButton button);]],
		igIsMouseHoveringRect = [[_Bool igIsMouseHoveringRect(const ImVec2 r_min,const ImVec2 r_max, _Bool clip);]],
		igIsMousePosValid = [[_Bool igIsMousePosValid(const ImVec2* mouse_pos);]],
		igIsAnyMouseDown = [[_Bool igIsAnyMouseDown();]],
		igGetMousePos = [[void igGetMousePos(ImVec2 *pOut);]],
		igGetMousePosOnOpeningCurrentPopup = [[void igGetMousePosOnOpeningCurrentPopup(ImVec2 *pOut);]],
		igIsMouseDragging = [[_Bool igIsMouseDragging(ImGuiMouseButton button,float lock_threshold);]],
		igGetMouseDragDelta = [[void igGetMouseDragDelta(ImVec2 *pOut,ImGuiMouseButton button,float lock_threshold);]],
		igResetMouseDragDelta = [[void igResetMouseDragDelta(ImGuiMouseButton button);]],
		igGetMouseCursor = [[ImGuiMouseCursor igGetMouseCursor();]],
		igSetMouseCursor = [[void igSetMouseCursor(ImGuiMouseCursor cursor_type);]],
		igSetNextFrameWantCaptureMouse = [[void igSetNextFrameWantCaptureMouse( _Bool want_capture_mouse);]],
		igGetClipboardText = [[const char* igGetClipboardText();]],
		igSetClipboardText = [[void igSetClipboardText(const char* text);]],
		igLoadIniSettingsFromDisk = [[void igLoadIniSettingsFromDisk(const char* ini_filename);]],
		igLoadIniSettingsFromMemory = [[void igLoadIniSettingsFromMemory(const char* ini_data,size_t ini_size);]],
		igSaveIniSettingsToDisk = [[void igSaveIniSettingsToDisk(const char* ini_filename);]],
		igSaveIniSettingsToMemory = [[const char* igSaveIniSettingsToMemory(size_t* out_ini_size);]],
		igDebugTextEncoding = [[void igDebugTextEncoding(const char* text);]],
		igDebugFlashStyleColor = [[void igDebugFlashStyleColor(ImGuiCol idx);]],
		igDebugStartItemPicker = [[void igDebugStartItemPicker();]],
		igDebugCheckVersionAndDataLayout = [[_Bool igDebugCheckVersionAndDataLayout(const char* version_str,size_t sz_io,size_t sz_style,size_t sz_vec2,size_t sz_vec4,size_t sz_drawvert,size_t sz_drawidx);]],
		igDebugLog = [[void igDebugLog(const char* fmt,...);]],
		igDebugLogV = [[void igDebugLogV(const char* fmt,va_list args);]],
		igSetAllocatorFunctions = [[void igSetAllocatorFunctions(ImGuiMemAllocFunc alloc_func,ImGuiMemFreeFunc free_func,void* user_data);]],
		igGetAllocatorFunctions = [[void igGetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func,ImGuiMemFreeFunc* p_free_func,void** p_user_data);]],
		igMemAlloc = [[void* igMemAlloc(size_t size);]],
		igMemFree = [[void igMemFree(void* ptr);]],
		igUpdatePlatformWindows = [[void igUpdatePlatformWindows();]],
		igRenderPlatformWindowsDefault = [[void igRenderPlatformWindowsDefault(void* platform_render_arg,void* renderer_render_arg);]],
		igDestroyPlatformWindows = [[void igDestroyPlatformWindows();]],
		igFindViewportByID = [[ImGuiViewport* igFindViewportByID(ImGuiID id);]],
		igFindViewportByPlatformHandle = [[ImGuiViewport* igFindViewportByPlatformHandle(void* platform_handle);]],
		ImGuiTableSortSpecs_ImGuiTableSortSpecs = [[ImGuiTableSortSpecs* ImGuiTableSortSpecs_ImGuiTableSortSpecs();]],
		ImGuiTableSortSpecs_destroy = [[void ImGuiTableSortSpecs_destroy(ImGuiTableSortSpecs* self);]],
		ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs = [[ImGuiTableColumnSortSpecs* ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs();]],
		ImGuiTableColumnSortSpecs_destroy = [[void ImGuiTableColumnSortSpecs_destroy(ImGuiTableColumnSortSpecs* self);]],
		ImGuiStyle_ImGuiStyle = [[ImGuiStyle* ImGuiStyle_ImGuiStyle();]],
		ImGuiStyle_destroy = [[void ImGuiStyle_destroy(ImGuiStyle* self);]],
		ImGuiStyle_ScaleAllSizes = [[void ImGuiStyle_ScaleAllSizes(ImGuiStyle* self,float scale_factor);]],
		ImGuiIO_AddKeyEvent = [[void ImGuiIO_AddKeyEvent(ImGuiIO* self,ImGuiKey key, _Bool down);]],
		ImGuiIO_AddKeyAnalogEvent = [[void ImGuiIO_AddKeyAnalogEvent(ImGuiIO* self,ImGuiKey key, _Bool down,float v);]],
		ImGuiIO_AddMousePosEvent = [[void ImGuiIO_AddMousePosEvent(ImGuiIO* self,float x,float y);]],
		ImGuiIO_AddMouseButtonEvent = [[void ImGuiIO_AddMouseButtonEvent(ImGuiIO* self,int button, _Bool down);]],
		ImGuiIO_AddMouseWheelEvent = [[void ImGuiIO_AddMouseWheelEvent(ImGuiIO* self,float wheel_x,float wheel_y);]],
		ImGuiIO_AddMouseSourceEvent = [[void ImGuiIO_AddMouseSourceEvent(ImGuiIO* self,ImGuiMouseSource source);]],
		ImGuiIO_AddMouseViewportEvent = [[void ImGuiIO_AddMouseViewportEvent(ImGuiIO* self,ImGuiID id);]],
		ImGuiIO_AddFocusEvent = [[void ImGuiIO_AddFocusEvent(ImGuiIO* self, _Bool focused);]],
		ImGuiIO_AddInputCharacter = [[void ImGuiIO_AddInputCharacter(ImGuiIO* self,unsigned int c);]],
		ImGuiIO_AddInputCharacterUTF16 = [[void ImGuiIO_AddInputCharacterUTF16(ImGuiIO* self,ImWchar16 c);]],
		ImGuiIO_AddInputCharactersUTF8 = [[void ImGuiIO_AddInputCharactersUTF8(ImGuiIO* self,const char* str);]],
		ImGuiIO_SetKeyEventNativeData = [[void ImGuiIO_SetKeyEventNativeData(ImGuiIO* self,ImGuiKey key,int native_keycode,int native_scancode,int native_legacy_index);]],
		ImGuiIO_SetAppAcceptingEvents = [[void ImGuiIO_SetAppAcceptingEvents(ImGuiIO* self, _Bool accepting_events);]],
		ImGuiIO_ClearEventsQueue = [[void ImGuiIO_ClearEventsQueue(ImGuiIO* self);]],
		ImGuiIO_ClearInputKeys = [[void ImGuiIO_ClearInputKeys(ImGuiIO* self);]],
		ImGuiIO_ClearInputMouse = [[void ImGuiIO_ClearInputMouse(ImGuiIO* self);]],
		ImGuiIO_ImGuiIO = [[ImGuiIO* ImGuiIO_ImGuiIO();]],
		ImGuiIO_destroy = [[void ImGuiIO_destroy(ImGuiIO* self);]],
		ImGuiInputTextCallbackData_ImGuiInputTextCallbackData = [[ImGuiInputTextCallbackData* ImGuiInputTextCallbackData_ImGuiInputTextCallbackData();]],
		ImGuiInputTextCallbackData_destroy = [[void ImGuiInputTextCallbackData_destroy(ImGuiInputTextCallbackData* self);]],
		ImGuiInputTextCallbackData_DeleteChars = [[void ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* self,int pos,int bytes_count);]],
		ImGuiInputTextCallbackData_InsertChars = [[void ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* self,int pos,const char* text,const char* text_end);]],
		ImGuiInputTextCallbackData_SelectAll = [[void ImGuiInputTextCallbackData_SelectAll(ImGuiInputTextCallbackData* self);]],
		ImGuiInputTextCallbackData_ClearSelection = [[void ImGuiInputTextCallbackData_ClearSelection(ImGuiInputTextCallbackData* self);]],
		ImGuiInputTextCallbackData_HasSelection = [[_Bool ImGuiInputTextCallbackData_HasSelection(ImGuiInputTextCallbackData* self);]],
		ImGuiWindowClass_ImGuiWindowClass = [[ImGuiWindowClass* ImGuiWindowClass_ImGuiWindowClass();]],
		ImGuiWindowClass_destroy = [[void ImGuiWindowClass_destroy(ImGuiWindowClass* self);]],
		ImGuiPayload_ImGuiPayload = [[ImGuiPayload* ImGuiPayload_ImGuiPayload();]],
		ImGuiPayload_destroy = [[void ImGuiPayload_destroy(ImGuiPayload* self);]],
		ImGuiPayload_Clear = [[void ImGuiPayload_Clear(ImGuiPayload* self);]],
		ImGuiPayload_IsDataType = [[_Bool ImGuiPayload_IsDataType(ImGuiPayload* self,const char* type);]],
		ImGuiPayload_IsPreview = [[_Bool ImGuiPayload_IsPreview(ImGuiPayload* self);]],
		ImGuiPayload_IsDelivery = [[_Bool ImGuiPayload_IsDelivery(ImGuiPayload* self);]],
		ImGuiOnceUponAFrame_ImGuiOnceUponAFrame = [[ImGuiOnceUponAFrame* ImGuiOnceUponAFrame_ImGuiOnceUponAFrame();]],
		ImGuiOnceUponAFrame_destroy = [[void ImGuiOnceUponAFrame_destroy(ImGuiOnceUponAFrame* self);]],
		ImGuiTextFilter_ImGuiTextFilter = [[ImGuiTextFilter* ImGuiTextFilter_ImGuiTextFilter(const char* default_filter);]],
		ImGuiTextFilter_destroy = [[void ImGuiTextFilter_destroy(ImGuiTextFilter* self);]],
		ImGuiTextFilter_Draw = [[_Bool ImGuiTextFilter_Draw(ImGuiTextFilter* self,const char* label,float width);]],
		ImGuiTextFilter_PassFilter = [[_Bool ImGuiTextFilter_PassFilter(ImGuiTextFilter* self,const char* text,const char* text_end);]],
		ImGuiTextFilter_Build = [[void ImGuiTextFilter_Build(ImGuiTextFilter* self);]],
		ImGuiTextFilter_Clear = [[void ImGuiTextFilter_Clear(ImGuiTextFilter* self);]],
		ImGuiTextFilter_IsActive = [[_Bool ImGuiTextFilter_IsActive(ImGuiTextFilter* self);]],
		ImGuiTextRange_ImGuiTextRange_Nil = [[ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Nil();]],
		ImGuiTextRange_destroy = [[void ImGuiTextRange_destroy(ImGuiTextRange* self);]],
		ImGuiTextRange_ImGuiTextRange_Str = [[ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Str(const char* _b,const char* _e);]],
		ImGuiTextRange_empty = [[_Bool ImGuiTextRange_empty(ImGuiTextRange* self);]],
		ImGuiTextRange_split = [[void ImGuiTextRange_split(ImGuiTextRange* self,char separator,ImVector_ImGuiTextRange* out);]],
		ImGuiTextBuffer_ImGuiTextBuffer = [[ImGuiTextBuffer* ImGuiTextBuffer_ImGuiTextBuffer();]],
		ImGuiTextBuffer_destroy = [[void ImGuiTextBuffer_destroy(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_begin = [[const char* ImGuiTextBuffer_begin(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_end = [[const char* ImGuiTextBuffer_end(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_size = [[int ImGuiTextBuffer_size(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_empty = [[_Bool ImGuiTextBuffer_empty(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_clear = [[void ImGuiTextBuffer_clear(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_resize = [[void ImGuiTextBuffer_resize(ImGuiTextBuffer* self,int size);]],
		ImGuiTextBuffer_reserve = [[void ImGuiTextBuffer_reserve(ImGuiTextBuffer* self,int capacity);]],
		ImGuiTextBuffer_c_str = [[const char* ImGuiTextBuffer_c_str(ImGuiTextBuffer* self);]],
		ImGuiTextBuffer_append = [[void ImGuiTextBuffer_append(ImGuiTextBuffer* self,const char* str,const char* str_end);]],
		ImGuiTextBuffer_appendfv = [[void ImGuiTextBuffer_appendfv(ImGuiTextBuffer* self,const char* fmt,va_list args);]],
		ImGuiStoragePair_ImGuiStoragePair_Int = [[ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Int(ImGuiID _key,int _val);]],
		ImGuiStoragePair_destroy = [[void ImGuiStoragePair_destroy(ImGuiStoragePair* self);]],
		ImGuiStoragePair_ImGuiStoragePair_Float = [[ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Float(ImGuiID _key,float _val);]],
		ImGuiStoragePair_ImGuiStoragePair_Ptr = [[ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Ptr(ImGuiID _key,void* _val);]],
		ImGuiStorage_Clear = [[void ImGuiStorage_Clear(ImGuiStorage* self);]],
		ImGuiStorage_GetInt = [[int ImGuiStorage_GetInt(ImGuiStorage* self,ImGuiID key,int default_val);]],
		ImGuiStorage_SetInt = [[void ImGuiStorage_SetInt(ImGuiStorage* self,ImGuiID key,int val);]],
		ImGuiStorage_GetBool = [[_Bool ImGuiStorage_GetBool(ImGuiStorage* self,ImGuiID key, _Bool default_val);]],
		ImGuiStorage_SetBool = [[void ImGuiStorage_SetBool(ImGuiStorage* self,ImGuiID key, _Bool val);]],
		ImGuiStorage_GetFloat = [[float ImGuiStorage_GetFloat(ImGuiStorage* self,ImGuiID key,float default_val);]],
		ImGuiStorage_SetFloat = [[void ImGuiStorage_SetFloat(ImGuiStorage* self,ImGuiID key,float val);]],
		ImGuiStorage_GetVoidPtr = [[void* ImGuiStorage_GetVoidPtr(ImGuiStorage* self,ImGuiID key);]],
		ImGuiStorage_SetVoidPtr = [[void ImGuiStorage_SetVoidPtr(ImGuiStorage* self,ImGuiID key,void* val);]],
		ImGuiStorage_GetIntRef = [[int* ImGuiStorage_GetIntRef(ImGuiStorage* self,ImGuiID key,int default_val);]],
		ImGuiStorage_GetBoolRef = [[_Bool * ImGuiStorage_GetBoolRef(ImGuiStorage* self,ImGuiID key, _Bool default_val);]],
		ImGuiStorage_GetFloatRef = [[float* ImGuiStorage_GetFloatRef(ImGuiStorage* self,ImGuiID key,float default_val);]],
		ImGuiStorage_GetVoidPtrRef = [[void** ImGuiStorage_GetVoidPtrRef(ImGuiStorage* self,ImGuiID key,void* default_val);]],
		ImGuiStorage_BuildSortByKey = [[void ImGuiStorage_BuildSortByKey(ImGuiStorage* self);]],
		ImGuiStorage_SetAllInt = [[void ImGuiStorage_SetAllInt(ImGuiStorage* self,int val);]],
		ImGuiListClipper_ImGuiListClipper = [[ImGuiListClipper* ImGuiListClipper_ImGuiListClipper();]],
		ImGuiListClipper_destroy = [[void ImGuiListClipper_destroy(ImGuiListClipper* self);]],
		ImGuiListClipper_Begin = [[void ImGuiListClipper_Begin(ImGuiListClipper* self,int items_count,float items_height);]],
		ImGuiListClipper_End = [[void ImGuiListClipper_End(ImGuiListClipper* self);]],
		ImGuiListClipper_Step = [[_Bool ImGuiListClipper_Step(ImGuiListClipper* self);]],
		ImGuiListClipper_IncludeItemByIndex = [[void ImGuiListClipper_IncludeItemByIndex(ImGuiListClipper* self,int item_index);]],
		ImGuiListClipper_IncludeItemsByIndex = [[void ImGuiListClipper_IncludeItemsByIndex(ImGuiListClipper* self,int item_begin,int item_end);]],
		ImGuiListClipper_SeekCursorForItem = [[void ImGuiListClipper_SeekCursorForItem(ImGuiListClipper* self,int item_index);]],
		ImColor_ImColor_Nil = [[ImColor* ImColor_ImColor_Nil();]],
		ImColor_destroy = [[void ImColor_destroy(ImColor* self);]],
		ImColor_ImColor_Float = [[ImColor* ImColor_ImColor_Float(float r,float g,float b,float a);]],
		ImColor_ImColor_Vec4 = [[ImColor* ImColor_ImColor_Vec4(const ImVec4 col);]],
		ImColor_ImColor_Int = [[ImColor* ImColor_ImColor_Int(int r,int g,int b,int a);]],
		ImColor_ImColor_U32 = [[ImColor* ImColor_ImColor_U32(ImU32 rgba);]],
		ImColor_SetHSV = [[void ImColor_SetHSV(ImColor* self,float h,float s,float v,float a);]],
		ImColor_HSV = [[void ImColor_HSV(ImColor *pOut,float h,float s,float v,float a);]],
		ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage = [[ImGuiSelectionBasicStorage* ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage();]],
		ImGuiSelectionBasicStorage_destroy = [[void ImGuiSelectionBasicStorage_destroy(ImGuiSelectionBasicStorage* self);]],
		ImGuiSelectionBasicStorage_ApplyRequests = [[void ImGuiSelectionBasicStorage_ApplyRequests(ImGuiSelectionBasicStorage* self,ImGuiMultiSelectIO* ms_io);]],
		ImGuiSelectionBasicStorage_Contains = [[_Bool ImGuiSelectionBasicStorage_Contains(ImGuiSelectionBasicStorage* self,ImGuiID id);]],
		ImGuiSelectionBasicStorage_Clear = [[void ImGuiSelectionBasicStorage_Clear(ImGuiSelectionBasicStorage* self);]],
		ImGuiSelectionBasicStorage_Swap = [[void ImGuiSelectionBasicStorage_Swap(ImGuiSelectionBasicStorage* self,ImGuiSelectionBasicStorage* r);]],
		ImGuiSelectionBasicStorage_SetItemSelected = [[void ImGuiSelectionBasicStorage_SetItemSelected(ImGuiSelectionBasicStorage* self,ImGuiID id, _Bool selected);]],
		ImGuiSelectionBasicStorage_GetNextSelectedItem = [[_Bool ImGuiSelectionBasicStorage_GetNextSelectedItem(ImGuiSelectionBasicStorage* self,void** opaque_it,ImGuiID* out_id);]],
		ImGuiSelectionBasicStorage_GetStorageIdFromIndex = [[ImGuiID ImGuiSelectionBasicStorage_GetStorageIdFromIndex(ImGuiSelectionBasicStorage* self,int idx);]],
		ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage = [[ImGuiSelectionExternalStorage* ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage();]],
		ImGuiSelectionExternalStorage_destroy = [[void ImGuiSelectionExternalStorage_destroy(ImGuiSelectionExternalStorage* self);]],
		ImGuiSelectionExternalStorage_ApplyRequests = [[void ImGuiSelectionExternalStorage_ApplyRequests(ImGuiSelectionExternalStorage* self,ImGuiMultiSelectIO* ms_io);]],
		ImDrawCmd_ImDrawCmd = [[ImDrawCmd* ImDrawCmd_ImDrawCmd();]],
		ImDrawCmd_destroy = [[void ImDrawCmd_destroy(ImDrawCmd* self);]],
		ImDrawCmd_GetTexID = [[ImTextureID ImDrawCmd_GetTexID(ImDrawCmd* self);]],
		ImDrawListSplitter_ImDrawListSplitter = [[ImDrawListSplitter* ImDrawListSplitter_ImDrawListSplitter();]],
		ImDrawListSplitter_destroy = [[void ImDrawListSplitter_destroy(ImDrawListSplitter* self);]],
		ImDrawListSplitter_Clear = [[void ImDrawListSplitter_Clear(ImDrawListSplitter* self);]],
		ImDrawListSplitter_ClearFreeMemory = [[void ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* self);]],
		ImDrawListSplitter_Split = [[void ImDrawListSplitter_Split(ImDrawListSplitter* self,ImDrawList* draw_list,int count);]],
		ImDrawListSplitter_Merge = [[void ImDrawListSplitter_Merge(ImDrawListSplitter* self,ImDrawList* draw_list);]],
		ImDrawListSplitter_SetCurrentChannel = [[void ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* self,ImDrawList* draw_list,int channel_idx);]],
		ImDrawList_ImDrawList = [[ImDrawList* ImDrawList_ImDrawList(ImDrawListSharedData* shared_data);]],
		ImDrawList_destroy = [[void ImDrawList_destroy(ImDrawList* self);]],
		ImDrawList_PushClipRect = [[void ImDrawList_PushClipRect(ImDrawList* self,const ImVec2 clip_rect_min,const ImVec2 clip_rect_max, _Bool intersect_with_current_clip_rect);]],
		ImDrawList_PushClipRectFullScreen = [[void ImDrawList_PushClipRectFullScreen(ImDrawList* self);]],
		ImDrawList_PopClipRect = [[void ImDrawList_PopClipRect(ImDrawList* self);]],
		ImDrawList_PushTextureID = [[void ImDrawList_PushTextureID(ImDrawList* self,ImTextureID texture_id);]],
		ImDrawList_PopTextureID = [[void ImDrawList_PopTextureID(ImDrawList* self);]],
		ImDrawList_GetClipRectMin = [[void ImDrawList_GetClipRectMin(ImVec2 *pOut,ImDrawList* self);]],
		ImDrawList_GetClipRectMax = [[void ImDrawList_GetClipRectMax(ImVec2 *pOut,ImDrawList* self);]],
		ImDrawList_AddLine = [[void ImDrawList_AddLine(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,ImU32 col,float thickness);]],
		ImDrawList_AddRect = [[void ImDrawList_AddRect(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col,float rounding,ImDrawFlags flags,float thickness);]],
		ImDrawList_AddRectFilled = [[void ImDrawList_AddRectFilled(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col,float rounding,ImDrawFlags flags);]],
		ImDrawList_AddRectFilledMultiColor = [[void ImDrawList_AddRectFilledMultiColor(ImDrawList* self,const ImVec2 p_min,const ImVec2 p_max,ImU32 col_upr_left,ImU32 col_upr_right,ImU32 col_bot_right,ImU32 col_bot_left);]],
		ImDrawList_AddQuad = [[void ImDrawList_AddQuad(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col,float thickness);]],
		ImDrawList_AddQuadFilled = [[void ImDrawList_AddQuadFilled(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col);]],
		ImDrawList_AddTriangle = [[void ImDrawList_AddTriangle(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col,float thickness);]],
		ImDrawList_AddTriangleFilled = [[void ImDrawList_AddTriangleFilled(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col);]],
		ImDrawList_AddCircle = [[void ImDrawList_AddCircle(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments,float thickness);]],
		ImDrawList_AddCircleFilled = [[void ImDrawList_AddCircleFilled(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments);]],
		ImDrawList_AddNgon = [[void ImDrawList_AddNgon(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments,float thickness);]],
		ImDrawList_AddNgonFilled = [[void ImDrawList_AddNgonFilled(ImDrawList* self,const ImVec2 center,float radius,ImU32 col,int num_segments);]],
		ImDrawList_AddEllipse = [[void ImDrawList_AddEllipse(ImDrawList* self,const ImVec2 center,const ImVec2 radius,ImU32 col,float rot,int num_segments,float thickness);]],
		ImDrawList_AddEllipseFilled = [[void ImDrawList_AddEllipseFilled(ImDrawList* self,const ImVec2 center,const ImVec2 radius,ImU32 col,float rot,int num_segments);]],
		ImDrawList_AddText_Vec2 = [[void ImDrawList_AddText_Vec2(ImDrawList* self,const ImVec2 pos,ImU32 col,const char* text_begin,const char* text_end);]],
		ImDrawList_AddText_FontPtr = [[void ImDrawList_AddText_FontPtr(ImDrawList* self,ImFont* font,float font_size,const ImVec2 pos,ImU32 col,const char* text_begin,const char* text_end,float wrap_width,const ImVec4* cpu_fine_clip_rect);]],
		ImDrawList_AddBezierCubic = [[void ImDrawList_AddBezierCubic(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,ImU32 col,float thickness,int num_segments);]],
		ImDrawList_AddBezierQuadratic = [[void ImDrawList_AddBezierQuadratic(ImDrawList* self,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,ImU32 col,float thickness,int num_segments);]],
		ImDrawList_AddPolyline = [[void ImDrawList_AddPolyline(ImDrawList* self,const ImVec2* points,int num_points,ImU32 col,ImDrawFlags flags,float thickness);]],
		ImDrawList_AddConvexPolyFilled = [[void ImDrawList_AddConvexPolyFilled(ImDrawList* self,const ImVec2* points,int num_points,ImU32 col);]],
		ImDrawList_AddConcavePolyFilled = [[void ImDrawList_AddConcavePolyFilled(ImDrawList* self,const ImVec2* points,int num_points,ImU32 col);]],
		ImDrawList_AddImage = [[void ImDrawList_AddImage(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p_min,const ImVec2 p_max,const ImVec2 uv_min,const ImVec2 uv_max,ImU32 col);]],
		ImDrawList_AddImageQuad = [[void ImDrawList_AddImageQuad(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 uv1,const ImVec2 uv2,const ImVec2 uv3,const ImVec2 uv4,ImU32 col);]],
		ImDrawList_AddImageRounded = [[void ImDrawList_AddImageRounded(ImDrawList* self,ImTextureID user_texture_id,const ImVec2 p_min,const ImVec2 p_max,const ImVec2 uv_min,const ImVec2 uv_max,ImU32 col,float rounding,ImDrawFlags flags);]],
		ImDrawList_PathClear = [[void ImDrawList_PathClear(ImDrawList* self);]],
		ImDrawList_PathLineTo = [[void ImDrawList_PathLineTo(ImDrawList* self,const ImVec2 pos);]],
		ImDrawList_PathLineToMergeDuplicate = [[void ImDrawList_PathLineToMergeDuplicate(ImDrawList* self,const ImVec2 pos);]],
		ImDrawList_PathFillConvex = [[void ImDrawList_PathFillConvex(ImDrawList* self,ImU32 col);]],
		ImDrawList_PathFillConcave = [[void ImDrawList_PathFillConcave(ImDrawList* self,ImU32 col);]],
		ImDrawList_PathStroke = [[void ImDrawList_PathStroke(ImDrawList* self,ImU32 col,ImDrawFlags flags,float thickness);]],
		ImDrawList_PathArcTo = [[void ImDrawList_PathArcTo(ImDrawList* self,const ImVec2 center,float radius,float a_min,float a_max,int num_segments);]],
		ImDrawList_PathArcToFast = [[void ImDrawList_PathArcToFast(ImDrawList* self,const ImVec2 center,float radius,int a_min_of_12,int a_max_of_12);]],
		ImDrawList_PathEllipticalArcTo = [[void ImDrawList_PathEllipticalArcTo(ImDrawList* self,const ImVec2 center,const ImVec2 radius,float rot,float a_min,float a_max,int num_segments);]],
		ImDrawList_PathBezierCubicCurveTo = [[void ImDrawList_PathBezierCubicCurveTo(ImDrawList* self,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,int num_segments);]],
		ImDrawList_PathBezierQuadraticCurveTo = [[void ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* self,const ImVec2 p2,const ImVec2 p3,int num_segments);]],
		ImDrawList_PathRect = [[void ImDrawList_PathRect(ImDrawList* self,const ImVec2 rect_min,const ImVec2 rect_max,float rounding,ImDrawFlags flags);]],
		ImDrawList_AddCallback = [[void ImDrawList_AddCallback(ImDrawList* self,ImDrawCallback callback,void* userdata,size_t userdata_size);]],
		ImDrawList_AddDrawCmd = [[void ImDrawList_AddDrawCmd(ImDrawList* self);]],
		ImDrawList_CloneOutput = [[ImDrawList* ImDrawList_CloneOutput(ImDrawList* self);]],
		ImDrawList_ChannelsSplit = [[void ImDrawList_ChannelsSplit(ImDrawList* self,int count);]],
		ImDrawList_ChannelsMerge = [[void ImDrawList_ChannelsMerge(ImDrawList* self);]],
		ImDrawList_ChannelsSetCurrent = [[void ImDrawList_ChannelsSetCurrent(ImDrawList* self,int n);]],
		ImDrawList_PrimReserve = [[void ImDrawList_PrimReserve(ImDrawList* self,int idx_count,int vtx_count);]],
		ImDrawList_PrimUnreserve = [[void ImDrawList_PrimUnreserve(ImDrawList* self,int idx_count,int vtx_count);]],
		ImDrawList_PrimRect = [[void ImDrawList_PrimRect(ImDrawList* self,const ImVec2 a,const ImVec2 b,ImU32 col);]],
		ImDrawList_PrimRectUV = [[void ImDrawList_PrimRectUV(ImDrawList* self,const ImVec2 a,const ImVec2 b,const ImVec2 uv_a,const ImVec2 uv_b,ImU32 col);]],
		ImDrawList_PrimQuadUV = [[void ImDrawList_PrimQuadUV(ImDrawList* self,const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 d,const ImVec2 uv_a,const ImVec2 uv_b,const ImVec2 uv_c,const ImVec2 uv_d,ImU32 col);]],
		ImDrawList_PrimWriteVtx = [[void ImDrawList_PrimWriteVtx(ImDrawList* self,const ImVec2 pos,const ImVec2 uv,ImU32 col);]],
		ImDrawList_PrimWriteIdx = [[void ImDrawList_PrimWriteIdx(ImDrawList* self,ImDrawIdx idx);]],
		ImDrawList_PrimVtx = [[void ImDrawList_PrimVtx(ImDrawList* self,const ImVec2 pos,const ImVec2 uv,ImU32 col);]],
		ImDrawList__ResetForNewFrame = [[void ImDrawList__ResetForNewFrame(ImDrawList* self);]],
		ImDrawList__ClearFreeMemory = [[void ImDrawList__ClearFreeMemory(ImDrawList* self);]],
		ImDrawList__PopUnusedDrawCmd = [[void ImDrawList__PopUnusedDrawCmd(ImDrawList* self);]],
		ImDrawList__TryMergeDrawCmds = [[void ImDrawList__TryMergeDrawCmds(ImDrawList* self);]],
		ImDrawList__OnChangedClipRect = [[void ImDrawList__OnChangedClipRect(ImDrawList* self);]],
		ImDrawList__OnChangedTextureID = [[void ImDrawList__OnChangedTextureID(ImDrawList* self);]],
		ImDrawList__OnChangedVtxOffset = [[void ImDrawList__OnChangedVtxOffset(ImDrawList* self);]],
		ImDrawList__SetTextureID = [[void ImDrawList__SetTextureID(ImDrawList* self,ImTextureID texture_id);]],
		ImDrawList__CalcCircleAutoSegmentCount = [[int ImDrawList__CalcCircleAutoSegmentCount(ImDrawList* self,float radius);]],
		ImDrawList__PathArcToFastEx = [[void ImDrawList__PathArcToFastEx(ImDrawList* self,const ImVec2 center,float radius,int a_min_sample,int a_max_sample,int a_step);]],
		ImDrawList__PathArcToN = [[void ImDrawList__PathArcToN(ImDrawList* self,const ImVec2 center,float radius,float a_min,float a_max,int num_segments);]],
		ImDrawData_ImDrawData = [[ImDrawData* ImDrawData_ImDrawData();]],
		ImDrawData_destroy = [[void ImDrawData_destroy(ImDrawData* self);]],
		ImDrawData_Clear = [[void ImDrawData_Clear(ImDrawData* self);]],
		ImDrawData_AddDrawList = [[void ImDrawData_AddDrawList(ImDrawData* self,ImDrawList* draw_list);]],
		ImDrawData_DeIndexAllBuffers = [[void ImDrawData_DeIndexAllBuffers(ImDrawData* self);]],
		ImDrawData_ScaleClipRects = [[void ImDrawData_ScaleClipRects(ImDrawData* self,const ImVec2 fb_scale);]],
		ImFontConfig_ImFontConfig = [[ImFontConfig* ImFontConfig_ImFontConfig();]],
		ImFontConfig_destroy = [[void ImFontConfig_destroy(ImFontConfig* self);]],
		ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder = [[ImFontGlyphRangesBuilder* ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder();]],
		ImFontGlyphRangesBuilder_destroy = [[void ImFontGlyphRangesBuilder_destroy(ImFontGlyphRangesBuilder* self);]],
		ImFontGlyphRangesBuilder_Clear = [[void ImFontGlyphRangesBuilder_Clear(ImFontGlyphRangesBuilder* self);]],
		ImFontGlyphRangesBuilder_GetBit = [[_Bool ImFontGlyphRangesBuilder_GetBit(ImFontGlyphRangesBuilder* self,size_t n);]],
		ImFontGlyphRangesBuilder_SetBit = [[void ImFontGlyphRangesBuilder_SetBit(ImFontGlyphRangesBuilder* self,size_t n);]],
		ImFontGlyphRangesBuilder_AddChar = [[void ImFontGlyphRangesBuilder_AddChar(ImFontGlyphRangesBuilder* self,ImWchar c);]],
		ImFontGlyphRangesBuilder_AddText = [[void ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* self,const char* text,const char* text_end);]],
		ImFontGlyphRangesBuilder_AddRanges = [[void ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* self,const ImWchar* ranges);]],
		ImFontGlyphRangesBuilder_BuildRanges = [[void ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* self,ImVector_ImWchar* out_ranges);]],
		ImFontAtlasCustomRect_ImFontAtlasCustomRect = [[ImFontAtlasCustomRect* ImFontAtlasCustomRect_ImFontAtlasCustomRect();]],
		ImFontAtlasCustomRect_destroy = [[void ImFontAtlasCustomRect_destroy(ImFontAtlasCustomRect* self);]],
		ImFontAtlasCustomRect_IsPacked = [[_Bool ImFontAtlasCustomRect_IsPacked(ImFontAtlasCustomRect* self);]],
		ImFontAtlas_ImFontAtlas = [[ImFontAtlas* ImFontAtlas_ImFontAtlas();]],
		ImFontAtlas_destroy = [[void ImFontAtlas_destroy(ImFontAtlas* self);]],
		ImFontAtlas_AddFont = [[ImFont* ImFontAtlas_AddFont(ImFontAtlas* self,const ImFontConfig* font_cfg);]],
		ImFontAtlas_AddFontDefault = [[ImFont* ImFontAtlas_AddFontDefault(ImFontAtlas* self,const ImFontConfig* font_cfg);]],
		ImFontAtlas_AddFontFromFileTTF = [[ImFont* ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* self,const char* filename,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);]],
		ImFontAtlas_AddFontFromMemoryTTF = [[ImFont* ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* self,void* font_data,int font_data_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);]],
		ImFontAtlas_AddFontFromMemoryCompressedTTF = [[ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* self,const void* compressed_font_data,int compressed_font_data_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);]],
		ImFontAtlas_AddFontFromMemoryCompressedBase85TTF = [[ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* self,const char* compressed_font_data_base85,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);]],
		ImFontAtlas_ClearInputData = [[void ImFontAtlas_ClearInputData(ImFontAtlas* self);]],
		ImFontAtlas_ClearFonts = [[void ImFontAtlas_ClearFonts(ImFontAtlas* self);]],
		ImFontAtlas_ClearTexData = [[void ImFontAtlas_ClearTexData(ImFontAtlas* self);]],
		ImFontAtlas_Clear = [[void ImFontAtlas_Clear(ImFontAtlas* self);]],
		ImFontAtlas_Build = [[_Bool ImFontAtlas_Build(ImFontAtlas* self);]],
		ImFontAtlas_GetTexDataAsAlpha8 = [[void ImFontAtlas_GetTexDataAsAlpha8(ImFontAtlas* self,unsigned char** out_pixels,int* out_width,int* out_height,int* out_bytes_per_pixel);]],
		ImFontAtlas_GetTexDataAsRGBA32 = [[void ImFontAtlas_GetTexDataAsRGBA32(ImFontAtlas* self,unsigned char** out_pixels,int* out_width,int* out_height,int* out_bytes_per_pixel);]],
		ImFontAtlas_IsBuilt = [[_Bool ImFontAtlas_IsBuilt(ImFontAtlas* self);]],
		ImFontAtlas_SetTexID = [[void ImFontAtlas_SetTexID(ImFontAtlas* self,ImTextureID id);]],
		ImFontAtlas_GetGlyphRangesDefault = [[const ImWchar* ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesGreek = [[const ImWchar* ImFontAtlas_GetGlyphRangesGreek(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesKorean = [[const ImWchar* ImFontAtlas_GetGlyphRangesKorean(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesJapanese = [[const ImWchar* ImFontAtlas_GetGlyphRangesJapanese(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesChineseFull = [[const ImWchar* ImFontAtlas_GetGlyphRangesChineseFull(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon = [[const ImWchar* ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesCyrillic = [[const ImWchar* ImFontAtlas_GetGlyphRangesCyrillic(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesThai = [[const ImWchar* ImFontAtlas_GetGlyphRangesThai(ImFontAtlas* self);]],
		ImFontAtlas_GetGlyphRangesVietnamese = [[const ImWchar* ImFontAtlas_GetGlyphRangesVietnamese(ImFontAtlas* self);]],
		ImFontAtlas_AddCustomRectRegular = [[int ImFontAtlas_AddCustomRectRegular(ImFontAtlas* self,int width,int height);]],
		ImFontAtlas_AddCustomRectFontGlyph = [[int ImFontAtlas_AddCustomRectFontGlyph(ImFontAtlas* self,ImFont* font,ImWchar id,int width,int height,float advance_x,const ImVec2 offset);]],
		ImFontAtlas_GetCustomRectByIndex = [[ImFontAtlasCustomRect* ImFontAtlas_GetCustomRectByIndex(ImFontAtlas* self,int index);]],
		ImFontAtlas_CalcCustomRectUV = [[void ImFontAtlas_CalcCustomRectUV(ImFontAtlas* self,const ImFontAtlasCustomRect* rect,ImVec2* out_uv_min,ImVec2* out_uv_max);]],
		ImFont_ImFont = [[ImFont* ImFont_ImFont();]],
		ImFont_destroy = [[void ImFont_destroy(ImFont* self);]],
		ImFont_FindGlyph = [[ImFontGlyph* ImFont_FindGlyph(ImFont* self,ImWchar c);]],
		ImFont_FindGlyphNoFallback = [[ImFontGlyph* ImFont_FindGlyphNoFallback(ImFont* self,ImWchar c);]],
		ImFont_GetCharAdvance = [[float ImFont_GetCharAdvance(ImFont* self,ImWchar c);]],
		ImFont_IsLoaded = [[_Bool ImFont_IsLoaded(ImFont* self);]],
		ImFont_GetDebugName = [[const char* ImFont_GetDebugName(ImFont* self);]],
		ImFont_CalcTextSizeA = [[void ImFont_CalcTextSizeA(ImVec2 *pOut,ImFont* self,float size,float max_width,float wrap_width,const char* text_begin,const char* text_end,const char** remaining);]],
		ImFont_CalcWordWrapPositionA = [[const char* ImFont_CalcWordWrapPositionA(ImFont* self,float scale,const char* text,const char* text_end,float wrap_width);]],
		ImFont_RenderChar = [[void ImFont_RenderChar(ImFont* self,ImDrawList* draw_list,float size,const ImVec2 pos,ImU32 col,ImWchar c);]],
		ImFont_RenderText = [[void ImFont_RenderText(ImFont* self,ImDrawList* draw_list,float size,const ImVec2 pos,ImU32 col,const ImVec4 clip_rect,const char* text_begin,const char* text_end,float wrap_width, _Bool cpu_fine_clip);]],
		ImFont_BuildLookupTable = [[void ImFont_BuildLookupTable(ImFont* self);]],
		ImFont_ClearOutputData = [[void ImFont_ClearOutputData(ImFont* self);]],
		ImFont_GrowIndex = [[void ImFont_GrowIndex(ImFont* self,int new_size);]],
		ImFont_AddGlyph = [[void ImFont_AddGlyph(ImFont* self,const ImFontConfig* src_cfg,ImWchar c,float x0,float y0,float x1,float y1,float u0,float v0,float u1,float v1,float advance_x);]],
		ImFont_AddRemapChar = [[void ImFont_AddRemapChar(ImFont* self,ImWchar dst,ImWchar src, _Bool overwrite_dst);]],
		ImFont_IsGlyphRangeUnused = [[_Bool ImFont_IsGlyphRangeUnused(ImFont* self,unsigned int c_begin,unsigned int c_last);]],
		ImGuiViewport_ImGuiViewport = [[ImGuiViewport* ImGuiViewport_ImGuiViewport();]],
		ImGuiViewport_destroy = [[void ImGuiViewport_destroy(ImGuiViewport* self);]],
		ImGuiViewport_GetCenter = [[void ImGuiViewport_GetCenter(ImVec2 *pOut,ImGuiViewport* self);]],
		ImGuiViewport_GetWorkCenter = [[void ImGuiViewport_GetWorkCenter(ImVec2 *pOut,ImGuiViewport* self);]],
		ImGuiPlatformIO_ImGuiPlatformIO = [[ImGuiPlatformIO* ImGuiPlatformIO_ImGuiPlatformIO();]],
		ImGuiPlatformIO_destroy = [[void ImGuiPlatformIO_destroy(ImGuiPlatformIO* self);]],
		ImGuiPlatformMonitor_ImGuiPlatformMonitor = [[ImGuiPlatformMonitor* ImGuiPlatformMonitor_ImGuiPlatformMonitor();]],
		ImGuiPlatformMonitor_destroy = [[void ImGuiPlatformMonitor_destroy(ImGuiPlatformMonitor* self);]],
		ImGuiPlatformImeData_ImGuiPlatformImeData = [[ImGuiPlatformImeData* ImGuiPlatformImeData_ImGuiPlatformImeData();]],
		ImGuiPlatformImeData_destroy = [[void ImGuiPlatformImeData_destroy(ImGuiPlatformImeData* self);]],
		igImHashData = [[ImGuiID igImHashData(const void* data,size_t data_size,ImGuiID seed);]],
		igImHashStr = [[ImGuiID igImHashStr(const char* data,size_t data_size,ImGuiID seed);]],
		int = [[void igImQsort(void* base,size_t count,size_t size_of_element,int(*compare_func)(void const*,void const*));]],
		igImAlphaBlendColors = [[ImU32 igImAlphaBlendColors(ImU32 col_a,ImU32 col_b);]],
		igImIsPowerOfTwo_Int = [[_Bool igImIsPowerOfTwo_Int(int v);]],
		igImIsPowerOfTwo_U64 = [[_Bool igImIsPowerOfTwo_U64(ImU64 v);]],
		igImUpperPowerOfTwo = [[int igImUpperPowerOfTwo(int v);]],
		igImCountSetBits = [[unsigned int igImCountSetBits(unsigned int v);]],
		igImStricmp = [[int igImStricmp(const char* str1,const char* str2);]],
		igImStrnicmp = [[int igImStrnicmp(const char* str1,const char* str2,size_t count);]],
		igImStrncpy = [[void igImStrncpy(char* dst,const char* src,size_t count);]],
		igImStrdup = [[char* igImStrdup(const char* str);]],
		igImStrdupcpy = [[char* igImStrdupcpy(char* dst,size_t* p_dst_size,const char* str);]],
		igImStrchrRange = [[const char* igImStrchrRange(const char* str_begin,const char* str_end,char c);]],
		igImStreolRange = [[const char* igImStreolRange(const char* str,const char* str_end);]],
		igImStristr = [[const char* igImStristr(const char* haystack,const char* haystack_end,const char* needle,const char* needle_end);]],
		igImStrTrimBlanks = [[void igImStrTrimBlanks(char* str);]],
		igImStrSkipBlank = [[const char* igImStrSkipBlank(const char* str);]],
		igImStrlenW = [[int igImStrlenW(const ImWchar* str);]],
		igImStrbol = [[const char* igImStrbol(const char* buf_mid_line,const char* buf_begin);]],
		igImToUpper = [[char igImToUpper(char c);]],
		igImCharIsBlankA = [[_Bool igImCharIsBlankA(char c);]],
		igImCharIsBlankW = [[_Bool igImCharIsBlankW(unsigned int c);]],
		igImCharIsXdigitA = [[_Bool igImCharIsXdigitA(char c);]],
		igImFormatString = [[int igImFormatString(char* buf,size_t buf_size,const char* fmt,...);]],
		igImFormatStringV = [[int igImFormatStringV(char* buf,size_t buf_size,const char* fmt,va_list args);]],
		igImFormatStringToTempBuffer = [[void igImFormatStringToTempBuffer(const char** out_buf,const char** out_buf_end,const char* fmt,...);]],
		igImFormatStringToTempBufferV = [[void igImFormatStringToTempBufferV(const char** out_buf,const char** out_buf_end,const char* fmt,va_list args);]],
		igImParseFormatFindStart = [[const char* igImParseFormatFindStart(const char* format);]],
		igImParseFormatFindEnd = [[const char* igImParseFormatFindEnd(const char* format);]],
		igImParseFormatTrimDecorations = [[const char* igImParseFormatTrimDecorations(const char* format,char* buf,size_t buf_size);]],
		igImParseFormatSanitizeForPrinting = [[void igImParseFormatSanitizeForPrinting(const char* fmt_in,char* fmt_out,size_t fmt_out_size);]],
		igImParseFormatSanitizeForScanning = [[const char* igImParseFormatSanitizeForScanning(const char* fmt_in,char* fmt_out,size_t fmt_out_size);]],
		igImParseFormatPrecision = [[int igImParseFormatPrecision(const char* format,int default_value);]],
		igImTextCharToUtf8 = [[const char* igImTextCharToUtf8(char out_buf[5],unsigned int c);]],
		igImTextStrToUtf8 = [[int igImTextStrToUtf8(char* out_buf,int out_buf_size,const ImWchar* in_text,const ImWchar* in_text_end);]],
		igImTextCharFromUtf8 = [[int igImTextCharFromUtf8(unsigned int* out_char,const char* in_text,const char* in_text_end);]],
		igImTextStrFromUtf8 = [[int igImTextStrFromUtf8(ImWchar* out_buf,int out_buf_size,const char* in_text,const char* in_text_end,const char** in_remaining);]],
		igImTextCountCharsFromUtf8 = [[int igImTextCountCharsFromUtf8(const char* in_text,const char* in_text_end);]],
		igImTextCountUtf8BytesFromChar = [[int igImTextCountUtf8BytesFromChar(const char* in_text,const char* in_text_end);]],
		igImTextCountUtf8BytesFromStr = [[int igImTextCountUtf8BytesFromStr(const ImWchar* in_text,const ImWchar* in_text_end);]],
		igImTextFindPreviousUtf8Codepoint = [[const char* igImTextFindPreviousUtf8Codepoint(const char* in_text_start,const char* in_text_curr);]],
		igImTextCountLines = [[int igImTextCountLines(const char* in_text,const char* in_text_end);]],
		igImFileOpen = [[ImFileHandle igImFileOpen(const char* filename,const char* mode);]],
		igImFileClose = [[_Bool igImFileClose(ImFileHandle file);]],
		igImFileGetSize = [[ImU64 igImFileGetSize(ImFileHandle file);]],
		igImFileRead = [[ImU64 igImFileRead(void* data,ImU64 size,ImU64 count,ImFileHandle file);]],
		igImFileWrite = [[ImU64 igImFileWrite(const void* data,ImU64 size,ImU64 count,ImFileHandle file);]],
		igImFileLoadToMemory = [[void* igImFileLoadToMemory(const char* filename,const char* mode,size_t* out_file_size,int padding_bytes);]],
		igImPow_Float = [[float igImPow_Float(float x,float y);]],
		igImPow_double = [[double igImPow_double(double x,double y);]],
		igImLog_Float = [[float igImLog_Float(float x);]],
		igImLog_double = [[double igImLog_double(double x);]],
		igImAbs_Int = [[int igImAbs_Int(int x);]],
		igImAbs_Float = [[float igImAbs_Float(float x);]],
		igImAbs_double = [[double igImAbs_double(double x);]],
		igImSign_Float = [[float igImSign_Float(float x);]],
		igImSign_double = [[double igImSign_double(double x);]],
		igImRsqrt_Float = [[float igImRsqrt_Float(float x);]],
		igImRsqrt_double = [[double igImRsqrt_double(double x);]],
		igImMin = [[void igImMin(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);]],
		igImMax = [[void igImMax(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);]],
		igImClamp = [[void igImClamp(ImVec2 *pOut,const ImVec2 v,const ImVec2 mn,const ImVec2 mx);]],
		igImLerp_Vec2Float = [[void igImLerp_Vec2Float(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,float t);]],
		igImLerp_Vec2Vec2 = [[void igImLerp_Vec2Vec2(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 t);]],
		igImLerp_Vec4 = [[void igImLerp_Vec4(ImVec4 *pOut,const ImVec4 a,const ImVec4 b,float t);]],
		igImSaturate = [[float igImSaturate(float f);]],
		igImLengthSqr_Vec2 = [[float igImLengthSqr_Vec2(const ImVec2 lhs);]],
		igImLengthSqr_Vec4 = [[float igImLengthSqr_Vec4(const ImVec4 lhs);]],
		igImInvLength = [[float igImInvLength(const ImVec2 lhs,float fail_value);]],
		igImTrunc_Float = [[float igImTrunc_Float(float f);]],
		igImTrunc_Vec2 = [[void igImTrunc_Vec2(ImVec2 *pOut,const ImVec2 v);]],
		igImFloor_Float = [[float igImFloor_Float(float f);]],
		igImFloor_Vec2 = [[void igImFloor_Vec2(ImVec2 *pOut,const ImVec2 v);]],
		igImModPositive = [[int igImModPositive(int a,int b);]],
		igImDot = [[float igImDot(const ImVec2 a,const ImVec2 b);]],
		igImRotate = [[void igImRotate(ImVec2 *pOut,const ImVec2 v,float cos_a,float sin_a);]],
		igImLinearSweep = [[float igImLinearSweep(float current,float target,float speed);]],
		igImLinearRemapClamp = [[float igImLinearRemapClamp(float s0,float s1,float d0,float d1,float x);]],
		igImMul = [[void igImMul(ImVec2 *pOut,const ImVec2 lhs,const ImVec2 rhs);]],
		igImIsFloatAboveGuaranteedIntegerPrecision = [[_Bool igImIsFloatAboveGuaranteedIntegerPrecision(float f);]],
		igImExponentialMovingAverage = [[float igImExponentialMovingAverage(float avg,float sample,int n);]],
		igImBezierCubicCalc = [[void igImBezierCubicCalc(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,float t);]],
		igImBezierCubicClosestPoint = [[void igImBezierCubicClosestPoint(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 p,int num_segments);]],
		igImBezierCubicClosestPointCasteljau = [[void igImBezierCubicClosestPointCasteljau(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,const ImVec2 p4,const ImVec2 p,float tess_tol);]],
		igImBezierQuadraticCalc = [[void igImBezierQuadraticCalc(ImVec2 *pOut,const ImVec2 p1,const ImVec2 p2,const ImVec2 p3,float t);]],
		igImLineClosestPoint = [[void igImLineClosestPoint(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 p);]],
		igImTriangleContainsPoint = [[_Bool igImTriangleContainsPoint(const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p);]],
		igImTriangleClosestPoint = [[void igImTriangleClosestPoint(ImVec2 *pOut,const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p);]],
		igImTriangleBarycentricCoords = [[void igImTriangleBarycentricCoords(const ImVec2 a,const ImVec2 b,const ImVec2 c,const ImVec2 p,float* out_u,float* out_v,float* out_w);]],
		igImTriangleArea = [[float igImTriangleArea(const ImVec2 a,const ImVec2 b,const ImVec2 c);]],
		igImTriangleIsClockwise = [[_Bool igImTriangleIsClockwise(const ImVec2 a,const ImVec2 b,const ImVec2 c);]],
		ImVec1_ImVec1_Nil = [[ImVec1* ImVec1_ImVec1_Nil();]],
		ImVec1_destroy = [[void ImVec1_destroy(ImVec1* self);]],
		ImVec1_ImVec1_Float = [[ImVec1* ImVec1_ImVec1_Float(float _x);]],
		ImVec2ih_ImVec2ih_Nil = [[ImVec2ih* ImVec2ih_ImVec2ih_Nil();]],
		ImVec2ih_destroy = [[void ImVec2ih_destroy(ImVec2ih* self);]],
		ImVec2ih_ImVec2ih_short = [[ImVec2ih* ImVec2ih_ImVec2ih_short(short _x,short _y);]],
		ImVec2ih_ImVec2ih_Vec2 = [[ImVec2ih* ImVec2ih_ImVec2ih_Vec2(const ImVec2 rhs);]],
		ImRect_ImRect_Nil = [[ImRect* ImRect_ImRect_Nil();]],
		ImRect_destroy = [[void ImRect_destroy(ImRect* self);]],
		ImRect_ImRect_Vec2 = [[ImRect* ImRect_ImRect_Vec2(const ImVec2 min,const ImVec2 max);]],
		ImRect_ImRect_Vec4 = [[ImRect* ImRect_ImRect_Vec4(const ImVec4 v);]],
		ImRect_ImRect_Float = [[ImRect* ImRect_ImRect_Float(float x1,float y1,float x2,float y2);]],
		ImRect_GetCenter = [[void ImRect_GetCenter(ImVec2 *pOut,ImRect* self);]],
		ImRect_GetSize = [[void ImRect_GetSize(ImVec2 *pOut,ImRect* self);]],
		ImRect_GetWidth = [[float ImRect_GetWidth(ImRect* self);]],
		ImRect_GetHeight = [[float ImRect_GetHeight(ImRect* self);]],
		ImRect_GetArea = [[float ImRect_GetArea(ImRect* self);]],
		ImRect_GetTL = [[void ImRect_GetTL(ImVec2 *pOut,ImRect* self);]],
		ImRect_GetTR = [[void ImRect_GetTR(ImVec2 *pOut,ImRect* self);]],
		ImRect_GetBL = [[void ImRect_GetBL(ImVec2 *pOut,ImRect* self);]],
		ImRect_GetBR = [[void ImRect_GetBR(ImVec2 *pOut,ImRect* self);]],
		ImRect_Contains_Vec2 = [[_Bool ImRect_Contains_Vec2(ImRect* self,const ImVec2 p);]],
		ImRect_Contains_Rect = [[_Bool ImRect_Contains_Rect(ImRect* self,const ImRect r);]],
		ImRect_ContainsWithPad = [[_Bool ImRect_ContainsWithPad(ImRect* self,const ImVec2 p,const ImVec2 pad);]],
		ImRect_Overlaps = [[_Bool ImRect_Overlaps(ImRect* self,const ImRect r);]],
		ImRect_Add_Vec2 = [[void ImRect_Add_Vec2(ImRect* self,const ImVec2 p);]],
		ImRect_Add_Rect = [[void ImRect_Add_Rect(ImRect* self,const ImRect r);]],
		ImRect_Expand_Float = [[void ImRect_Expand_Float(ImRect* self,const float amount);]],
		ImRect_Expand_Vec2 = [[void ImRect_Expand_Vec2(ImRect* self,const ImVec2 amount);]],
		ImRect_Translate = [[void ImRect_Translate(ImRect* self,const ImVec2 d);]],
		ImRect_TranslateX = [[void ImRect_TranslateX(ImRect* self,float dx);]],
		ImRect_TranslateY = [[void ImRect_TranslateY(ImRect* self,float dy);]],
		ImRect_ClipWith = [[void ImRect_ClipWith(ImRect* self,const ImRect r);]],
		ImRect_ClipWithFull = [[void ImRect_ClipWithFull(ImRect* self,const ImRect r);]],
		ImRect_Floor = [[void ImRect_Floor(ImRect* self);]],
		ImRect_IsInverted = [[_Bool ImRect_IsInverted(ImRect* self);]],
		ImRect_ToVec4 = [[void ImRect_ToVec4(ImVec4 *pOut,ImRect* self);]],
		igImBitArrayGetStorageSizeInBytes = [[size_t igImBitArrayGetStorageSizeInBytes(int bitcount);]],
		igImBitArrayClearAllBits = [[void igImBitArrayClearAllBits(ImU32* arr,int bitcount);]],
		igImBitArrayTestBit = [[_Bool igImBitArrayTestBit(const ImU32* arr,int n);]],
		igImBitArrayClearBit = [[void igImBitArrayClearBit(ImU32* arr,int n);]],
		igImBitArraySetBit = [[void igImBitArraySetBit(ImU32* arr,int n);]],
		igImBitArraySetBitRange = [[void igImBitArraySetBitRange(ImU32* arr,int n,int n2);]],
		ImBitVector_Create = [[void ImBitVector_Create(ImBitVector* self,int sz);]],
		ImBitVector_Clear = [[void ImBitVector_Clear(ImBitVector* self);]],
		ImBitVector_TestBit = [[_Bool ImBitVector_TestBit(ImBitVector* self,int n);]],
		ImBitVector_SetBit = [[void ImBitVector_SetBit(ImBitVector* self,int n);]],
		ImBitVector_ClearBit = [[void ImBitVector_ClearBit(ImBitVector* self,int n);]],
		ImGuiTextIndex_clear = [[void ImGuiTextIndex_clear(ImGuiTextIndex* self);]],
		ImGuiTextIndex_size = [[int ImGuiTextIndex_size(ImGuiTextIndex* self);]],
		ImGuiTextIndex_get_line_begin = [[const char* ImGuiTextIndex_get_line_begin(ImGuiTextIndex* self,const char* base,int n);]],
		ImGuiTextIndex_get_line_end = [[const char* ImGuiTextIndex_get_line_end(ImGuiTextIndex* self,const char* base,int n);]],
		ImGuiTextIndex_append = [[void ImGuiTextIndex_append(ImGuiTextIndex* self,const char* base,int old_size,int new_size);]],
		igImLowerBound = [[ImGuiStoragePair* igImLowerBound(ImGuiStoragePair* in_begin,ImGuiStoragePair* in_end,ImGuiID key);]],
		ImDrawListSharedData_ImDrawListSharedData = [[ImDrawListSharedData* ImDrawListSharedData_ImDrawListSharedData();]],
		ImDrawListSharedData_destroy = [[void ImDrawListSharedData_destroy(ImDrawListSharedData* self);]],
		ImDrawListSharedData_SetCircleTessellationMaxError = [[void ImDrawListSharedData_SetCircleTessellationMaxError(ImDrawListSharedData* self,float max_error);]],
		ImDrawDataBuilder_ImDrawDataBuilder = [[ImDrawDataBuilder* ImDrawDataBuilder_ImDrawDataBuilder();]],
		ImDrawDataBuilder_destroy = [[void ImDrawDataBuilder_destroy(ImDrawDataBuilder* self);]],
		ImGuiStyleVarInfo_GetVarPtr = [[void* ImGuiStyleVarInfo_GetVarPtr(ImGuiStyleVarInfo* self,void* parent);]],
		ImGuiStyleMod_ImGuiStyleMod_Int = [[ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Int(ImGuiStyleVar idx,int v);]],
		ImGuiStyleMod_destroy = [[void ImGuiStyleMod_destroy(ImGuiStyleMod* self);]],
		ImGuiStyleMod_ImGuiStyleMod_Float = [[ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Float(ImGuiStyleVar idx,float v);]],
		ImGuiStyleMod_ImGuiStyleMod_Vec2 = [[ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Vec2(ImGuiStyleVar idx,ImVec2 v);]],
		ImGuiComboPreviewData_ImGuiComboPreviewData = [[ImGuiComboPreviewData* ImGuiComboPreviewData_ImGuiComboPreviewData();]],
		ImGuiComboPreviewData_destroy = [[void ImGuiComboPreviewData_destroy(ImGuiComboPreviewData* self);]],
		ImGuiMenuColumns_ImGuiMenuColumns = [[ImGuiMenuColumns* ImGuiMenuColumns_ImGuiMenuColumns();]],
		ImGuiMenuColumns_destroy = [[void ImGuiMenuColumns_destroy(ImGuiMenuColumns* self);]],
		ImGuiMenuColumns_Update = [[void ImGuiMenuColumns_Update(ImGuiMenuColumns* self,float spacing, _Bool window_reappearing);]],
		ImGuiMenuColumns_DeclColumns = [[float ImGuiMenuColumns_DeclColumns(ImGuiMenuColumns* self,float w_icon,float w_label,float w_shortcut,float w_mark);]],
		ImGuiMenuColumns_CalcNextTotalWidth = [[void ImGuiMenuColumns_CalcNextTotalWidth(ImGuiMenuColumns* self, _Bool update_offsets);]],
		ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState = [[ImGuiInputTextDeactivatedState* ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState();]],
		ImGuiInputTextDeactivatedState_destroy = [[void ImGuiInputTextDeactivatedState_destroy(ImGuiInputTextDeactivatedState* self);]],
		ImGuiInputTextDeactivatedState_ClearFreeMemory = [[void ImGuiInputTextDeactivatedState_ClearFreeMemory(ImGuiInputTextDeactivatedState* self);]],
		ImGuiInputTextState_ImGuiInputTextState = [[ImGuiInputTextState* ImGuiInputTextState_ImGuiInputTextState();]],
		ImGuiInputTextState_destroy = [[void ImGuiInputTextState_destroy(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ClearText = [[void ImGuiInputTextState_ClearText(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ClearFreeMemory = [[void ImGuiInputTextState_ClearFreeMemory(ImGuiInputTextState* self);]],
		ImGuiInputTextState_OnKeyPressed = [[void ImGuiInputTextState_OnKeyPressed(ImGuiInputTextState* self,int key);]],
		ImGuiInputTextState_OnCharPressed = [[void ImGuiInputTextState_OnCharPressed(ImGuiInputTextState* self,unsigned int c);]],
		ImGuiInputTextState_CursorAnimReset = [[void ImGuiInputTextState_CursorAnimReset(ImGuiInputTextState* self);]],
		ImGuiInputTextState_CursorClamp = [[void ImGuiInputTextState_CursorClamp(ImGuiInputTextState* self);]],
		ImGuiInputTextState_HasSelection = [[_Bool ImGuiInputTextState_HasSelection(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ClearSelection = [[void ImGuiInputTextState_ClearSelection(ImGuiInputTextState* self);]],
		ImGuiInputTextState_GetCursorPos = [[int ImGuiInputTextState_GetCursorPos(ImGuiInputTextState* self);]],
		ImGuiInputTextState_GetSelectionStart = [[int ImGuiInputTextState_GetSelectionStart(ImGuiInputTextState* self);]],
		ImGuiInputTextState_GetSelectionEnd = [[int ImGuiInputTextState_GetSelectionEnd(ImGuiInputTextState* self);]],
		ImGuiInputTextState_SelectAll = [[void ImGuiInputTextState_SelectAll(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ReloadUserBufAndSelectAll = [[void ImGuiInputTextState_ReloadUserBufAndSelectAll(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ReloadUserBufAndKeepSelection = [[void ImGuiInputTextState_ReloadUserBufAndKeepSelection(ImGuiInputTextState* self);]],
		ImGuiInputTextState_ReloadUserBufAndMoveToEnd = [[void ImGuiInputTextState_ReloadUserBufAndMoveToEnd(ImGuiInputTextState* self);]],
		ImGuiNextWindowData_ImGuiNextWindowData = [[ImGuiNextWindowData* ImGuiNextWindowData_ImGuiNextWindowData();]],
		ImGuiNextWindowData_destroy = [[void ImGuiNextWindowData_destroy(ImGuiNextWindowData* self);]],
		ImGuiNextWindowData_ClearFlags = [[void ImGuiNextWindowData_ClearFlags(ImGuiNextWindowData* self);]],
		ImGuiNextItemData_ImGuiNextItemData = [[ImGuiNextItemData* ImGuiNextItemData_ImGuiNextItemData();]],
		ImGuiNextItemData_destroy = [[void ImGuiNextItemData_destroy(ImGuiNextItemData* self);]],
		ImGuiNextItemData_ClearFlags = [[void ImGuiNextItemData_ClearFlags(ImGuiNextItemData* self);]],
		ImGuiLastItemData_ImGuiLastItemData = [[ImGuiLastItemData* ImGuiLastItemData_ImGuiLastItemData();]],
		ImGuiLastItemData_destroy = [[void ImGuiLastItemData_destroy(ImGuiLastItemData* self);]],
		ImGuiErrorRecoveryState_ImGuiErrorRecoveryState = [[ImGuiErrorRecoveryState* ImGuiErrorRecoveryState_ImGuiErrorRecoveryState();]],
		ImGuiErrorRecoveryState_destroy = [[void ImGuiErrorRecoveryState_destroy(ImGuiErrorRecoveryState* self);]],
		ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr = [[ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(void* ptr);]],
		ImGuiPtrOrIndex_destroy = [[void ImGuiPtrOrIndex_destroy(ImGuiPtrOrIndex* self);]],
		ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int = [[ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(int index);]],
		ImGuiPopupData_ImGuiPopupData = [[ImGuiPopupData* ImGuiPopupData_ImGuiPopupData();]],
		ImGuiPopupData_destroy = [[void ImGuiPopupData_destroy(ImGuiPopupData* self);]],
		ImGuiInputEvent_ImGuiInputEvent = [[ImGuiInputEvent* ImGuiInputEvent_ImGuiInputEvent();]],
		ImGuiInputEvent_destroy = [[void ImGuiInputEvent_destroy(ImGuiInputEvent* self);]],
		ImGuiKeyRoutingData_ImGuiKeyRoutingData = [[ImGuiKeyRoutingData* ImGuiKeyRoutingData_ImGuiKeyRoutingData();]],
		ImGuiKeyRoutingData_destroy = [[void ImGuiKeyRoutingData_destroy(ImGuiKeyRoutingData* self);]],
		ImGuiKeyRoutingTable_ImGuiKeyRoutingTable = [[ImGuiKeyRoutingTable* ImGuiKeyRoutingTable_ImGuiKeyRoutingTable();]],
		ImGuiKeyRoutingTable_destroy = [[void ImGuiKeyRoutingTable_destroy(ImGuiKeyRoutingTable* self);]],
		ImGuiKeyRoutingTable_Clear = [[void ImGuiKeyRoutingTable_Clear(ImGuiKeyRoutingTable* self);]],
		ImGuiKeyOwnerData_ImGuiKeyOwnerData = [[ImGuiKeyOwnerData* ImGuiKeyOwnerData_ImGuiKeyOwnerData();]],
		ImGuiKeyOwnerData_destroy = [[void ImGuiKeyOwnerData_destroy(ImGuiKeyOwnerData* self);]],
		ImGuiListClipperRange_FromIndices = [[ImGuiListClipperRange ImGuiListClipperRange_FromIndices(int min,int max);]],
		ImGuiListClipperRange_FromPositions = [[ImGuiListClipperRange ImGuiListClipperRange_FromPositions(float y1,float y2,int off_min,int off_max);]],
		ImGuiListClipperData_ImGuiListClipperData = [[ImGuiListClipperData* ImGuiListClipperData_ImGuiListClipperData();]],
		ImGuiListClipperData_destroy = [[void ImGuiListClipperData_destroy(ImGuiListClipperData* self);]],
		ImGuiListClipperData_Reset = [[void ImGuiListClipperData_Reset(ImGuiListClipperData* self,ImGuiListClipper* clipper);]],
		ImGuiNavItemData_ImGuiNavItemData = [[ImGuiNavItemData* ImGuiNavItemData_ImGuiNavItemData();]],
		ImGuiNavItemData_destroy = [[void ImGuiNavItemData_destroy(ImGuiNavItemData* self);]],
		ImGuiNavItemData_Clear = [[void ImGuiNavItemData_Clear(ImGuiNavItemData* self);]],
		ImGuiTypingSelectState_ImGuiTypingSelectState = [[ImGuiTypingSelectState* ImGuiTypingSelectState_ImGuiTypingSelectState();]],
		ImGuiTypingSelectState_destroy = [[void ImGuiTypingSelectState_destroy(ImGuiTypingSelectState* self);]],
		ImGuiTypingSelectState_Clear = [[void ImGuiTypingSelectState_Clear(ImGuiTypingSelectState* self);]],
		ImGuiOldColumnData_ImGuiOldColumnData = [[ImGuiOldColumnData* ImGuiOldColumnData_ImGuiOldColumnData();]],
		ImGuiOldColumnData_destroy = [[void ImGuiOldColumnData_destroy(ImGuiOldColumnData* self);]],
		ImGuiOldColumns_ImGuiOldColumns = [[ImGuiOldColumns* ImGuiOldColumns_ImGuiOldColumns();]],
		ImGuiOldColumns_destroy = [[void ImGuiOldColumns_destroy(ImGuiOldColumns* self);]],
		ImGuiBoxSelectState_ImGuiBoxSelectState = [[ImGuiBoxSelectState* ImGuiBoxSelectState_ImGuiBoxSelectState();]],
		ImGuiBoxSelectState_destroy = [[void ImGuiBoxSelectState_destroy(ImGuiBoxSelectState* self);]],
		ImGuiMultiSelectTempData_ImGuiMultiSelectTempData = [[ImGuiMultiSelectTempData* ImGuiMultiSelectTempData_ImGuiMultiSelectTempData();]],
		ImGuiMultiSelectTempData_destroy = [[void ImGuiMultiSelectTempData_destroy(ImGuiMultiSelectTempData* self);]],
		ImGuiMultiSelectTempData_Clear = [[void ImGuiMultiSelectTempData_Clear(ImGuiMultiSelectTempData* self);]],
		ImGuiMultiSelectTempData_ClearIO = [[void ImGuiMultiSelectTempData_ClearIO(ImGuiMultiSelectTempData* self);]],
		ImGuiMultiSelectState_ImGuiMultiSelectState = [[ImGuiMultiSelectState* ImGuiMultiSelectState_ImGuiMultiSelectState();]],
		ImGuiMultiSelectState_destroy = [[void ImGuiMultiSelectState_destroy(ImGuiMultiSelectState* self);]],
		ImGuiDockNode_ImGuiDockNode = [[ImGuiDockNode* ImGuiDockNode_ImGuiDockNode(ImGuiID id);]],
		ImGuiDockNode_destroy = [[void ImGuiDockNode_destroy(ImGuiDockNode* self);]],
		ImGuiDockNode_IsRootNode = [[_Bool ImGuiDockNode_IsRootNode(ImGuiDockNode* self);]],
		ImGuiDockNode_IsDockSpace = [[_Bool ImGuiDockNode_IsDockSpace(ImGuiDockNode* self);]],
		ImGuiDockNode_IsFloatingNode = [[_Bool ImGuiDockNode_IsFloatingNode(ImGuiDockNode* self);]],
		ImGuiDockNode_IsCentralNode = [[_Bool ImGuiDockNode_IsCentralNode(ImGuiDockNode* self);]],
		ImGuiDockNode_IsHiddenTabBar = [[_Bool ImGuiDockNode_IsHiddenTabBar(ImGuiDockNode* self);]],
		ImGuiDockNode_IsNoTabBar = [[_Bool ImGuiDockNode_IsNoTabBar(ImGuiDockNode* self);]],
		ImGuiDockNode_IsSplitNode = [[_Bool ImGuiDockNode_IsSplitNode(ImGuiDockNode* self);]],
		ImGuiDockNode_IsLeafNode = [[_Bool ImGuiDockNode_IsLeafNode(ImGuiDockNode* self);]],
		ImGuiDockNode_IsEmpty = [[_Bool ImGuiDockNode_IsEmpty(ImGuiDockNode* self);]],
		ImGuiDockNode_Rect = [[void ImGuiDockNode_Rect(ImRect *pOut,ImGuiDockNode* self);]],
		ImGuiDockNode_SetLocalFlags = [[void ImGuiDockNode_SetLocalFlags(ImGuiDockNode* self,ImGuiDockNodeFlags flags);]],
		ImGuiDockNode_UpdateMergedFlags = [[void ImGuiDockNode_UpdateMergedFlags(ImGuiDockNode* self);]],
		ImGuiDockContext_ImGuiDockContext = [[ImGuiDockContext* ImGuiDockContext_ImGuiDockContext();]],
		ImGuiDockContext_destroy = [[void ImGuiDockContext_destroy(ImGuiDockContext* self);]],
		ImGuiViewportP_ImGuiViewportP = [[ImGuiViewportP* ImGuiViewportP_ImGuiViewportP();]],
		ImGuiViewportP_destroy = [[void ImGuiViewportP_destroy(ImGuiViewportP* self);]],
		ImGuiViewportP_ClearRequestFlags = [[void ImGuiViewportP_ClearRequestFlags(ImGuiViewportP* self);]],
		ImGuiViewportP_CalcWorkRectPos = [[void ImGuiViewportP_CalcWorkRectPos(ImVec2 *pOut,ImGuiViewportP* self,const ImVec2 inset_min);]],
		ImGuiViewportP_CalcWorkRectSize = [[void ImGuiViewportP_CalcWorkRectSize(ImVec2 *pOut,ImGuiViewportP* self,const ImVec2 inset_min,const ImVec2 inset_max);]],
		ImGuiViewportP_UpdateWorkRect = [[void ImGuiViewportP_UpdateWorkRect(ImGuiViewportP* self);]],
		ImGuiViewportP_GetMainRect = [[void ImGuiViewportP_GetMainRect(ImRect *pOut,ImGuiViewportP* self);]],
		ImGuiViewportP_GetWorkRect = [[void ImGuiViewportP_GetWorkRect(ImRect *pOut,ImGuiViewportP* self);]],
		ImGuiViewportP_GetBuildWorkRect = [[void ImGuiViewportP_GetBuildWorkRect(ImRect *pOut,ImGuiViewportP* self);]],
		ImGuiWindowSettings_ImGuiWindowSettings = [[ImGuiWindowSettings* ImGuiWindowSettings_ImGuiWindowSettings();]],
		ImGuiWindowSettings_destroy = [[void ImGuiWindowSettings_destroy(ImGuiWindowSettings* self);]],
		ImGuiWindowSettings_GetName = [[char* ImGuiWindowSettings_GetName(ImGuiWindowSettings* self);]],
		ImGuiSettingsHandler_ImGuiSettingsHandler = [[ImGuiSettingsHandler* ImGuiSettingsHandler_ImGuiSettingsHandler();]],
		ImGuiSettingsHandler_destroy = [[void ImGuiSettingsHandler_destroy(ImGuiSettingsHandler* self);]],
		ImGuiDebugAllocInfo_ImGuiDebugAllocInfo = [[ImGuiDebugAllocInfo* ImGuiDebugAllocInfo_ImGuiDebugAllocInfo();]],
		ImGuiDebugAllocInfo_destroy = [[void ImGuiDebugAllocInfo_destroy(ImGuiDebugAllocInfo* self);]],
		ImGuiStackLevelInfo_ImGuiStackLevelInfo = [[ImGuiStackLevelInfo* ImGuiStackLevelInfo_ImGuiStackLevelInfo();]],
		ImGuiStackLevelInfo_destroy = [[void ImGuiStackLevelInfo_destroy(ImGuiStackLevelInfo* self);]],
		ImGuiIDStackTool_ImGuiIDStackTool = [[ImGuiIDStackTool* ImGuiIDStackTool_ImGuiIDStackTool();]],
		ImGuiIDStackTool_destroy = [[void ImGuiIDStackTool_destroy(ImGuiIDStackTool* self);]],
		ImGuiContextHook_ImGuiContextHook = [[ImGuiContextHook* ImGuiContextHook_ImGuiContextHook();]],
		ImGuiContextHook_destroy = [[void ImGuiContextHook_destroy(ImGuiContextHook* self);]],
		ImGuiContext_ImGuiContext = [[ImGuiContext* ImGuiContext_ImGuiContext(ImFontAtlas* shared_font_atlas);]],
		ImGuiContext_destroy = [[void ImGuiContext_destroy(ImGuiContext* self);]],
		ImGuiWindow_ImGuiWindow = [[ImGuiWindow* ImGuiWindow_ImGuiWindow(ImGuiContext* context,const char* name);]],
		ImGuiWindow_destroy = [[void ImGuiWindow_destroy(ImGuiWindow* self);]],
		ImGuiWindow_GetID_Str = [[ImGuiID ImGuiWindow_GetID_Str(ImGuiWindow* self,const char* str,const char* str_end);]],
		ImGuiWindow_GetID_Ptr = [[ImGuiID ImGuiWindow_GetID_Ptr(ImGuiWindow* self,const void* ptr);]],
		ImGuiWindow_GetID_Int = [[ImGuiID ImGuiWindow_GetID_Int(ImGuiWindow* self,int n);]],
		ImGuiWindow_GetIDFromPos = [[ImGuiID ImGuiWindow_GetIDFromPos(ImGuiWindow* self,const ImVec2 p_abs);]],
		ImGuiWindow_GetIDFromRectangle = [[ImGuiID ImGuiWindow_GetIDFromRectangle(ImGuiWindow* self,const ImRect r_abs);]],
		ImGuiWindow_Rect = [[void ImGuiWindow_Rect(ImRect *pOut,ImGuiWindow* self);]],
		ImGuiWindow_CalcFontSize = [[float ImGuiWindow_CalcFontSize(ImGuiWindow* self);]],
		ImGuiWindow_TitleBarRect = [[void ImGuiWindow_TitleBarRect(ImRect *pOut,ImGuiWindow* self);]],
		ImGuiWindow_MenuBarRect = [[void ImGuiWindow_MenuBarRect(ImRect *pOut,ImGuiWindow* self);]],
		ImGuiTabItem_ImGuiTabItem = [[ImGuiTabItem* ImGuiTabItem_ImGuiTabItem();]],
		ImGuiTabItem_destroy = [[void ImGuiTabItem_destroy(ImGuiTabItem* self);]],
		ImGuiTabBar_ImGuiTabBar = [[ImGuiTabBar* ImGuiTabBar_ImGuiTabBar();]],
		ImGuiTabBar_destroy = [[void ImGuiTabBar_destroy(ImGuiTabBar* self);]],
		ImGuiTableColumn_ImGuiTableColumn = [[ImGuiTableColumn* ImGuiTableColumn_ImGuiTableColumn();]],
		ImGuiTableColumn_destroy = [[void ImGuiTableColumn_destroy(ImGuiTableColumn* self);]],
		ImGuiTableInstanceData_ImGuiTableInstanceData = [[ImGuiTableInstanceData* ImGuiTableInstanceData_ImGuiTableInstanceData();]],
		ImGuiTableInstanceData_destroy = [[void ImGuiTableInstanceData_destroy(ImGuiTableInstanceData* self);]],
		ImGuiTable_ImGuiTable = [[ImGuiTable* ImGuiTable_ImGuiTable();]],
		ImGuiTable_destroy = [[void ImGuiTable_destroy(ImGuiTable* self);]],
		ImGuiTableTempData_ImGuiTableTempData = [[ImGuiTableTempData* ImGuiTableTempData_ImGuiTableTempData();]],
		ImGuiTableTempData_destroy = [[void ImGuiTableTempData_destroy(ImGuiTableTempData* self);]],
		ImGuiTableColumnSettings_ImGuiTableColumnSettings = [[ImGuiTableColumnSettings* ImGuiTableColumnSettings_ImGuiTableColumnSettings();]],
		ImGuiTableColumnSettings_destroy = [[void ImGuiTableColumnSettings_destroy(ImGuiTableColumnSettings* self);]],
		ImGuiTableSettings_ImGuiTableSettings = [[ImGuiTableSettings* ImGuiTableSettings_ImGuiTableSettings();]],
		ImGuiTableSettings_destroy = [[void ImGuiTableSettings_destroy(ImGuiTableSettings* self);]],
		ImGuiTableSettings_GetColumnSettings = [[ImGuiTableColumnSettings* ImGuiTableSettings_GetColumnSettings(ImGuiTableSettings* self);]],
		igGetIOEx = [[ImGuiIO* igGetIOEx(ImGuiContext* ctx);]],
		igGetPlatformIO_ContextPtr = [[ImGuiPlatformIO* igGetPlatformIO_ContextPtr(ImGuiContext* ctx);]],
		igGetCurrentWindowRead = [[ImGuiWindow* igGetCurrentWindowRead();]],
		igGetCurrentWindow = [[ImGuiWindow* igGetCurrentWindow();]],
		igFindWindowByID = [[ImGuiWindow* igFindWindowByID(ImGuiID id);]],
		igFindWindowByName = [[ImGuiWindow* igFindWindowByName(const char* name);]],
		igUpdateWindowParentAndRootLinks = [[void igUpdateWindowParentAndRootLinks(ImGuiWindow* window,ImGuiWindowFlags flags,ImGuiWindow* parent_window);]],
		igUpdateWindowSkipRefresh = [[void igUpdateWindowSkipRefresh(ImGuiWindow* window);]],
		igCalcWindowNextAutoFitSize = [[void igCalcWindowNextAutoFitSize(ImVec2 *pOut,ImGuiWindow* window);]],
		igIsWindowChildOf = [[_Bool igIsWindowChildOf(ImGuiWindow* window,ImGuiWindow* potential_parent, _Bool popup_hierarchy, _Bool dock_hierarchy);]],
		igIsWindowWithinBeginStackOf = [[_Bool igIsWindowWithinBeginStackOf(ImGuiWindow* window,ImGuiWindow* potential_parent);]],
		igIsWindowAbove = [[_Bool igIsWindowAbove(ImGuiWindow* potential_above,ImGuiWindow* potential_below);]],
		igIsWindowNavFocusable = [[_Bool igIsWindowNavFocusable(ImGuiWindow* window);]],
		igSetWindowPos_WindowPtr = [[void igSetWindowPos_WindowPtr(ImGuiWindow* window,const ImVec2 pos,ImGuiCond cond);]],
		igSetWindowSize_WindowPtr = [[void igSetWindowSize_WindowPtr(ImGuiWindow* window,const ImVec2 size,ImGuiCond cond);]],
		igSetWindowCollapsed_WindowPtr = [[void igSetWindowCollapsed_WindowPtr(ImGuiWindow* window, _Bool collapsed,ImGuiCond cond);]],
		igSetWindowHitTestHole = [[void igSetWindowHitTestHole(ImGuiWindow* window,const ImVec2 pos,const ImVec2 size);]],
		igSetWindowHiddenAndSkipItemsForCurrentFrame = [[void igSetWindowHiddenAndSkipItemsForCurrentFrame(ImGuiWindow* window);]],
		igSetWindowParentWindowForFocusRoute = [[void igSetWindowParentWindowForFocusRoute(ImGuiWindow* window,ImGuiWindow* parent_window);]],
		igWindowRectAbsToRel = [[void igWindowRectAbsToRel(ImRect *pOut,ImGuiWindow* window,const ImRect r);]],
		igWindowRectRelToAbs = [[void igWindowRectRelToAbs(ImRect *pOut,ImGuiWindow* window,const ImRect r);]],
		igWindowPosAbsToRel = [[void igWindowPosAbsToRel(ImVec2 *pOut,ImGuiWindow* window,const ImVec2 p);]],
		igWindowPosRelToAbs = [[void igWindowPosRelToAbs(ImVec2 *pOut,ImGuiWindow* window,const ImVec2 p);]],
		igFocusWindow = [[void igFocusWindow(ImGuiWindow* window,ImGuiFocusRequestFlags flags);]],
		igFocusTopMostWindowUnderOne = [[void igFocusTopMostWindowUnderOne(ImGuiWindow* under_this_window,ImGuiWindow* ignore_window,ImGuiViewport* filter_viewport,ImGuiFocusRequestFlags flags);]],
		igBringWindowToFocusFront = [[void igBringWindowToFocusFront(ImGuiWindow* window);]],
		igBringWindowToDisplayFront = [[void igBringWindowToDisplayFront(ImGuiWindow* window);]],
		igBringWindowToDisplayBack = [[void igBringWindowToDisplayBack(ImGuiWindow* window);]],
		igBringWindowToDisplayBehind = [[void igBringWindowToDisplayBehind(ImGuiWindow* window,ImGuiWindow* above_window);]],
		igFindWindowDisplayIndex = [[int igFindWindowDisplayIndex(ImGuiWindow* window);]],
		igFindBottomMostVisibleWindowWithinBeginStack = [[ImGuiWindow* igFindBottomMostVisibleWindowWithinBeginStack(ImGuiWindow* window);]],
		igSetNextWindowRefreshPolicy = [[void igSetNextWindowRefreshPolicy(ImGuiWindowRefreshFlags flags);]],
		igSetCurrentFont = [[void igSetCurrentFont(ImFont* font);]],
		igGetDefaultFont = [[ImFont* igGetDefaultFont();]],
		igPushPasswordFont = [[void igPushPasswordFont();]],
		igGetForegroundDrawList_WindowPtr = [[ImDrawList* igGetForegroundDrawList_WindowPtr(ImGuiWindow* window);]],
		igAddDrawListToDrawDataEx = [[void igAddDrawListToDrawDataEx(ImDrawData* draw_data,ImVector_ImDrawListPtr* out_list,ImDrawList* draw_list);]],
		igInitialize = [[void igInitialize();]],
		igShutdown = [[void igShutdown();]],
		igUpdateInputEvents = [[void igUpdateInputEvents( _Bool trickle_fast_inputs);]],
		igUpdateHoveredWindowAndCaptureFlags = [[void igUpdateHoveredWindowAndCaptureFlags();]],
		igFindHoveredWindowEx = [[void igFindHoveredWindowEx(const ImVec2 pos, _Bool find_first_and_in_any_viewport,ImGuiWindow** out_hovered_window,ImGuiWindow** out_hovered_window_under_moving_window);]],
		igStartMouseMovingWindow = [[void igStartMouseMovingWindow(ImGuiWindow* window);]],
		igStartMouseMovingWindowOrNode = [[void igStartMouseMovingWindowOrNode(ImGuiWindow* window,ImGuiDockNode* node, _Bool undock);]],
		igUpdateMouseMovingWindowNewFrame = [[void igUpdateMouseMovingWindowNewFrame();]],
		igUpdateMouseMovingWindowEndFrame = [[void igUpdateMouseMovingWindowEndFrame();]],
		igAddContextHook = [[ImGuiID igAddContextHook(ImGuiContext* context,const ImGuiContextHook* hook);]],
		igRemoveContextHook = [[void igRemoveContextHook(ImGuiContext* context,ImGuiID hook_to_remove);]],
		igCallContextHooks = [[void igCallContextHooks(ImGuiContext* context,ImGuiContextHookType type);]],
		igTranslateWindowsInViewport = [[void igTranslateWindowsInViewport(ImGuiViewportP* viewport,const ImVec2 old_pos,const ImVec2 new_pos,const ImVec2 old_size,const ImVec2 new_size);]],
		igScaleWindowsInViewport = [[void igScaleWindowsInViewport(ImGuiViewportP* viewport,float scale);]],
		igDestroyPlatformWindow = [[void igDestroyPlatformWindow(ImGuiViewportP* viewport);]],
		igSetWindowViewport = [[void igSetWindowViewport(ImGuiWindow* window,ImGuiViewportP* viewport);]],
		igSetCurrentViewport = [[void igSetCurrentViewport(ImGuiWindow* window,ImGuiViewportP* viewport);]],
		igGetViewportPlatformMonitor = [[const ImGuiPlatformMonitor* igGetViewportPlatformMonitor(ImGuiViewport* viewport);]],
		igFindHoveredViewportFromPlatformWindowStack = [[ImGuiViewportP* igFindHoveredViewportFromPlatformWindowStack(const ImVec2 mouse_platform_pos);]],
		igMarkIniSettingsDirty_Nil = [[void igMarkIniSettingsDirty_Nil();]],
		igMarkIniSettingsDirty_WindowPtr = [[void igMarkIniSettingsDirty_WindowPtr(ImGuiWindow* window);]],
		igClearIniSettings = [[void igClearIniSettings();]],
		igAddSettingsHandler = [[void igAddSettingsHandler(const ImGuiSettingsHandler* handler);]],
		igRemoveSettingsHandler = [[void igRemoveSettingsHandler(const char* type_name);]],
		igFindSettingsHandler = [[ImGuiSettingsHandler* igFindSettingsHandler(const char* type_name);]],
		igCreateNewWindowSettings = [[ImGuiWindowSettings* igCreateNewWindowSettings(const char* name);]],
		igFindWindowSettingsByID = [[ImGuiWindowSettings* igFindWindowSettingsByID(ImGuiID id);]],
		igFindWindowSettingsByWindow = [[ImGuiWindowSettings* igFindWindowSettingsByWindow(ImGuiWindow* window);]],
		igClearWindowSettings = [[void igClearWindowSettings(const char* name);]],
		igLocalizeRegisterEntries = [[void igLocalizeRegisterEntries(const ImGuiLocEntry* entries,int count);]],
		igLocalizeGetMsg = [[const char* igLocalizeGetMsg(ImGuiLocKey key);]],
		igSetScrollX_WindowPtr = [[void igSetScrollX_WindowPtr(ImGuiWindow* window,float scroll_x);]],
		igSetScrollY_WindowPtr = [[void igSetScrollY_WindowPtr(ImGuiWindow* window,float scroll_y);]],
		igSetScrollFromPosX_WindowPtr = [[void igSetScrollFromPosX_WindowPtr(ImGuiWindow* window,float local_x,float center_x_ratio);]],
		igSetScrollFromPosY_WindowPtr = [[void igSetScrollFromPosY_WindowPtr(ImGuiWindow* window,float local_y,float center_y_ratio);]],
		igScrollToItem = [[void igScrollToItem(ImGuiScrollFlags flags);]],
		igScrollToRect = [[void igScrollToRect(ImGuiWindow* window,const ImRect rect,ImGuiScrollFlags flags);]],
		igScrollToRectEx = [[void igScrollToRectEx(ImVec2 *pOut,ImGuiWindow* window,const ImRect rect,ImGuiScrollFlags flags);]],
		igScrollToBringRectIntoView = [[void igScrollToBringRectIntoView(ImGuiWindow* window,const ImRect rect);]],
		igGetItemStatusFlags = [[ImGuiItemStatusFlags igGetItemStatusFlags();]],
		igGetItemFlags = [[ImGuiItemFlags igGetItemFlags();]],
		igGetActiveID = [[ImGuiID igGetActiveID();]],
		igGetFocusID = [[ImGuiID igGetFocusID();]],
		igSetActiveID = [[void igSetActiveID(ImGuiID id,ImGuiWindow* window);]],
		igSetFocusID = [[void igSetFocusID(ImGuiID id,ImGuiWindow* window);]],
		igClearActiveID = [[void igClearActiveID();]],
		igGetHoveredID = [[ImGuiID igGetHoveredID();]],
		igSetHoveredID = [[void igSetHoveredID(ImGuiID id);]],
		igKeepAliveID = [[void igKeepAliveID(ImGuiID id);]],
		igMarkItemEdited = [[void igMarkItemEdited(ImGuiID id);]],
		igPushOverrideID = [[void igPushOverrideID(ImGuiID id);]],
		igGetIDWithSeed_Str = [[ImGuiID igGetIDWithSeed_Str(const char* str_id_begin,const char* str_id_end,ImGuiID seed);]],
		igGetIDWithSeed_Int = [[ImGuiID igGetIDWithSeed_Int(int n,ImGuiID seed);]],
		igItemSize_Vec2 = [[void igItemSize_Vec2(const ImVec2 size,float text_baseline_y);]],
		igItemSize_Rect = [[void igItemSize_Rect(const ImRect bb,float text_baseline_y);]],
		igItemAdd = [[_Bool igItemAdd(const ImRect bb,ImGuiID id,const ImRect* nav_bb,ImGuiItemFlags extra_flags);]],
		igItemHoverable = [[_Bool igItemHoverable(const ImRect bb,ImGuiID id,ImGuiItemFlags item_flags);]],
		igIsWindowContentHoverable = [[_Bool igIsWindowContentHoverable(ImGuiWindow* window,ImGuiHoveredFlags flags);]],
		igIsClippedEx = [[_Bool igIsClippedEx(const ImRect bb,ImGuiID id);]],
		igSetLastItemData = [[void igSetLastItemData(ImGuiID item_id,ImGuiItemFlags item_flags,ImGuiItemStatusFlags status_flags,const ImRect item_rect);]],
		igCalcItemSize = [[void igCalcItemSize(ImVec2 *pOut,ImVec2 size,float default_w,float default_h);]],
		igCalcWrapWidthForPos = [[float igCalcWrapWidthForPos(const ImVec2 pos,float wrap_pos_x);]],
		igPushMultiItemsWidths = [[void igPushMultiItemsWidths(int components,float width_full);]],
		igShrinkWidths = [[void igShrinkWidths(ImGuiShrinkWidthItem* items,int count,float width_excess);]],
		igGetStyleVarInfo = [[const ImGuiStyleVarInfo* igGetStyleVarInfo(ImGuiStyleVar idx);]],
		igBeginDisabledOverrideReenable = [[void igBeginDisabledOverrideReenable();]],
		igEndDisabledOverrideReenable = [[void igEndDisabledOverrideReenable();]],
		igLogBegin = [[void igLogBegin(ImGuiLogFlags flags,int auto_open_depth);]],
		igLogToBuffer = [[void igLogToBuffer(int auto_open_depth);]],
		igLogRenderedText = [[void igLogRenderedText(const ImVec2* ref_pos,const char* text,const char* text_end);]],
		igLogSetNextTextDecoration = [[void igLogSetNextTextDecoration(const char* prefix,const char* suffix);]],
		igBeginChildEx = [[_Bool igBeginChildEx(const char* name,ImGuiID id,const ImVec2 size_arg,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);]],
		igBeginPopupEx = [[_Bool igBeginPopupEx(ImGuiID id,ImGuiWindowFlags extra_window_flags);]],
		igBeginPopupMenuEx = [[_Bool igBeginPopupMenuEx(ImGuiID id,const char* label,ImGuiWindowFlags extra_window_flags);]],
		igOpenPopupEx = [[void igOpenPopupEx(ImGuiID id,ImGuiPopupFlags popup_flags);]],
		igClosePopupToLevel = [[void igClosePopupToLevel(int remaining, _Bool restore_focus_to_window_under_popup);]],
		igClosePopupsOverWindow = [[void igClosePopupsOverWindow(ImGuiWindow* ref_window, _Bool restore_focus_to_window_under_popup);]],
		igClosePopupsExceptModals = [[void igClosePopupsExceptModals();]],
		igIsPopupOpen_ID = [[_Bool igIsPopupOpen_ID(ImGuiID id,ImGuiPopupFlags popup_flags);]],
		igGetPopupAllowedExtentRect = [[void igGetPopupAllowedExtentRect(ImRect *pOut,ImGuiWindow* window);]],
		igGetTopMostPopupModal = [[ImGuiWindow* igGetTopMostPopupModal();]],
		igGetTopMostAndVisiblePopupModal = [[ImGuiWindow* igGetTopMostAndVisiblePopupModal();]],
		igFindBlockingModal = [[ImGuiWindow* igFindBlockingModal(ImGuiWindow* window);]],
		igFindBestWindowPosForPopup = [[void igFindBestWindowPosForPopup(ImVec2 *pOut,ImGuiWindow* window);]],
		igFindBestWindowPosForPopupEx = [[void igFindBestWindowPosForPopupEx(ImVec2 *pOut,const ImVec2 ref_pos,const ImVec2 size,ImGuiDir* last_dir,const ImRect r_outer,const ImRect r_avoid,ImGuiPopupPositionPolicy policy);]],
		igBeginTooltipEx = [[_Bool igBeginTooltipEx(ImGuiTooltipFlags tooltip_flags,ImGuiWindowFlags extra_window_flags);]],
		igBeginTooltipHidden = [[_Bool igBeginTooltipHidden();]],
		igBeginViewportSideBar = [[_Bool igBeginViewportSideBar(const char* name,ImGuiViewport* viewport,ImGuiDir dir,float size,ImGuiWindowFlags window_flags);]],
		igBeginMenuEx = [[_Bool igBeginMenuEx(const char* label,const char* icon, _Bool enabled);]],
		igMenuItemEx = [[_Bool igMenuItemEx(const char* label,const char* icon,const char* shortcut, _Bool selected, _Bool enabled);]],
		igBeginComboPopup = [[_Bool igBeginComboPopup(ImGuiID popup_id,const ImRect bb,ImGuiComboFlags flags);]],
		igBeginComboPreview = [[_Bool igBeginComboPreview();]],
		igEndComboPreview = [[void igEndComboPreview();]],
		igNavInitWindow = [[void igNavInitWindow(ImGuiWindow* window, _Bool force_reinit);]],
		igNavInitRequestApplyResult = [[void igNavInitRequestApplyResult();]],
		igNavMoveRequestButNoResultYet = [[_Bool igNavMoveRequestButNoResultYet();]],
		igNavMoveRequestSubmit = [[void igNavMoveRequestSubmit(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);]],
		igNavMoveRequestForward = [[void igNavMoveRequestForward(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);]],
		igNavMoveRequestResolveWithLastItem = [[void igNavMoveRequestResolveWithLastItem(ImGuiNavItemData* result);]],
		igNavMoveRequestResolveWithPastTreeNode = [[void igNavMoveRequestResolveWithPastTreeNode(ImGuiNavItemData* result,ImGuiTreeNodeStackData* tree_node_data);]],
		igNavMoveRequestCancel = [[void igNavMoveRequestCancel();]],
		igNavMoveRequestApplyResult = [[void igNavMoveRequestApplyResult();]],
		igNavMoveRequestTryWrapping = [[void igNavMoveRequestTryWrapping(ImGuiWindow* window,ImGuiNavMoveFlags move_flags);]],
		igNavHighlightActivated = [[void igNavHighlightActivated(ImGuiID id);]],
		igNavClearPreferredPosForAxis = [[void igNavClearPreferredPosForAxis(ImGuiAxis axis);]],
		igSetNavCursorVisibleAfterMove = [[void igSetNavCursorVisibleAfterMove();]],
		igNavUpdateCurrentWindowIsScrollPushableX = [[void igNavUpdateCurrentWindowIsScrollPushableX();]],
		igSetNavWindow = [[void igSetNavWindow(ImGuiWindow* window);]],
		igSetNavID = [[void igSetNavID(ImGuiID id,ImGuiNavLayer nav_layer,ImGuiID focus_scope_id,const ImRect rect_rel);]],
		igSetNavFocusScope = [[void igSetNavFocusScope(ImGuiID focus_scope_id);]],
		igFocusItem = [[void igFocusItem();]],
		igActivateItemByID = [[void igActivateItemByID(ImGuiID id);]],
		igIsNamedKey = [[_Bool igIsNamedKey(ImGuiKey key);]],
		igIsNamedKeyOrMod = [[_Bool igIsNamedKeyOrMod(ImGuiKey key);]],
		igIsLegacyKey = [[_Bool igIsLegacyKey(ImGuiKey key);]],
		igIsKeyboardKey = [[_Bool igIsKeyboardKey(ImGuiKey key);]],
		igIsGamepadKey = [[_Bool igIsGamepadKey(ImGuiKey key);]],
		igIsMouseKey = [[_Bool igIsMouseKey(ImGuiKey key);]],
		igIsAliasKey = [[_Bool igIsAliasKey(ImGuiKey key);]],
		igIsLRModKey = [[_Bool igIsLRModKey(ImGuiKey key);]],
		igFixupKeyChord = [[ImGuiKeyChord igFixupKeyChord(ImGuiKeyChord key_chord);]],
		igConvertSingleModFlagToKey = [[ImGuiKey igConvertSingleModFlagToKey(ImGuiKey key);]],
		igGetKeyData_ContextPtr = [[ImGuiKeyData* igGetKeyData_ContextPtr(ImGuiContext* ctx,ImGuiKey key);]],
		igGetKeyData_Key = [[ImGuiKeyData* igGetKeyData_Key(ImGuiKey key);]],
		igGetKeyChordName = [[const char* igGetKeyChordName(ImGuiKeyChord key_chord);]],
		igMouseButtonToKey = [[ImGuiKey igMouseButtonToKey(ImGuiMouseButton button);]],
		igIsMouseDragPastThreshold = [[_Bool igIsMouseDragPastThreshold(ImGuiMouseButton button,float lock_threshold);]],
		igGetKeyMagnitude2d = [[void igGetKeyMagnitude2d(ImVec2 *pOut,ImGuiKey key_left,ImGuiKey key_right,ImGuiKey key_up,ImGuiKey key_down);]],
		igGetNavTweakPressedAmount = [[float igGetNavTweakPressedAmount(ImGuiAxis axis);]],
		igCalcTypematicRepeatAmount = [[int igCalcTypematicRepeatAmount(float t0,float t1,float repeat_delay,float repeat_rate);]],
		igGetTypematicRepeatRate = [[void igGetTypematicRepeatRate(ImGuiInputFlags flags,float* repeat_delay,float* repeat_rate);]],
		igTeleportMousePos = [[void igTeleportMousePos(const ImVec2 pos);]],
		igSetActiveIdUsingAllKeyboardKeys = [[void igSetActiveIdUsingAllKeyboardKeys();]],
		igIsActiveIdUsingNavDir = [[_Bool igIsActiveIdUsingNavDir(ImGuiDir dir);]],
		igGetKeyOwner = [[ImGuiID igGetKeyOwner(ImGuiKey key);]],
		igSetKeyOwner = [[void igSetKeyOwner(ImGuiKey key,ImGuiID owner_id,ImGuiInputFlags flags);]],
		igSetKeyOwnersForKeyChord = [[void igSetKeyOwnersForKeyChord(ImGuiKeyChord key,ImGuiID owner_id,ImGuiInputFlags flags);]],
		igSetItemKeyOwner_InputFlags = [[void igSetItemKeyOwner_InputFlags(ImGuiKey key,ImGuiInputFlags flags);]],
		igTestKeyOwner = [[_Bool igTestKeyOwner(ImGuiKey key,ImGuiID owner_id);]],
		igGetKeyOwnerData = [[ImGuiKeyOwnerData* igGetKeyOwnerData(ImGuiContext* ctx,ImGuiKey key);]],
		igIsKeyDown_ID = [[_Bool igIsKeyDown_ID(ImGuiKey key,ImGuiID owner_id);]],
		igIsKeyPressed_InputFlags = [[_Bool igIsKeyPressed_InputFlags(ImGuiKey key,ImGuiInputFlags flags,ImGuiID owner_id);]],
		igIsKeyReleased_ID = [[_Bool igIsKeyReleased_ID(ImGuiKey key,ImGuiID owner_id);]],
		igIsKeyChordPressed_InputFlags = [[_Bool igIsKeyChordPressed_InputFlags(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);]],
		igIsMouseDown_ID = [[_Bool igIsMouseDown_ID(ImGuiMouseButton button,ImGuiID owner_id);]],
		igIsMouseClicked_InputFlags = [[_Bool igIsMouseClicked_InputFlags(ImGuiMouseButton button,ImGuiInputFlags flags,ImGuiID owner_id);]],
		igIsMouseReleased_ID = [[_Bool igIsMouseReleased_ID(ImGuiMouseButton button,ImGuiID owner_id);]],
		igIsMouseDoubleClicked_ID = [[_Bool igIsMouseDoubleClicked_ID(ImGuiMouseButton button,ImGuiID owner_id);]],
		igShortcut_ID = [[_Bool igShortcut_ID(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);]],
		igSetShortcutRouting = [[_Bool igSetShortcutRouting(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);]],
		igTestShortcutRouting = [[_Bool igTestShortcutRouting(ImGuiKeyChord key_chord,ImGuiID owner_id);]],
		igGetShortcutRoutingData = [[ImGuiKeyRoutingData* igGetShortcutRoutingData(ImGuiKeyChord key_chord);]],
		igDockContextInitialize = [[void igDockContextInitialize(ImGuiContext* ctx);]],
		igDockContextShutdown = [[void igDockContextShutdown(ImGuiContext* ctx);]],
		igDockContextClearNodes = [[void igDockContextClearNodes(ImGuiContext* ctx,ImGuiID root_id, _Bool clear_settings_refs);]],
		igDockContextRebuildNodes = [[void igDockContextRebuildNodes(ImGuiContext* ctx);]],
		igDockContextNewFrameUpdateUndocking = [[void igDockContextNewFrameUpdateUndocking(ImGuiContext* ctx);]],
		igDockContextNewFrameUpdateDocking = [[void igDockContextNewFrameUpdateDocking(ImGuiContext* ctx);]],
		igDockContextEndFrame = [[void igDockContextEndFrame(ImGuiContext* ctx);]],
		igDockContextGenNodeID = [[ImGuiID igDockContextGenNodeID(ImGuiContext* ctx);]],
		igDockContextQueueDock = [[void igDockContextQueueDock(ImGuiContext* ctx,ImGuiWindow* target,ImGuiDockNode* target_node,ImGuiWindow* payload,ImGuiDir split_dir,float split_ratio, _Bool split_outer);]],
		igDockContextQueueUndockWindow = [[void igDockContextQueueUndockWindow(ImGuiContext* ctx,ImGuiWindow* window);]],
		igDockContextQueueUndockNode = [[void igDockContextQueueUndockNode(ImGuiContext* ctx,ImGuiDockNode* node);]],
		igDockContextProcessUndockWindow = [[void igDockContextProcessUndockWindow(ImGuiContext* ctx,ImGuiWindow* window, _Bool clear_persistent_docking_ref);]],
		igDockContextProcessUndockNode = [[void igDockContextProcessUndockNode(ImGuiContext* ctx,ImGuiDockNode* node);]],
		igDockContextCalcDropPosForDocking = [[_Bool igDockContextCalcDropPosForDocking(ImGuiWindow* target,ImGuiDockNode* target_node,ImGuiWindow* payload_window,ImGuiDockNode* payload_node,ImGuiDir split_dir, _Bool split_outer,ImVec2* out_pos);]],
		igDockContextFindNodeByID = [[ImGuiDockNode* igDockContextFindNodeByID(ImGuiContext* ctx,ImGuiID id);]],
		igDockNodeWindowMenuHandler_Default = [[void igDockNodeWindowMenuHandler_Default(ImGuiContext* ctx,ImGuiDockNode* node,ImGuiTabBar* tab_bar);]],
		igDockNodeBeginAmendTabBar = [[_Bool igDockNodeBeginAmendTabBar(ImGuiDockNode* node);]],
		igDockNodeEndAmendTabBar = [[void igDockNodeEndAmendTabBar();]],
		igDockNodeGetRootNode = [[ImGuiDockNode* igDockNodeGetRootNode(ImGuiDockNode* node);]],
		igDockNodeIsInHierarchyOf = [[_Bool igDockNodeIsInHierarchyOf(ImGuiDockNode* node,ImGuiDockNode* parent);]],
		igDockNodeGetDepth = [[int igDockNodeGetDepth(const ImGuiDockNode* node);]],
		igDockNodeGetWindowMenuButtonId = [[ImGuiID igDockNodeGetWindowMenuButtonId(const ImGuiDockNode* node);]],
		igGetWindowDockNode = [[ImGuiDockNode* igGetWindowDockNode();]],
		igGetWindowAlwaysWantOwnTabBar = [[_Bool igGetWindowAlwaysWantOwnTabBar(ImGuiWindow* window);]],
		igBeginDocked = [[void igBeginDocked(ImGuiWindow* window, _Bool * p_open);]],
		igBeginDockableDragDropSource = [[void igBeginDockableDragDropSource(ImGuiWindow* window);]],
		igBeginDockableDragDropTarget = [[void igBeginDockableDragDropTarget(ImGuiWindow* window);]],
		igSetWindowDock = [[void igSetWindowDock(ImGuiWindow* window,ImGuiID dock_id,ImGuiCond cond);]],
		igDockBuilderDockWindow = [[void igDockBuilderDockWindow(const char* window_name,ImGuiID node_id);]],
		igDockBuilderGetNode = [[ImGuiDockNode* igDockBuilderGetNode(ImGuiID node_id);]],
		igDockBuilderGetCentralNode = [[ImGuiDockNode* igDockBuilderGetCentralNode(ImGuiID node_id);]],
		igDockBuilderAddNode = [[ImGuiID igDockBuilderAddNode(ImGuiID node_id,ImGuiDockNodeFlags flags);]],
		igDockBuilderRemoveNode = [[void igDockBuilderRemoveNode(ImGuiID node_id);]],
		igDockBuilderRemoveNodeDockedWindows = [[void igDockBuilderRemoveNodeDockedWindows(ImGuiID node_id, _Bool clear_settings_refs);]],
		igDockBuilderRemoveNodeChildNodes = [[void igDockBuilderRemoveNodeChildNodes(ImGuiID node_id);]],
		igDockBuilderSetNodePos = [[void igDockBuilderSetNodePos(ImGuiID node_id,ImVec2 pos);]],
		igDockBuilderSetNodeSize = [[void igDockBuilderSetNodeSize(ImGuiID node_id,ImVec2 size);]],
		igDockBuilderSplitNode = [[ImGuiID igDockBuilderSplitNode(ImGuiID node_id,ImGuiDir split_dir,float size_ratio_for_node_at_dir,ImGuiID* out_id_at_dir,ImGuiID* out_id_at_opposite_dir);]],
		igDockBuilderCopyDockSpace = [[void igDockBuilderCopyDockSpace(ImGuiID src_dockspace_id,ImGuiID dst_dockspace_id,ImVector_const_charPtr* in_window_remap_pairs);]],
		igDockBuilderCopyNode = [[void igDockBuilderCopyNode(ImGuiID src_node_id,ImGuiID dst_node_id,ImVector_ImGuiID* out_node_remap_pairs);]],
		igDockBuilderCopyWindowSettings = [[void igDockBuilderCopyWindowSettings(const char* src_name,const char* dst_name);]],
		igDockBuilderFinish = [[void igDockBuilderFinish(ImGuiID node_id);]],
		igPushFocusScope = [[void igPushFocusScope(ImGuiID id);]],
		igPopFocusScope = [[void igPopFocusScope();]],
		igGetCurrentFocusScope = [[ImGuiID igGetCurrentFocusScope();]],
		igIsDragDropActive = [[_Bool igIsDragDropActive();]],
		igBeginDragDropTargetCustom = [[_Bool igBeginDragDropTargetCustom(const ImRect bb,ImGuiID id);]],
		igClearDragDrop = [[void igClearDragDrop();]],
		igIsDragDropPayloadBeingAccepted = [[_Bool igIsDragDropPayloadBeingAccepted();]],
		igRenderDragDropTargetRect = [[void igRenderDragDropTargetRect(const ImRect bb,const ImRect item_clip_rect);]],
		igGetTypingSelectRequest = [[ImGuiTypingSelectRequest* igGetTypingSelectRequest(ImGuiTypingSelectFlags flags);]],
		igTypingSelectFindMatch = [[int igTypingSelectFindMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data,int nav_item_idx);]],
		igTypingSelectFindNextSingleCharMatch = [[int igTypingSelectFindNextSingleCharMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data,int nav_item_idx);]],
		igTypingSelectFindBestLeadingMatch = [[int igTypingSelectFindBestLeadingMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data);]],
		igBeginBoxSelect = [[_Bool igBeginBoxSelect(const ImRect scope_rect,ImGuiWindow* window,ImGuiID box_select_id,ImGuiMultiSelectFlags ms_flags);]],
		igEndBoxSelect = [[void igEndBoxSelect(const ImRect scope_rect,ImGuiMultiSelectFlags ms_flags);]],
		igMultiSelectItemHeader = [[void igMultiSelectItemHeader(ImGuiID id, _Bool * p_selected,ImGuiButtonFlags* p_button_flags);]],
		igMultiSelectItemFooter = [[void igMultiSelectItemFooter(ImGuiID id, _Bool * p_selected, _Bool * p_pressed);]],
		igMultiSelectAddSetAll = [[void igMultiSelectAddSetAll(ImGuiMultiSelectTempData* ms, _Bool selected);]],
		igMultiSelectAddSetRange = [[void igMultiSelectAddSetRange(ImGuiMultiSelectTempData* ms, _Bool selected,int range_dir,ImGuiSelectionUserData first_item,ImGuiSelectionUserData last_item);]],
		igGetBoxSelectState = [[ImGuiBoxSelectState* igGetBoxSelectState(ImGuiID id);]],
		igGetMultiSelectState = [[ImGuiMultiSelectState* igGetMultiSelectState(ImGuiID id);]],
		igSetWindowClipRectBeforeSetChannel = [[void igSetWindowClipRectBeforeSetChannel(ImGuiWindow* window,const ImRect clip_rect);]],
		igBeginColumns = [[void igBeginColumns(const char* str_id,int count,ImGuiOldColumnFlags flags);]],
		igEndColumns = [[void igEndColumns();]],
		igPushColumnClipRect = [[void igPushColumnClipRect(int column_index);]],
		igPushColumnsBackground = [[void igPushColumnsBackground();]],
		igPopColumnsBackground = [[void igPopColumnsBackground();]],
		igGetColumnsID = [[ImGuiID igGetColumnsID(const char* str_id,int count);]],
		igFindOrCreateColumns = [[ImGuiOldColumns* igFindOrCreateColumns(ImGuiWindow* window,ImGuiID id);]],
		igGetColumnOffsetFromNorm = [[float igGetColumnOffsetFromNorm(const ImGuiOldColumns* columns,float offset_norm);]],
		igGetColumnNormFromOffset = [[float igGetColumnNormFromOffset(const ImGuiOldColumns* columns,float offset);]],
		igTableOpenContextMenu = [[void igTableOpenContextMenu(int column_n);]],
		igTableSetColumnWidth = [[void igTableSetColumnWidth(int column_n,float width);]],
		igTableSetColumnSortDirection = [[void igTableSetColumnSortDirection(int column_n,ImGuiSortDirection sort_direction, _Bool append_to_sort_specs);]],
		igTableGetHoveredRow = [[int igTableGetHoveredRow();]],
		igTableGetHeaderRowHeight = [[float igTableGetHeaderRowHeight();]],
		igTableGetHeaderAngledMaxLabelWidth = [[float igTableGetHeaderAngledMaxLabelWidth();]],
		igTablePushBackgroundChannel = [[void igTablePushBackgroundChannel();]],
		igTablePopBackgroundChannel = [[void igTablePopBackgroundChannel();]],
		igTableAngledHeadersRowEx = [[void igTableAngledHeadersRowEx(ImGuiID row_id,float angle,float max_label_width,const ImGuiTableHeaderData* data,int data_count);]],
		igGetCurrentTable = [[ImGuiTable* igGetCurrentTable();]],
		igTableFindByID = [[ImGuiTable* igTableFindByID(ImGuiID id);]],
		igBeginTableEx = [[_Bool igBeginTableEx(const char* name,ImGuiID id,int columns_count,ImGuiTableFlags flags,const ImVec2 outer_size,float inner_width);]],
		igTableBeginInitMemory = [[void igTableBeginInitMemory(ImGuiTable* table,int columns_count);]],
		igTableBeginApplyRequests = [[void igTableBeginApplyRequests(ImGuiTable* table);]],
		igTableSetupDrawChannels = [[void igTableSetupDrawChannels(ImGuiTable* table);]],
		igTableUpdateLayout = [[void igTableUpdateLayout(ImGuiTable* table);]],
		igTableUpdateBorders = [[void igTableUpdateBorders(ImGuiTable* table);]],
		igTableUpdateColumnsWeightFromWidth = [[void igTableUpdateColumnsWeightFromWidth(ImGuiTable* table);]],
		igTableDrawBorders = [[void igTableDrawBorders(ImGuiTable* table);]],
		igTableDrawDefaultContextMenu = [[void igTableDrawDefaultContextMenu(ImGuiTable* table,ImGuiTableFlags flags_for_section_to_display);]],
		igTableBeginContextMenuPopup = [[_Bool igTableBeginContextMenuPopup(ImGuiTable* table);]],
		igTableMergeDrawChannels = [[void igTableMergeDrawChannels(ImGuiTable* table);]],
		igTableGetInstanceData = [[ImGuiTableInstanceData* igTableGetInstanceData(ImGuiTable* table,int instance_no);]],
		igTableGetInstanceID = [[ImGuiID igTableGetInstanceID(ImGuiTable* table,int instance_no);]],
		igTableSortSpecsSanitize = [[void igTableSortSpecsSanitize(ImGuiTable* table);]],
		igTableSortSpecsBuild = [[void igTableSortSpecsBuild(ImGuiTable* table);]],
		igTableGetColumnNextSortDirection = [[ImGuiSortDirection igTableGetColumnNextSortDirection(ImGuiTableColumn* column);]],
		igTableFixColumnSortDirection = [[void igTableFixColumnSortDirection(ImGuiTable* table,ImGuiTableColumn* column);]],
		igTableGetColumnWidthAuto = [[float igTableGetColumnWidthAuto(ImGuiTable* table,ImGuiTableColumn* column);]],
		igTableBeginRow = [[void igTableBeginRow(ImGuiTable* table);]],
		igTableEndRow = [[void igTableEndRow(ImGuiTable* table);]],
		igTableBeginCell = [[void igTableBeginCell(ImGuiTable* table,int column_n);]],
		igTableEndCell = [[void igTableEndCell(ImGuiTable* table);]],
		igTableGetCellBgRect = [[void igTableGetCellBgRect(ImRect *pOut,const ImGuiTable* table,int column_n);]],
		igTableGetColumnName_TablePtr = [[const char* igTableGetColumnName_TablePtr(const ImGuiTable* table,int column_n);]],
		igTableGetColumnResizeID = [[ImGuiID igTableGetColumnResizeID(ImGuiTable* table,int column_n,int instance_no);]],
		igTableCalcMaxColumnWidth = [[float igTableCalcMaxColumnWidth(const ImGuiTable* table,int column_n);]],
		igTableSetColumnWidthAutoSingle = [[void igTableSetColumnWidthAutoSingle(ImGuiTable* table,int column_n);]],
		igTableSetColumnWidthAutoAll = [[void igTableSetColumnWidthAutoAll(ImGuiTable* table);]],
		igTableRemove = [[void igTableRemove(ImGuiTable* table);]],
		igTableGcCompactTransientBuffers_TablePtr = [[void igTableGcCompactTransientBuffers_TablePtr(ImGuiTable* table);]],
		igTableGcCompactTransientBuffers_TableTempDataPtr = [[void igTableGcCompactTransientBuffers_TableTempDataPtr(ImGuiTableTempData* table);]],
		igTableGcCompactSettings = [[void igTableGcCompactSettings();]],
		igTableLoadSettings = [[void igTableLoadSettings(ImGuiTable* table);]],
		igTableSaveSettings = [[void igTableSaveSettings(ImGuiTable* table);]],
		igTableResetSettings = [[void igTableResetSettings(ImGuiTable* table);]],
		igTableGetBoundSettings = [[ImGuiTableSettings* igTableGetBoundSettings(ImGuiTable* table);]],
		igTableSettingsAddSettingsHandler = [[void igTableSettingsAddSettingsHandler();]],
		igTableSettingsCreate = [[ImGuiTableSettings* igTableSettingsCreate(ImGuiID id,int columns_count);]],
		igTableSettingsFindByID = [[ImGuiTableSettings* igTableSettingsFindByID(ImGuiID id);]],
		igGetCurrentTabBar = [[ImGuiTabBar* igGetCurrentTabBar();]],
		igBeginTabBarEx = [[_Bool igBeginTabBarEx(ImGuiTabBar* tab_bar,const ImRect bb,ImGuiTabBarFlags flags);]],
		igTabBarFindTabByID = [[ImGuiTabItem* igTabBarFindTabByID(ImGuiTabBar* tab_bar,ImGuiID tab_id);]],
		igTabBarFindTabByOrder = [[ImGuiTabItem* igTabBarFindTabByOrder(ImGuiTabBar* tab_bar,int order);]],
		igTabBarFindMostRecentlySelectedTabForActiveWindow = [[ImGuiTabItem* igTabBarFindMostRecentlySelectedTabForActiveWindow(ImGuiTabBar* tab_bar);]],
		igTabBarGetCurrentTab = [[ImGuiTabItem* igTabBarGetCurrentTab(ImGuiTabBar* tab_bar);]],
		igTabBarGetTabOrder = [[int igTabBarGetTabOrder(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);]],
		igTabBarGetTabName = [[const char* igTabBarGetTabName(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);]],
		igTabBarAddTab = [[void igTabBarAddTab(ImGuiTabBar* tab_bar,ImGuiTabItemFlags tab_flags,ImGuiWindow* window);]],
		igTabBarRemoveTab = [[void igTabBarRemoveTab(ImGuiTabBar* tab_bar,ImGuiID tab_id);]],
		igTabBarCloseTab = [[void igTabBarCloseTab(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);]],
		igTabBarQueueFocus_TabItemPtr = [[void igTabBarQueueFocus_TabItemPtr(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);]],
		igTabBarQueueFocus_Str = [[void igTabBarQueueFocus_Str(ImGuiTabBar* tab_bar,const char* tab_name);]],
		igTabBarQueueReorder = [[void igTabBarQueueReorder(ImGuiTabBar* tab_bar,ImGuiTabItem* tab,int offset);]],
		igTabBarQueueReorderFromMousePos = [[void igTabBarQueueReorderFromMousePos(ImGuiTabBar* tab_bar,ImGuiTabItem* tab,ImVec2 mouse_pos);]],
		igTabBarProcessReorder = [[_Bool igTabBarProcessReorder(ImGuiTabBar* tab_bar);]],
		igTabItemEx = [[_Bool igTabItemEx(ImGuiTabBar* tab_bar,const char* label, _Bool * p_open,ImGuiTabItemFlags flags,ImGuiWindow* docked_window);]],
		igTabItemSpacing = [[void igTabItemSpacing(const char* str_id,ImGuiTabItemFlags flags,float width);]],
		igTabItemCalcSize_Str = [[void igTabItemCalcSize_Str(ImVec2 *pOut,const char* label, _Bool has_close_button_or_unsaved_marker);]],
		igTabItemCalcSize_WindowPtr = [[void igTabItemCalcSize_WindowPtr(ImVec2 *pOut,ImGuiWindow* window);]],
		igTabItemBackground = [[void igTabItemBackground(ImDrawList* draw_list,const ImRect bb,ImGuiTabItemFlags flags,ImU32 col);]],
		igTabItemLabelAndCloseButton = [[void igTabItemLabelAndCloseButton(ImDrawList* draw_list,const ImRect bb,ImGuiTabItemFlags flags,ImVec2 frame_padding,const char* label,ImGuiID tab_id,ImGuiID close_button_id, _Bool is_contents_visible, _Bool * out_just_closed, _Bool * out_text_clipped);]],
		igRenderText = [[void igRenderText(ImVec2 pos,const char* text,const char* text_end, _Bool hide_text_after_hash);]],
		igRenderTextWrapped = [[void igRenderTextWrapped(ImVec2 pos,const char* text,const char* text_end,float wrap_width);]],
		igRenderTextClipped = [[void igRenderTextClipped(const ImVec2 pos_min,const ImVec2 pos_max,const char* text,const char* text_end,const ImVec2* text_size_if_known,const ImVec2 align,const ImRect* clip_rect);]],
		igRenderTextClippedEx = [[void igRenderTextClippedEx(ImDrawList* draw_list,const ImVec2 pos_min,const ImVec2 pos_max,const char* text,const char* text_end,const ImVec2* text_size_if_known,const ImVec2 align,const ImRect* clip_rect);]],
		igRenderTextEllipsis = [[void igRenderTextEllipsis(ImDrawList* draw_list,const ImVec2 pos_min,const ImVec2 pos_max,float clip_max_x,float ellipsis_max_x,const char* text,const char* text_end,const ImVec2* text_size_if_known);]],
		igRenderFrame = [[void igRenderFrame(ImVec2 p_min,ImVec2 p_max,ImU32 fill_col, _Bool borders,float rounding);]],
		igRenderFrameBorder = [[void igRenderFrameBorder(ImVec2 p_min,ImVec2 p_max,float rounding);]],
		igRenderColorRectWithAlphaCheckerboard = [[void igRenderColorRectWithAlphaCheckerboard(ImDrawList* draw_list,ImVec2 p_min,ImVec2 p_max,ImU32 fill_col,float grid_step,ImVec2 grid_off,float rounding,ImDrawFlags flags);]],
		igRenderNavCursor = [[void igRenderNavCursor(const ImRect bb,ImGuiID id,ImGuiNavRenderCursorFlags flags);]],
		igFindRenderedTextEnd = [[const char* igFindRenderedTextEnd(const char* text,const char* text_end);]],
		igRenderMouseCursor = [[void igRenderMouseCursor(ImVec2 pos,float scale,ImGuiMouseCursor mouse_cursor,ImU32 col_fill,ImU32 col_border,ImU32 col_shadow);]],
		igRenderArrow = [[void igRenderArrow(ImDrawList* draw_list,ImVec2 pos,ImU32 col,ImGuiDir dir,float scale);]],
		igRenderBullet = [[void igRenderBullet(ImDrawList* draw_list,ImVec2 pos,ImU32 col);]],
		igRenderCheckMark = [[void igRenderCheckMark(ImDrawList* draw_list,ImVec2 pos,ImU32 col,float sz);]],
		igRenderArrowPointingAt = [[void igRenderArrowPointingAt(ImDrawList* draw_list,ImVec2 pos,ImVec2 half_sz,ImGuiDir direction,ImU32 col);]],
		igRenderArrowDockMenu = [[void igRenderArrowDockMenu(ImDrawList* draw_list,ImVec2 p_min,float sz,ImU32 col);]],
		igRenderRectFilledRangeH = [[void igRenderRectFilledRangeH(ImDrawList* draw_list,const ImRect rect,ImU32 col,float x_start_norm,float x_end_norm,float rounding);]],
		igRenderRectFilledWithHole = [[void igRenderRectFilledWithHole(ImDrawList* draw_list,const ImRect outer,const ImRect inner,ImU32 col,float rounding);]],
		igCalcRoundingFlagsForRectInRect = [[ImDrawFlags igCalcRoundingFlagsForRectInRect(const ImRect r_in,const ImRect r_outer,float threshold);]],
		igTextEx = [[void igTextEx(const char* text,const char* text_end,ImGuiTextFlags flags);]],
		igButtonEx = [[_Bool igButtonEx(const char* label,const ImVec2 size_arg,ImGuiButtonFlags flags);]],
		igArrowButtonEx = [[_Bool igArrowButtonEx(const char* str_id,ImGuiDir dir,ImVec2 size_arg,ImGuiButtonFlags flags);]],
		igImageButtonEx = [[_Bool igImageButtonEx(ImGuiID id,ImTextureID user_texture_id,const ImVec2 image_size,const ImVec2 uv0,const ImVec2 uv1,const ImVec4 bg_col,const ImVec4 tint_col,ImGuiButtonFlags flags);]],
		igSeparatorEx = [[void igSeparatorEx(ImGuiSeparatorFlags flags,float thickness);]],
		igSeparatorTextEx = [[void igSeparatorTextEx(ImGuiID id,const char* label,const char* label_end,float extra_width);]],
		igCheckboxFlags_S64Ptr = [[_Bool igCheckboxFlags_S64Ptr(const char* label,ImS64* flags,ImS64 flags_value);]],
		igCheckboxFlags_U64Ptr = [[_Bool igCheckboxFlags_U64Ptr(const char* label,ImU64* flags,ImU64 flags_value);]],
		igCloseButton = [[_Bool igCloseButton(ImGuiID id,const ImVec2 pos);]],
		igCollapseButton = [[_Bool igCollapseButton(ImGuiID id,const ImVec2 pos,ImGuiDockNode* dock_node);]],
		igScrollbar = [[void igScrollbar(ImGuiAxis axis);]],
		igScrollbarEx = [[_Bool igScrollbarEx(const ImRect bb,ImGuiID id,ImGuiAxis axis,ImS64* p_scroll_v,ImS64 avail_v,ImS64 contents_v,ImDrawFlags draw_rounding_flags);]],
		igGetWindowScrollbarRect = [[void igGetWindowScrollbarRect(ImRect *pOut,ImGuiWindow* window,ImGuiAxis axis);]],
		igGetWindowScrollbarID = [[ImGuiID igGetWindowScrollbarID(ImGuiWindow* window,ImGuiAxis axis);]],
		igGetWindowResizeCornerID = [[ImGuiID igGetWindowResizeCornerID(ImGuiWindow* window,int n);]],
		igGetWindowResizeBorderID = [[ImGuiID igGetWindowResizeBorderID(ImGuiWindow* window,ImGuiDir dir);]],
		igButtonBehavior = [[_Bool igButtonBehavior(const ImRect bb,ImGuiID id, _Bool * out_hovered, _Bool * out_held,ImGuiButtonFlags flags);]],
		igDragBehavior = [[_Bool igDragBehavior(ImGuiID id,ImGuiDataType data_type,void* p_v,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);]],
		igSliderBehavior = [[_Bool igSliderBehavior(const ImRect bb,ImGuiID id,ImGuiDataType data_type,void* p_v,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags,ImRect* out_grab_bb);]],
		igSplitterBehavior = [[_Bool igSplitterBehavior(const ImRect bb,ImGuiID id,ImGuiAxis axis,float* size1,float* size2,float min_size1,float min_size2,float hover_extend,float hover_visibility_delay,ImU32 bg_col);]],
		igTreeNodeBehavior = [[_Bool igTreeNodeBehavior(ImGuiID id,ImGuiTreeNodeFlags flags,const char* label,const char* label_end);]],
		igTreePushOverrideID = [[void igTreePushOverrideID(ImGuiID id);]],
		igTreeNodeGetOpen = [[_Bool igTreeNodeGetOpen(ImGuiID storage_id);]],
		igTreeNodeSetOpen = [[void igTreeNodeSetOpen(ImGuiID storage_id, _Bool open);]],
		igTreeNodeUpdateNextOpen = [[_Bool igTreeNodeUpdateNextOpen(ImGuiID storage_id,ImGuiTreeNodeFlags flags);]],
		igDataTypeGetInfo = [[const ImGuiDataTypeInfo* igDataTypeGetInfo(ImGuiDataType data_type);]],
		igDataTypeFormatString = [[int igDataTypeFormatString(char* buf,int buf_size,ImGuiDataType data_type,const void* p_data,const char* format);]],
		igDataTypeApplyOp = [[void igDataTypeApplyOp(ImGuiDataType data_type,int op,void* output,const void* arg_1,const void* arg_2);]],
		igDataTypeApplyFromText = [[_Bool igDataTypeApplyFromText(const char* buf,ImGuiDataType data_type,void* p_data,const char* format,void* p_data_when_empty);]],
		igDataTypeCompare = [[int igDataTypeCompare(ImGuiDataType data_type,const void* arg_1,const void* arg_2);]],
		igDataTypeClamp = [[_Bool igDataTypeClamp(ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max);]],
		igDataTypeIsZero = [[_Bool igDataTypeIsZero(ImGuiDataType data_type,const void* p_data);]],
		igInputTextEx = [[_Bool igInputTextEx(const char* label,const char* hint,char* buf,int buf_size,const ImVec2 size_arg,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);]],
		igInputTextDeactivateHook = [[void igInputTextDeactivateHook(ImGuiID id);]],
		igTempInputText = [[_Bool igTempInputText(const ImRect bb,ImGuiID id,const char* label,char* buf,int buf_size,ImGuiInputTextFlags flags);]],
		igTempInputScalar = [[_Bool igTempInputScalar(const ImRect bb,ImGuiID id,const char* label,ImGuiDataType data_type,void* p_data,const char* format,const void* p_clamp_min,const void* p_clamp_max);]],
		igTempInputIsActive = [[_Bool igTempInputIsActive(ImGuiID id);]],
		igGetInputTextState = [[ImGuiInputTextState* igGetInputTextState(ImGuiID id);]],
		igSetNextItemRefVal = [[void igSetNextItemRefVal(ImGuiDataType data_type,void* p_data);]],
		igIsItemActiveAsInputText = [[_Bool igIsItemActiveAsInputText();]],
		igColorTooltip = [[void igColorTooltip(const char* text,const float* col,ImGuiColorEditFlags flags);]],
		igColorEditOptionsPopup = [[void igColorEditOptionsPopup(const float* col,ImGuiColorEditFlags flags);]],
		igColorPickerOptionsPopup = [[void igColorPickerOptionsPopup(const float* ref_col,ImGuiColorEditFlags flags);]],
		float = [[int igPlotEx(ImGuiPlotType plot_type,const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,const ImVec2 size_arg);]],
		igShadeVertsLinearColorGradientKeepAlpha = [[void igShadeVertsLinearColorGradientKeepAlpha(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,ImVec2 gradient_p0,ImVec2 gradient_p1,ImU32 col0,ImU32 col1);]],
		igShadeVertsLinearUV = [[void igShadeVertsLinearUV(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,const ImVec2 a,const ImVec2 b,const ImVec2 uv_a,const ImVec2 uv_b, _Bool clamp);]],
		igShadeVertsTransformPos = [[void igShadeVertsTransformPos(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,const ImVec2 pivot_in,float cos_a,float sin_a,const ImVec2 pivot_out);]],
		igGcCompactTransientMiscBuffers = [[void igGcCompactTransientMiscBuffers();]],
		igGcCompactTransientWindowBuffers = [[void igGcCompactTransientWindowBuffers(ImGuiWindow* window);]],
		igGcAwakeTransientWindowBuffers = [[void igGcAwakeTransientWindowBuffers(ImGuiWindow* window);]],
		igErrorLog = [[_Bool igErrorLog(const char* msg);]],
		igErrorRecoveryStoreState = [[void igErrorRecoveryStoreState(ImGuiErrorRecoveryState* state_out);]],
		igErrorRecoveryTryToRecoverState = [[void igErrorRecoveryTryToRecoverState(const ImGuiErrorRecoveryState* state_in);]],
		igErrorRecoveryTryToRecoverWindowState = [[void igErrorRecoveryTryToRecoverWindowState(const ImGuiErrorRecoveryState* state_in);]],
		igErrorCheckUsingSetCursorPosToExtendParentBoundaries = [[void igErrorCheckUsingSetCursorPosToExtendParentBoundaries();]],
		igErrorCheckEndFrameFinalizeErrorTooltip = [[void igErrorCheckEndFrameFinalizeErrorTooltip();]],
		igBeginErrorTooltip = [[_Bool igBeginErrorTooltip();]],
		igEndErrorTooltip = [[void igEndErrorTooltip();]],
		igDebugAllocHook = [[void igDebugAllocHook(ImGuiDebugAllocInfo* info,int frame_count,void* ptr,size_t size);]],
		igDebugDrawCursorPos = [[void igDebugDrawCursorPos(ImU32 col);]],
		igDebugDrawLineExtents = [[void igDebugDrawLineExtents(ImU32 col);]],
		igDebugDrawItemRect = [[void igDebugDrawItemRect(ImU32 col);]],
		igDebugTextUnformattedWithLocateItem = [[void igDebugTextUnformattedWithLocateItem(const char* line_begin,const char* line_end);]],
		igDebugLocateItem = [[void igDebugLocateItem(ImGuiID target_id);]],
		igDebugLocateItemOnHover = [[void igDebugLocateItemOnHover(ImGuiID target_id);]],
		igDebugLocateItemResolveWithLastItem = [[void igDebugLocateItemResolveWithLastItem();]],
		igDebugBreakClearData = [[void igDebugBreakClearData();]],
		igDebugBreakButton = [[_Bool igDebugBreakButton(const char* label,const char* description_of_location);]],
		igDebugBreakButtonTooltip = [[void igDebugBreakButtonTooltip(_Bool keyboard_only,const char* description_of_location);]],
		igShowFontAtlas = [[void igShowFontAtlas(ImFontAtlas* atlas);]],
		igDebugHookIdInfo = [[void igDebugHookIdInfo(ImGuiID id,ImGuiDataType data_type,const void* data_id,const void* data_id_end);]],
		igDebugNodeColumns = [[void igDebugNodeColumns(ImGuiOldColumns* columns);]],
		igDebugNodeDockNode = [[void igDebugNodeDockNode(ImGuiDockNode* node,const char* label);]],
		igDebugNodeDrawList = [[void igDebugNodeDrawList(ImGuiWindow* window,ImGuiViewportP* viewport,const ImDrawList* draw_list,const char* label);]],
		igDebugNodeDrawCmdShowMeshAndBoundingBox = [[void igDebugNodeDrawCmdShowMeshAndBoundingBox(ImDrawList* out_draw_list,const ImDrawList* draw_list,const ImDrawCmd* draw_cmd, _Bool show_mesh, _Bool show_aabb);]],
		igDebugNodeFont = [[void igDebugNodeFont(ImFont* font);]],
		igDebugNodeFontGlyph = [[void igDebugNodeFontGlyph(ImFont* font,const ImFontGlyph* glyph);]],
		igDebugNodeStorage = [[void igDebugNodeStorage(ImGuiStorage* storage,const char* label);]],
		igDebugNodeTabBar = [[void igDebugNodeTabBar(ImGuiTabBar* tab_bar,const char* label);]],
		igDebugNodeTable = [[void igDebugNodeTable(ImGuiTable* table);]],
		igDebugNodeTableSettings = [[void igDebugNodeTableSettings(ImGuiTableSettings* settings);]],
		igDebugNodeInputTextState = [[void igDebugNodeInputTextState(ImGuiInputTextState* state);]],
		igDebugNodeTypingSelectState = [[void igDebugNodeTypingSelectState(ImGuiTypingSelectState* state);]],
		igDebugNodeMultiSelectState = [[void igDebugNodeMultiSelectState(ImGuiMultiSelectState* state);]],
		igDebugNodeWindow = [[void igDebugNodeWindow(ImGuiWindow* window,const char* label);]],
		igDebugNodeWindowSettings = [[void igDebugNodeWindowSettings(ImGuiWindowSettings* settings);]],
		igDebugNodeWindowsList = [[void igDebugNodeWindowsList(ImVector_ImGuiWindowPtr* windows,const char* label);]],
		igDebugNodeWindowsListByBeginStackParent = [[void igDebugNodeWindowsListByBeginStackParent(ImGuiWindow** windows,int windows_size,ImGuiWindow* parent_in_begin_stack);]],
		igDebugNodeViewport = [[void igDebugNodeViewport(ImGuiViewportP* viewport);]],
		igDebugNodePlatformMonitor = [[void igDebugNodePlatformMonitor(ImGuiPlatformMonitor* monitor,const char* label,int idx);]],
		igDebugRenderKeyboardPreview = [[void igDebugRenderKeyboardPreview(ImDrawList* draw_list);]],
		igDebugRenderViewportThumbnail = [[void igDebugRenderViewportThumbnail(ImDrawList* draw_list,ImGuiViewportP* viewport,const ImRect bb);]],
		igImFontAtlasGetBuilderForStbTruetype = [[const ImFontBuilderIO* igImFontAtlasGetBuilderForStbTruetype();]],
		igImFontAtlasUpdateSourcesPointers = [[void igImFontAtlasUpdateSourcesPointers(ImFontAtlas* atlas);]],
		igImFontAtlasBuildInit = [[void igImFontAtlasBuildInit(ImFontAtlas* atlas);]],
		igImFontAtlasBuildSetupFont = [[void igImFontAtlasBuildSetupFont(ImFontAtlas* atlas,ImFont* font,ImFontConfig* src,float ascent,float descent);]],
		igImFontAtlasBuildPackCustomRects = [[void igImFontAtlasBuildPackCustomRects(ImFontAtlas* atlas,void* stbrp_context_opaque);]],
		igImFontAtlasBuildFinish = [[void igImFontAtlasBuildFinish(ImFontAtlas* atlas);]],
		igImFontAtlasBuildRender8bppRectFromString = [[void igImFontAtlasBuildRender8bppRectFromString(ImFontAtlas* atlas,int x,int y,int w,int h,const char* in_str,char in_marker_char,unsigned char in_marker_pixel_value);]],
		igImFontAtlasBuildRender32bppRectFromString = [[void igImFontAtlasBuildRender32bppRectFromString(ImFontAtlas* atlas,int x,int y,int w,int h,const char* in_str,char in_marker_char,unsigned int in_marker_pixel_value);]],
		igImFontAtlasBuildMultiplyCalcLookupTable = [[void igImFontAtlasBuildMultiplyCalcLookupTable(unsigned char out_table[256],float in_multiply_factor);]],
		igImFontAtlasBuildMultiplyRectAlpha8 = [[void igImFontAtlasBuildMultiplyRectAlpha8(const unsigned char table[256],unsigned char* pixels,int x,int y,int w,int h,int stride);]],
		igImFontAtlasBuildGetOversampleFactors = [[void igImFontAtlasBuildGetOversampleFactors(const ImFontConfig* src,int* out_oversample_h,int* out_oversample_v);]],
		igImFontAtlasGetMouseCursorTexData = [[_Bool igImFontAtlasGetMouseCursorTexData(ImFontAtlas* atlas,ImGuiMouseCursor cursor_type,ImVec2* out_offset,ImVec2* out_size,ImVec2 out_uv_border[2],ImVec2 out_uv_fill[2]);]],
		igLogText = [[void igLogText(const char *fmt, ...);]],
		ImGuiTextBuffer_appendf = [[void ImGuiTextBuffer_appendf(ImGuiTextBuffer *self, const char *fmt, ...);]],
		igGET_FLT_MAX = [[float igGET_FLT_MAX();]],
		igGET_FLT_MIN = [[float igGET_FLT_MIN();]],
		ImVector_ImWchar_create = [[ImVector_ImWchar* ImVector_ImWchar_create();]],
		ImVector_ImWchar_destroy = [[void ImVector_ImWchar_destroy(ImVector_ImWchar* self);]],
		ImVector_ImWchar_Init = [[void ImVector_ImWchar_Init(ImVector_ImWchar* p);]],
		ImVector_ImWchar_UnInit = [[void ImVector_ImWchar_UnInit(ImVector_ImWchar* p);]],
		void = [[void ImGuiPlatformIO_Set_Platform_GetWindowPos(ImGuiPlatformIO* platform_io, void(*user_callback)(ImGuiViewport* vp, ImVec2* out_pos));]],
		void = [[void ImGuiPlatformIO_Set_Platform_GetWindowSize(ImGuiPlatformIO* platform_io, void(*user_callback)(ImGuiViewport* vp, ImVec2* out_size));]],

		ImGui_ImplSDL2_InitForOpenGL = [[_Bool ImGui_ImplSDL2_InitForOpenGL(SDL_Window* window, void* sdl_gl_context);]],
		ImGui_ImplSDL2_InitForVulkan = [[_Bool ImGui_ImplSDL2_InitForVulkan(SDL_Window* window);]],
		ImGui_ImplSDL2_InitForD3D = [[_Bool ImGui_ImplSDL2_InitForD3D(SDL_Window* window);]],
		ImGui_ImplSDL2_InitForMetal = [[_Bool ImGui_ImplSDL2_InitForMetal(SDL_Window* window);]],
		ImGui_ImplSDL2_InitForSDLRenderer = [[_Bool ImGui_ImplSDL2_InitForSDLRenderer(SDL_Window* window, SDL_Renderer* renderer);]],
		ImGui_ImplSDL2_InitForOther = [[_Bool ImGui_ImplSDL2_InitForOther(SDL_Window* window);]],
		ImGui_ImplSDL2_Shutdown = [[void ImGui_ImplSDL2_Shutdown();]],
		ImGui_ImplSDL2_NewFrame = [[void ImGui_ImplSDL2_NewFrame();]],
		ImGui_ImplSDL2_ProcessEvent = [[_Bool ImGui_ImplSDL2_ProcessEvent(const SDL_Event* event);]],
		ImGui_ImplSDL2_SetGamepadMode = [[void ImGui_ImplSDL2_SetGamepadMode(ImGui_ImplSDL2_GamepadMode mode, struct _SDL_GameController** manual_gamepads_array, int manual_gamepads_count);]],

		ImGui_ImplSDL3_InitForOpenGL = [[_Bool ImGui_ImplSDL3_InitForOpenGL(SDL_Window* window, void* sdl_gl_context);]],
		ImGui_ImplSDL3_InitForVulkan = [[_Bool ImGui_ImplSDL3_InitForVulkan(SDL_Window* window);]],
		ImGui_ImplSDL3_InitForD3D = [[_Bool ImGui_ImplSDL3_InitForD3D(SDL_Window* window);]],
		ImGui_ImplSDL3_InitForMetal = [[_Bool ImGui_ImplSDL3_InitForMetal(SDL_Window* window);]],
		ImGui_ImplSDL3_InitForSDLRenderer = [[_Bool ImGui_ImplSDL3_InitForSDLRenderer(SDL_Window* window, SDL_Renderer* renderer);]],
		ImGui_ImplSDL3_InitForSDLGPU = [[_Bool ImGui_ImplSDL3_InitForSDLGPU(SDL_Window* window);]],
		ImGui_ImplSDL3_InitForOther = [[_Bool ImGui_ImplSDL3_InitForOther(SDL_Window* window);]],
		ImGui_ImplSDL3_Shutdown = [[void ImGui_ImplSDL3_Shutdown();]],
		ImGui_ImplSDL3_NewFrame = [[void ImGui_ImplSDL3_NewFrame(); ]],
		ImGui_ImplSDL3_ProcessEvent = [[_Bool ImGui_ImplSDL3_ProcessEvent(const SDL_Event* event);]],
		ImGui_ImplSDL3_SetGamepadMode = [[void ImGui_ImplSDL3_SetGamepadMode(ImGui_ImplSDL3_GamepadMode mode, SDL_Gamepad** manual_gamepads_array, int manual_gamepads_count);]],

		ImGui_ImplOpenGL3_Init = [[_Bool ImGui_ImplOpenGL3_Init(const char* glsl_version);]],
		ImGui_ImplOpenGL3_Shutdown = [[void ImGui_ImplOpenGL3_Shutdown();]],
		ImGui_ImplOpenGL3_NewFrame = [[void ImGui_ImplOpenGL3_NewFrame();]],
		ImGui_ImplOpenGL3_RenderDrawData = [[void ImGui_ImplOpenGL3_RenderDrawData(ImDrawData* draw_data); ]],
		ImGui_ImplOpenGL3_CreateFontsTexture = [[_Bool ImGui_ImplOpenGL3_CreateFontsTexture();]],
		ImGui_ImplOpenGL3_DestroyFontsTexture = [[void ImGui_ImplOpenGL3_DestroyFontsTexture(); ]],
		ImGui_ImplOpenGL3_CreateDeviceObjects = [[_Bool ImGui_ImplOpenGL3_CreateDeviceObjects();]],
		ImGui_ImplOpenGL3_DestroyDeviceObjects = [[void ImGui_ImplOpenGL3_DestroyDeviceObjects();]],
	},
}

wrapper.version = '1.91.9dock'	-- my addition, not in the headers.  sad that it's not.

return wrapper
