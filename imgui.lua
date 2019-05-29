-- switching over to the autogen luajit bindings
local ffi = require 'ffi'
local ig = require 'imgui.sdl'.lib 

--[==[
local ig
if ffi.os == 'OSX' then
	ig = ffi.load(os.getenv'LUAJIT_LIBPATH'..'/bin/OSX/libimgui.dylib')
elseif ffi.os == 'Windows' then
	require 'ffi.sdl'	-- SDL needs to be included first
	ig = ffi.load(os.getenv'LUAJIT_LIBPATH'..'/bin/'..ffi.os..'/'..ffi.arch..'/imgui.dll')
elseif ffi.os == 'Linux' then
	ig = ffi.load(os.getenv'LUAJIT_LIBPATH'..'/bin/'..ffi.os..'/'..ffi.arch..'/libimgui.so')
end

-- for ImGui version 1.53

-- imgui/imgui.h, forward-declare structs and enums
ffi.cdef[[
typedef struct ImDrawChannel ImDrawChannel;
typedef struct ImDrawCmd ImDrawCmd;
typedef struct ImDrawData ImDrawData;
typedef struct ImDrawList ImDrawList;
typedef struct ImDrawListSharedData ImDrawListSharedData;
typedef struct ImDrawVert ImDrawVert;
typedef struct ImFont ImFont;
typedef struct ImFontAtlas ImFontAtlas;
typedef struct ImFontConfig ImFontConfig;
typedef struct ImColor ImColor;
typedef struct ImGuiIO ImGuiIO;
typedef struct ImGuiOnceUponAFrame ImGuiOnceUponAFrame;
typedef struct ImGuiStorage ImGuiStorage;
typedef struct ImGuiStyle ImGuiStyle;
typedef struct ImGuiTextFilter ImGuiTextFilter;
typedef struct ImGuiTextBuffer ImGuiTextBuffer;
typedef struct ImGuiTextEditCallbackData ImGuiTextEditCallbackData;
typedef struct ImGuiSizeConstraintCallbackData ImGuiSizeConstraintCallbackData;
typedef struct ImGuiListClipper ImGuiListClipper;
typedef struct ImGuiPayload ImGuiPayload;
typedef struct ImGuiContext ImGuiContext;
typedef unsigned int ImU32;
typedef unsigned int ImGuiID;
typedef unsigned short ImWchar;
typedef void* ImTextureID;
typedef int ImGuiCol;
typedef int ImGuiCond;
typedef int ImGuiKey;
typedef int ImGuiMouseCursor;
typedef int ImGuiStyleVar;
typedef int ImDrawCornerFlags;
typedef int ImDrawListFlags;
typedef int ImGuiColorEditFlags;
typedef int ImGuiColumnsFlags;
typedef int ImGuiDragDropFlags;
typedef int ImGuiComboFlags;
typedef int ImGuiFocusedFlags;
typedef int ImGuiHoveredFlags;
typedef int ImGuiInputTextFlags;
typedef int ImGuiSelectableFlags;
typedef int ImGuiTreeNodeFlags;
typedef int ImGuiWindowFlags;
typedef int (*ImGuiTextEditCallback)(ImGuiTextEditCallbackData *data);
typedef void (*ImGuiSizeConstraintCallback)(ImGuiSizeConstraintCallbackData* data);
typedef unsigned long long ImU64;
typedef struct ImVec2
{
    float x, y;
} ImVec2;
typedef struct ImVec4
{
    float x, y, z, w;
} ImVec4;
enum ImGuiWindowFlags_
{
    ImGuiWindowFlags_NoTitleBar             = 1 << 0,
    ImGuiWindowFlags_NoResize               = 1 << 1,
    ImGuiWindowFlags_NoMove                 = 1 << 2,
    ImGuiWindowFlags_NoScrollbar            = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse      = 1 << 4,
    ImGuiWindowFlags_NoCollapse             = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize       = 1 << 6,
    ImGuiWindowFlags_NoSavedSettings        = 1 << 8,
    ImGuiWindowFlags_NoInputs               = 1 << 9,
    ImGuiWindowFlags_MenuBar                = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar    = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing     = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus  = 1 << 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 << 16,
    ImGuiWindowFlags_ResizeFromAnySide      = 1 << 17,
    ImGuiWindowFlags_ChildWindow            = 1 << 24,
    ImGuiWindowFlags_Tooltip                = 1 << 25,
    ImGuiWindowFlags_Popup                  = 1 << 26,
    ImGuiWindowFlags_Modal                  = 1 << 27,
    ImGuiWindowFlags_ChildMenu              = 1 << 28
};
enum ImGuiInputTextFlags_
{
    ImGuiInputTextFlags_CharsDecimal        = 1 << 0,
    ImGuiInputTextFlags_CharsHexadecimal    = 1 << 1,
    ImGuiInputTextFlags_CharsUppercase      = 1 << 2,
    ImGuiInputTextFlags_CharsNoBlank        = 1 << 3,
    ImGuiInputTextFlags_AutoSelectAll       = 1 << 4,
    ImGuiInputTextFlags_EnterReturnsTrue    = 1 << 5,
    ImGuiInputTextFlags_CallbackCompletion  = 1 << 6,
    ImGuiInputTextFlags_CallbackHistory     = 1 << 7,
    ImGuiInputTextFlags_CallbackAlways      = 1 << 8,
    ImGuiInputTextFlags_CallbackCharFilter  = 1 << 9,
    ImGuiInputTextFlags_AllowTabInput       = 1 << 10,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,
    ImGuiInputTextFlags_NoHorizontalScroll  = 1 << 12,
    ImGuiInputTextFlags_AlwaysInsertMode    = 1 << 13,
    ImGuiInputTextFlags_ReadOnly            = 1 << 14,
    ImGuiInputTextFlags_Password            = 1 << 15,
    ImGuiInputTextFlags_NoUndoRedo          = 1 << 16,
    ImGuiInputTextFlags_Multiline           = 1 << 20

};
enum ImGuiTreeNodeFlags_
{
    ImGuiTreeNodeFlags_Selected             = 1 << 0,
    ImGuiTreeNodeFlags_Framed               = 1 << 1,
    ImGuiTreeNodeFlags_AllowItemOverlap     = 1 << 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen     = 1 << 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog      = 1 << 4,
    ImGuiTreeNodeFlags_DefaultOpen          = 1 << 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick    = 1 << 6,
    ImGuiTreeNodeFlags_OpenOnArrow          = 1 << 7,
    ImGuiTreeNodeFlags_Leaf                 = 1 << 8,
    ImGuiTreeNodeFlags_Bullet               = 1 << 9,
    ImGuiTreeNodeFlags_FramePadding         = 1 << 10,
    ImGuiTreeNodeFlags_CollapsingHeader     = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoAutoOpenOnLog
};
enum ImGuiSelectableFlags_
{
    ImGuiSelectableFlags_DontClosePopups    = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns     = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick   = 1 << 2
};
enum ImGuiComboFlags_
{
    ImGuiComboFlags_PopupAlignLeft          = 1 << 0,
    ImGuiComboFlags_HeightSmall             = 1 << 1,
    ImGuiComboFlags_HeightRegular           = 1 << 2,
    ImGuiComboFlags_HeightLarge             = 1 << 3,
    ImGuiComboFlags_HeightLargest           = 1 << 4,
    ImGuiComboFlags_HeightMask_             = ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest
};
enum ImGuiFocusedFlags_
{
    ImGuiFocusedFlags_ChildWindows                  = 1 << 0,
    ImGuiFocusedFlags_RootWindow                    = 1 << 1,
    ImGuiFocusedFlags_RootAndChildWindows           = ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows
};
enum ImGuiHoveredFlags_
{
    ImGuiHoveredFlags_Default                       = 0,
    ImGuiHoveredFlags_ChildWindows                  = 1 << 0,
    ImGuiHoveredFlags_RootWindow                    = 1 << 1,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup       = 1 << 2,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem  = 1 << 4,
    ImGuiHoveredFlags_AllowWhenOverlapped           = 1 << 5,
    ImGuiHoveredFlags_RectOnly                      = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
    ImGuiHoveredFlags_RootAndChildWindows           = ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows
};
enum ImGuiDragDropFlags_
{
    ImGuiDragDropFlags_SourceNoPreviewTooltip       = 1 << 0,
    ImGuiDragDropFlags_SourceNoDisableHover         = 1 << 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers     = 1 << 2,
    ImGuiDragDropFlags_SourceAllowNullID            = 1 << 3,
    ImGuiDragDropFlags_SourceExtern                 = 1 << 4,
    ImGuiDragDropFlags_AcceptBeforeDelivery         = 1 << 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect      = 1 << 11,
    ImGuiDragDropFlags_AcceptPeekOnly               = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect  // For peeking ahead and inspecting the payload before delivery.
};
enum ImGuiKey_
{
    ImGuiKey_Tab,
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,// for text edit
    ImGuiKey_UpArrow,
    ImGuiKey_DownArrow,
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,
    ImGuiKey_End,
    ImGuiKey_Delete,
    ImGuiKey_Backspace,
    ImGuiKey_Enter,
    ImGuiKey_Escape,
    ImGuiKey_A,
    ImGuiKey_C,
    ImGuiKey_V,
    ImGuiKey_X,
    ImGuiKey_Y,
    ImGuiKey_Z,
    ImGuiKey_COUNT
};
enum ImGuiCol_
{
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
    ImGuiCol_CloseButton,
    ImGuiCol_CloseButtonHovered,
    ImGuiCol_CloseButtonActive,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_ModalWindowDarkening,
    ImGuiCol_DragDropTarget,
    ImGuiCol_COUNT
};
enum ImGuiStyleVar_
{
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
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
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_Count_
};
enum ImGuiColorEditFlags_
{
    ImGuiColorEditFlags_NoAlpha         = 1 << 1,
    ImGuiColorEditFlags_NoPicker        = 1 << 2,
    ImGuiColorEditFlags_NoOptions       = 1 << 3,
    ImGuiColorEditFlags_NoSmallPreview  = 1 << 4,
    ImGuiColorEditFlags_NoInputs        = 1 << 5,
    ImGuiColorEditFlags_NoTooltip       = 1 << 6,
    ImGuiColorEditFlags_NoLabel         = 1 << 7,
    ImGuiColorEditFlags_NoSidePreview   = 1 << 8,
    ImGuiColorEditFlags_AlphaBar        = 1 << 9,
    ImGuiColorEditFlags_AlphaPreview    = 1 << 10,
    ImGuiColorEditFlags_AlphaPreviewHalf= 1 << 11,
    ImGuiColorEditFlags_HDR             = 1 << 12,
    ImGuiColorEditFlags_RGB             = 1 << 13,
    ImGuiColorEditFlags_HSV             = 1 << 14,
    ImGuiColorEditFlags_HEX             = 1 << 15,
    ImGuiColorEditFlags_Uint8           = 1 << 16,
    ImGuiColorEditFlags_Float           = 1 << 17,
    ImGuiColorEditFlags_PickerHueBar    = 1 << 18,
    ImGuiColorEditFlags_PickerHueWheel  = 1 << 19,
    ImGuiColorEditFlags__InputsMask     = ImGuiColorEditFlags_RGB|ImGuiColorEditFlags_HSV|ImGuiColorEditFlags_HEX,
    ImGuiColorEditFlags__DataTypeMask   = ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_Float,
    ImGuiColorEditFlags__PickerMask     = ImGuiColorEditFlags_PickerHueWheel|ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags__OptionsDefault = ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_RGB|ImGuiColorEditFlags_PickerHueBar
};
enum ImGuiMouseCursor_
{
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_Move,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Count_
};
enum ImGuiCond_
{
    ImGuiCond_Always        = 1 << 0,
    ImGuiCond_Once          = 1 << 1,
    ImGuiCond_FirstUseEver  = 1 << 2,
    ImGuiCond_Appearing     = 1 << 3
};
struct ImGuiStyle
{
    float       Alpha;
    ImVec2      WindowPadding;
    float       WindowRounding;
    float       WindowBorderSize;
    ImVec2      WindowMinSize;
    ImVec2      WindowTitleAlign;
    float       ChildRounding;
    float       ChildBorderSize;
    float       PopupRounding;
    float       PopupBorderSize;
    ImVec2      FramePadding;
    float       FrameRounding;
    float       FrameBorderSize;
    ImVec2      ItemSpacing;
    ImVec2      ItemInnerSpacing;
    ImVec2      TouchExtraPadding;
    float       IndentSpacing;
    float       ColumnsMinSpacing;
    float       ScrollbarSize;
    float       ScrollbarRounding;
    float       GrabMinSize;
    float       GrabRounding;
    ImVec2      ButtonTextAlign;
    ImVec2      DisplayWindowPadding;
    ImVec2      DisplaySafeAreaPadding;
    bool        AntiAliasedLines;
    bool        AntiAliasedFill;
    float       CurveTessellationTol;
    ImVec4      Colors[ImGuiCol_COUNT];
};
struct ImGuiIO
{
    ImVec2        DisplaySize;
    float         DeltaTime;
    float         IniSavingRate;
    const char*   IniFilename;
    const char*   LogFilename;
    float         MouseDoubleClickTime;
    float         MouseDoubleClickMaxDist;
    float         MouseDragThreshold;
    int           KeyMap[ImGuiKey_COUNT];
    float         KeyRepeatDelay;
    float         KeyRepeatRate;
    void*         UserData;
    ImFontAtlas*  Fonts;
    float         FontGlobalScale;
    bool          FontAllowUserScaling;
    ImFont*       FontDefault;
    ImVec2        DisplayFramebufferScale;
    ImVec2        DisplayVisibleMin;
    ImVec2        DisplayVisibleMax;
    bool          OptMacOSXBehaviors;
    bool          OptCursorBlink;
    void        (*RenderDrawListsFn)(ImDrawData* data);
    const char* (*GetClipboardTextFn)(void* user_data);
    void        (*SetClipboardTextFn)(void* user_data, const char* text);
    void*       ClipboardUserData;
    void*       (*MemAllocFn)(size_t sz);
    void        (*MemFreeFn)(void* ptr);
    void        (*ImeSetInputScreenPosFn)(int x, int y);
    void*       ImeWindowHandle;
    ImVec2      MousePos;
    bool        MouseDown[5];
    float       MouseWheel;
    bool        MouseDrawCursor;
    bool        KeyCtrl;
    bool        KeyShift;
    bool        KeyAlt;
    bool        KeySuper;
    bool        KeysDown[512];
    ImWchar     InputCharacters[16+1];
    bool        WantCaptureMouse;
    bool        WantCaptureKeyboard;
    bool        WantTextInput;
    bool        WantMoveMouse;
    float       Framerate;
    int         MetricsAllocs;
    int         MetricsRenderVertices;
    int         MetricsRenderIndices;
    int         MetricsActiveWindows;
    ImVec2      MouseDelta;
    ImVec2      MousePosPrev;
    ImVec2      MouseClickedPos[5];
    float       MouseClickedTime[5];
    bool        MouseClicked[5];
    bool        MouseDoubleClicked[5];
    bool        MouseReleased[5];
    bool        MouseDownOwned[5];
    float       MouseDownDuration[5];
    float       MouseDownDurationPrev[5];
    ImVec2      MouseDragMaxDistanceAbs[5];
    float       MouseDragMaxDistanceSqr[5];
    float       KeysDownDuration[512];
    float       KeysDownDurationPrev[512];
};
typedef struct ImVector ImVector;
struct ImVector
{
	int Size;
	int Capacity;
	void* Data;
};
struct ImGuiOnceUponAFrame
{
    int RefFrame;
};

struct ImGuiTextFilter_TextRange
{
	const char* b;
	const char* e;
};
struct ImGuiTextFilter
{
    char                InputBuf[256];
    ImVector/*<TextRange>*/ Filters;
    int                 CountGrep;
};
struct ImGuiTextBuffer
{
    ImVector/*<char>*/      Buf;
};
struct ImGuiStorage_Pair
{
	ImGuiID key;
	union { int val_i; float val_f; void* val_p; };
};
struct ImGuiStorage
{
    ImVector/*<Pair>*/      Data;
};
struct ImGuiTextEditCallbackData
{
    ImGuiInputTextFlags EventFlag;
    ImGuiInputTextFlags Flags;
    void*               UserData;
    bool                ReadOnly;
    ImWchar             EventChar;
    ImGuiKey            EventKey;
    char*               Buf;
    int                 BufTextLen;
    int                 BufSize;
    bool                BufDirty;
    int                 CursorPos;
    int                 SelectionStart;
    int                 SelectionEnd;
};
struct ImGuiSizeConstraintCallbackData
{
    void*   UserData;
    ImVec2  Pos;
    ImVec2  CurrentSize;
    ImVec2  DesiredSize;
};
struct ImGuiPayload
{
    const void*     Data;
    int             DataSize;
    ImGuiID         SourceId;
    ImGuiID         SourceParentId;
    int             DataFrameCount;
    char            DataType[8 + 1];
    bool            Preview;
    bool            Delivery;
};
struct ImColor
{
    ImVec4              Value;
};
struct ImGuiListClipper
{
    float   StartPosY;
    float   ItemsHeight;
    int     ItemsCount, StepNo, DisplayStart, DisplayEnd;
};
typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);
struct ImDrawCmd
{
    unsigned int    ElemCount;
    ImVec4          ClipRect;
    ImTextureID     TextureId;
    ImDrawCallback  UserCallback;
    void*           UserCallbackData;
};
typedef unsigned short ImDrawIdx;
struct ImDrawVert
{
    ImVec2  pos;
    ImVec2  uv;
    ImU32   col;
};
struct ImDrawChannel
{
    ImVector/*<ImDrawCmd>*/     CmdBuffer;
    ImVector/*<ImDrawIdx>*/     IdxBuffer;
};
enum ImDrawCornerFlags_
{
    ImDrawCornerFlags_TopLeft   = 1 << 0,
    ImDrawCornerFlags_TopRight  = 1 << 1,
    ImDrawCornerFlags_BotLeft   = 1 << 2,
    ImDrawCornerFlags_BotRight  = 1 << 3,
    ImDrawCornerFlags_Top       = ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_TopRight,
    ImDrawCornerFlags_Bot       = ImDrawCornerFlags_BotLeft | ImDrawCornerFlags_BotRight,
    ImDrawCornerFlags_Left      = ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_BotLeft,
    ImDrawCornerFlags_Right     = ImDrawCornerFlags_TopRight | ImDrawCornerFlags_BotRight,
    ImDrawCornerFlags_All       = 0xF
};
enum ImDrawListFlags_
{
    ImDrawListFlags_AntiAliasedLines = 1 << 0,
    ImDrawListFlags_AntiAliasedFill  = 1 << 1
};
struct ImDrawList
{
    ImVector/*<ImDrawCmd>*/     CmdBuffer;
    ImVector/*<ImDrawIdx>*/     IdxBuffer;
    ImVector/*<ImDrawVert>*/    VtxBuffer;
    ImDrawListFlags         Flags;
    const ImDrawListSharedData* _Data;
    const char*             _OwnerName;
    unsigned int            _VtxCurrentIdx;
    ImDrawVert*             _VtxWritePtr;
    ImDrawIdx*              _IdxWritePtr;
    ImVector/*<ImVec4>*/        _ClipRectStack;
    ImVector/*<ImTextureID>*/   _TextureIdStack;
    ImVector/*<ImVec2>*/        _Path;
    int                     _ChannelsCurrent;
    int                     _ChannelsCount;
    ImVector/*<ImDrawChannel>*/ _Channels;
};

struct ImDrawData
{
    bool            Valid;
    ImDrawList**    CmdLists;
    int             CmdListsCount;
    int             TotalVtxCount;
    int             TotalIdxCount;
};
]]
--[=[ getting "size of C type is unknown or too large" from luajit wrt ImGuiStb_STB_TexteditState
-- ... and I think I've defined all the types ... so that just leaves the option of "too large" ...
-- all this is needed for ImGuiContext
-- imgui/stb_textedit.h
ffi.cdef[[
enum { ImGuiStb_STB_TEXTEDIT_UNDOSTATECOUNT   = 99 };
enum { ImGuiStb_STB_TEXTEDIT_UNDOCHARCOUNT   = 999 };
typedef int ImGuiStb_STB_TEXTEDIT_CHARTYPE;
typedef int ImGuiStb_STB_TEXTEDIT_POSITIONTYPE;
typedef struct ImGuiStb_STB_TexteditState ImGuiStb_STB_TexteditState;
typedef struct ImGuiStb_StbUndoState ImGuiStb_StbUndoState;
typedef struct ImGuiStb_StbUndoRecord ImGuiStb_StbUndoRecord;
struct ImGuiStb_StbUndoRecord
{
   ImGuiStb_STB_TEXTEDIT_POSITIONTYPE  where;
   short           insert_length;
   short           delete_length;
   short           char_storage;
};
struct
{
   ImGuiStb_StbUndoRecord          undo_rec [ImGuiStb_STB_TEXTEDIT_UNDOSTATECOUNT];
   ImGuiStb_STB_TEXTEDIT_CHARTYPE  undo_char[ImGuiStb_STB_TEXTEDIT_UNDOCHARCOUNT];
   short undo_point, redo_point;
   short undo_char_point, redo_char_point;
} ImGuiStb_StbUndoState;
struct ImGuiStb_STB_TexteditState
{
   int cursor;
   int select_start;
   int select_end;
   unsigned char insert_mode;
   unsigned char cursor_at_end_of_line;
   unsigned char initialized;
   unsigned char has_preferred_x;
   unsigned char single_line;
   unsigned char padding1, padding2, padding3;
   float preferred_x;
   ImGuiStb_StbUndoState undostate;
};
]]
-- imgui/imgui_internal.h
ffi.cdef[[
struct ImGuiTextEditState
{
    ImGuiID             Id;
    ImVector/*<ImWchar*/>   Text;
    ImVector/*<char*/>      InitialText;
    ImVector/*<char*/>      TempTextBuffer;
    int                 CurLenA, CurLenW;
    int                 BufSizeA;
    float               ScrollX;
    ImGuiStb_STB_TexteditState   StbState;
    float               CursorAnim;
    bool                CursorFollow;
    bool                SelectedAllMouseLock;
};
struct ImGuiMouseCursorData
{
    ImGuiMouseCursor    Type;
    ImVec2              HotOffset;
    ImVec2              Size;
    ImVec2              TexUvMin[2];
    ImVec2              TexUvMax[2];
};
struct ImGuiContext
{
    bool                    Initialized;
    ImGuiIO                 IO;
    ImGuiStyle              Style;
    ImFont*                 Font;
    float                   FontSize;
    float                   FontBaseSize;
    ImVec2                  FontTexUvWhitePixel;
    float                   Time;
    int                     FrameCount;
    int                     FrameCountEnded;
    int                     FrameCountRendered;
    ImVector/*<ImGuiWindow*>*/  Windows;
    ImVector/*<ImGuiWindow*>*/  WindowsSortBuffer;
    ImGuiWindow*            CurrentWindow;
    ImVector/*<ImGuiWindow*>*/  CurrentWindowStack;
    ImGuiWindow*            FocusedWindow;
    ImGuiWindow*            HoveredWindow;
    ImGuiWindow*            HoveredRootWindow;
    ImGuiID                 HoveredId;
    bool                    HoveredIdAllowOverlap;
    ImGuiID                 HoveredIdPreviousFrame;
    ImGuiID                 ActiveId;
    ImGuiID                 ActiveIdPreviousFrame;
    bool                    ActiveIdIsAlive;
    bool                    ActiveIdIsJustActivated;
    bool                    ActiveIdAllowOverlap;
    ImGuiWindow*            ActiveIdWindow;
    ImGuiWindow*            MovedWindow;
    ImGuiID                 MovedWindowMoveId;
    ImVector/*<ImGuiIniData>*/  Settings;
    float                   SettingsDirtyTimer;
    ImVector/*<ImGuiColMod>*/   ColorModifiers;
    ImVector/*<ImGuiStyleMod>*/ StyleModifiers;
    ImVector/*<ImFont*>*/       FontStack;
    ImVector/*<ImGuiPopupRef>*/ OpenPopupStack;
    ImVector/*<ImGuiPopupRef>*/ CurrentPopupStack;
    ImVec2                  SetNextWindowPosVal;
    ImVec2                  SetNextWindowSizeVal;
    ImVec2                  SetNextWindowContentSizeVal;
    bool                    SetNextWindowCollapsedVal;
    ImGuiSetCond            SetNextWindowPosCond;
    ImGuiSetCond            SetNextWindowSizeCond;
    ImGuiSetCond            SetNextWindowContentSizeCond;
    ImGuiSetCond            SetNextWindowCollapsedCond;
    bool                    SetNextWindowFocus;
    bool                    SetNextTreeNodeOpenVal;
    ImGuiSetCond            SetNextTreeNodeOpenCond;
    ImDrawData              RenderDrawData;
    ImVector/*<ImDrawList*>*/   RenderDrawLists[3];
    float                   ModalWindowDarkeningRatio;
    ImDrawList              OverlayDrawList;
    ImGuiMouseCursor        MouseCursor;
    ImGuiMouseCursorData    MouseCursorData[ImGuiMouseCursor_Count_];
    ImGuiTextEditState      InputTextState;
    ImFont                  InputTextPasswordFont;
    ImGuiID                 ScalarAsInputTextId;
    ImGuiStorage            ColorEditModeStorage;
    ImVec2                  ActiveClickDeltaToCenter;
    float                   DragCurrentValue;
    ImVec2                  DragLastMouseDelta;
    float                   DragSpeedDefaultRatio;
    float                   DragSpeedScaleSlow;
    float                   DragSpeedScaleFast;
    ImVec2                  ScrollbarClickDeltaToGrabCenter;
    char                    Tooltip[1024];
    char*                   PrivateClipboard;
    ImVec2                  OsImePosRequest, OsImePosSet;
    bool                    LogEnabled;
    FILE*                   LogFile;
    ImGuiTextBuffer*        LogClipboard;
    int                     LogStartDepth;
    int                     LogAutoExpandMaxDepth;
    float                   FramerateSecPerFrame[120];
    int                     FramerateSecPerFrameIdx;
    float                   FramerateSecPerFrameAccum;
    int                     CaptureMouseNextFrame;
    int                     CaptureKeyboardNextFrame;
    char                    TempBuffer[1024*3+1];
};
]]
--]=]
-- imgui/examples/sdl_opengl_example/imgui_impl_sdl.h
ffi.cdef[[
typedef struct SDL_Window SDL_Window;
typedef union SDL_Event SDL_Event;
bool		ImGui_ImplSdlGL2_Init(SDL_Window *window);
void        ImGui_ImplSdlGL2_Shutdown();
void        ImGui_ImplSdlGL2_NewFrame(SDL_Window *window);
bool		ImGui_ImplSdlGL2_ProcessEvent(SDL_Event* event);
void        ImGui_ImplSdlGL2_InvalidateDeviceObjects();
bool		ImGui_ImplSdlGL2_CreateDeviceObjects();
]]
-- cimgui/cimgui/cimgui.h
ffi.cdef[[
typedef int ImGuiWindowFlags;
typedef int ImGuiSetCond;
typedef int ImGuiColorEditMode;
struct ImGuiIO *igGetIO();
struct ImGuiStyle *igGetStyle();
struct ImDrawData *igGetDrawData();
void igNewFrame();
void igRender();
void igEndFrame();
void igShutdown();
void igShowDemoWindow(bool *opened);
void igShowMetricsWindow(bool *opened);
void igShowStyleEditor(struct ImGuiStyle *ref);
void igShowStyleSelector(const char *label);
void igShowFontSelector(const char *label);
void igShowUserGuide();
bool igBegin(const char *name, bool *p_open, ImGuiWindowFlags flags);
void igEnd();
bool igBeginChild(const char *str_id, const struct ImVec2 size, bool border, ImGuiWindowFlags extra_flags);
bool igBeginChildEx(ImGuiID id, const struct ImVec2 size, bool border, ImGuiWindowFlags extra_flags);
void igEndChild();
void igGetContentRegionMax(struct ImVec2 *out);
void igGetContentRegionAvail(struct ImVec2 *out);
float igGetContentRegionAvailWidth();
void igGetWindowContentRegionMin(struct ImVec2 *out);
void igGetWindowContentRegionMax(struct ImVec2 *out);
float igGetWindowContentRegionWidth();
struct ImDrawList *igGetWindowDrawList();
void igGetWindowPos(struct ImVec2 *out);
void igGetWindowSize(struct ImVec2 *out);
float igGetWindowWidth();
float igGetWindowHeight();
bool igIsWindowCollapsed();
bool igIsWindowAppearing();
void igSetWindowFontScale(float scale);
void igSetNextWindowPos(const struct ImVec2 pos, ImGuiCond cond, const struct ImVec2 pivot);
void igSetNextWindowSize(const struct ImVec2 size, ImGuiCond cond);
void igSetNextWindowSizeConstraints(const struct ImVec2 size_min, const struct ImVec2 size_max, ImGuiSizeConstraintCallback custom_callback, void *custom_callback_data);
void igSetNextWindowContentSize(const struct ImVec2 size);
void igSetNextWindowCollapsed(bool collapsed, ImGuiCond cond);
void igSetNextWindowFocus();
void igSetWindowPos(const struct ImVec2 pos, ImGuiCond cond);
void igSetWindowSize(const struct ImVec2 size, ImGuiCond cond);
void igSetWindowCollapsed(bool collapsed, ImGuiCond cond);
void igSetWindowFocus();
void igSetWindowPosByName(const char *name, const struct ImVec2 pos, ImGuiCond cond);
void igSetWindowSize2(const char *name, const struct ImVec2 size, ImGuiCond cond);
void igSetWindowCollapsed2(const char *name, bool collapsed, ImGuiCond cond);
void igSetWindowFocus2(const char *name);
float igGetScrollX();
float igGetScrollY();
float igGetScrollMaxX();
float igGetScrollMaxY();
void igSetScrollX(float scroll_x);
void igSetScrollY(float scroll_y);
void igSetScrollHere(float center_y_ratio);
void igSetScrollFromPosY(float pos_y, float center_y_ratio);
void igSetStateStorage(struct ImGuiStorage *tree);
struct ImGuiStorage *igGetStateStorage();
void igPushFont(struct ImFont *font);
void igPopFont();
void igPushStyleColorU32(ImGuiCol idx, ImU32 col);
void igPushStyleColor(ImGuiCol idx, const struct ImVec4 col);
void igPopStyleColor(int count);
void igPushStyleVar(ImGuiStyleVar idx, float val);
void igPushStyleVarVec(ImGuiStyleVar idx, const struct ImVec2 val);
void igPopStyleVar(int count);
void igGetStyleColorVec4(struct ImVec4 *pOut, ImGuiCol idx);
struct ImFont *igGetFont();
float igGetFontSize();
void igGetFontTexUvWhitePixel(struct ImVec2 *pOut);
ImU32 igGetColorU32(ImGuiCol idx, float alpha_mul);
ImU32 igGetColorU32Vec(const struct ImVec4 *col);
ImU32 igGetColorU32U32(ImU32 col);
void igPushItemWidth(float item_width);
void igPopItemWidth();
float igCalcItemWidth();
void igPushTextWrapPos(float wrap_pos_x);
void igPopTextWrapPos();
void igPushAllowKeyboardFocus(bool v);
void igPopAllowKeyboardFocus();
void igPushButtonRepeat(bool repeat);
void igPopButtonRepeat();
void igSeparator();
void igSameLine(float pos_x, float spacing_w);
void igNewLine();
void igSpacing();
void igDummy(const struct ImVec2 *size);
void igIndent(float indent_w);
void igUnindent(float indent_w);
void igBeginGroup();
void igEndGroup();
void igGetCursorPos(struct ImVec2 *pOut);
float igGetCursorPosX();
float igGetCursorPosY();
void igSetCursorPos(const struct ImVec2 local_pos);
void igSetCursorPosX(float x);
void igSetCursorPosY(float y);
void igGetCursorStartPos(struct ImVec2 *pOut);
void igGetCursorScreenPos(struct ImVec2 *pOut);
void igSetCursorScreenPos(const struct ImVec2 pos);
void igAlignTextToFramePadding();
float igGetTextLineHeight();
float igGetTextLineHeightWithSpacing();
float igGetFrameHeight();
float igGetFrameHeightWithSpacing();
void igColumns(int count, const char *id, bool border);
void igNextColumn();
int igGetColumnIndex();
float igGetColumnWidth(int column_index);
void igSetColumnWidth(int column_index, float width);
float igGetColumnOffset(int column_index);
void igSetColumnOffset(int column_index, float offset_x);
int igGetColumnsCount();
void igPushIDStr(const char *str_id);
void igPushIDStrRange(const char *str_begin, const char *str_end);
void igPushIDPtr(const void *ptr_id);
void igPushIDInt(int int_id);
void igPopID();
ImGuiID igGetIDStr(const char *str_id);
ImGuiID igGetIDStrRange(const char *str_begin, const char *str_end);
ImGuiID igGetIDPtr(const void *ptr_id);
void igTextUnformatted(const char *text, const char *text_end);
void igText(const char *fmt, ...);
void igTextV(const char *fmt, va_list args);
void igTextColored(const struct ImVec4 col, const char *fmt, ...);
void igTextColoredV(const struct ImVec4 col, const char *fmt, va_list args);
void igTextDisabled(const char *fmt, ...);
void igTextDisabledV(const char *fmt, va_list args);
void igTextWrapped(const char *fmt, ...);
void igTextWrappedV(const char *fmt, va_list args);
void igLabelText(const char *label, const char *fmt, ...);
void igLabelTextV(const char *label, const char *fmt, va_list args);
void igBulletText(const char *fmt, ...);
void igBulletTextV(const char *fmt, va_list args);
void igBullet();
bool igButton(const char *label, const struct ImVec2 size);
bool igSmallButton(const char *label);
bool igInvisibleButton(const char *str_id, const struct ImVec2 size);
void igImage(ImTextureID user_texture_id, const struct ImVec2 size, const struct ImVec2 uv0, const struct ImVec2 uv1, const struct ImVec4 tint_col, const struct ImVec4 border_col);
bool igImageButton(ImTextureID user_texture_id, const struct ImVec2 size, const struct ImVec2 uv0, const struct ImVec2 uv1, int frame_padding, const struct ImVec4 bg_col, const struct ImVec4 tint_col);
bool igCheckbox(const char *label, bool *v);
bool igCheckboxFlags(const char *label, unsigned int *flags, unsigned int flags_value);
bool igRadioButtonBool(const char *label, bool active);
bool igRadioButton(const char *label, int *v, int v_button);
void igPlotLines(const char *label, const float *values, int values_count, int values_offset, const char *overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size, int stride);
void igPlotLines2(const char *label, float (*values_getter)(void *data, int idx), void *data, int values_count, int values_offset, const char *overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size);
void igPlotHistogram(const char *label, const float *values, int values_count, int values_offset, const char *overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size, int stride);
void igPlotHistogram2(const char *label, float (*values_getter)(void *data, int idx), void *data, int values_count, int values_offset, const char *overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size);
void igProgressBar(float fraction, const struct ImVec2 *size_arg, const char *overlay);
bool igBeginCombo(const char *label, const char *preview_value, ImGuiComboFlags flags);
void igEndCombo();
bool igCombo(const char *label, int *current_item, const char *const *items, int items_count, int popup_max_height_in_items);
bool igCombo2(const char *label, int *current_item, const char *items_separated_by_zeros, int popup_max_height_in_items);
bool igCombo3(const char *label, int *current_item, bool (*items_getter)(void *data, int idx, const char **out_text), void *data, int items_count, int popup_max_height_in_items);
bool igDragFloat(const char *label, float *v, float v_speed, float v_min, float v_max, const char *display_format, float power);
bool igDragFloat2(const char *label, float v[2], float v_speed, float v_min, float v_max, const char *display_format, float power);
bool igDragFloat3(const char *label, float v[3], float v_speed, float v_min, float v_max, const char *display_format, float power);
bool igDragFloat4(const char *label, float v[4], float v_speed, float v_min, float v_max, const char *display_format, float power);
bool igDragFloatRange2(const char *label, float *v_current_min, float *v_current_max, float v_speed, float v_min, float v_max, const char *display_format, const char *display_format_max, float power);
bool igDragInt(const char *label, int *v, float v_speed, int v_min, int v_max, const char *display_format);
bool igDragInt2(const char *label, int v[2], float v_speed, int v_min, int v_max, const char *display_format);
bool igDragInt3(const char *label, int v[3], float v_speed, int v_min, int v_max, const char *display_format);
bool igDragInt4(const char *label, int v[4], float v_speed, int v_min, int v_max, const char *display_format);
bool igDragIntRange2(const char *label, int *v_current_min, int *v_current_max, float v_speed, int v_min, int v_max, const char *display_format, const char *display_format_max);
bool igInputText(const char *label, char *buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void *user_data);
bool igInputTextMultiline(const char *label, char *buf, size_t buf_size, const struct ImVec2 size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void *user_data);
bool igInputFloat(const char *label, float *v, float step, float step_fast, int decimal_precision, ImGuiInputTextFlags extra_flags);
bool igInputFloat2(const char *label, float v[2], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool igInputFloat3(const char *label, float v[3], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool igInputFloat4(const char *label, float v[4], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool igInputInt(const char *label, int *v, int step, int step_fast, ImGuiInputTextFlags extra_flags);
bool igInputInt2(const char *label, int v[2], ImGuiInputTextFlags extra_flags);
bool igInputInt3(const char *label, int v[3], ImGuiInputTextFlags extra_flags);
bool igInputInt4(const char *label, int v[4], ImGuiInputTextFlags extra_flags);
bool igSliderFloat(const char *label, float *v, float v_min, float v_max, const char *display_format, float power);
bool igSliderFloat2(const char *label, float v[2], float v_min, float v_max, const char *display_format, float power);
bool igSliderFloat3(const char *label, float v[3], float v_min, float v_max, const char *display_format, float power);
bool igSliderFloat4(const char *label, float v[4], float v_min, float v_max, const char *display_format, float power);
bool igSliderAngle(const char *label, float *v_rad, float v_degrees_min, float v_degrees_max);
bool igSliderInt(const char *label, int *v, int v_min, int v_max, const char *display_format);
bool igSliderInt2(const char *label, int v[2], int v_min, int v_max, const char *display_format);
bool igSliderInt3(const char *label, int v[3], int v_min, int v_max, const char *display_format);
bool igSliderInt4(const char *label, int v[4], int v_min, int v_max, const char *display_format);
bool igVSliderFloat(const char *label, const struct ImVec2 size, float *v, float v_min, float v_max, const char *display_format, float power);
bool igVSliderInt(const char *label, const struct ImVec2 size, int *v, int v_min, int v_max, const char *display_format);
bool igColorEdit3(const char *label, float col[3], ImGuiColorEditFlags flags);
bool igColorEdit4(const char *label, float col[4], ImGuiColorEditFlags flags);
bool igColorPicker3(const char *label, float col[3], ImGuiColorEditFlags flags);
bool igColorPicker4(const char *label, float col[4], ImGuiColorEditFlags flags, const float *ref_col);
bool igColorButton(const char *desc_id, const struct ImVec4 col, ImGuiColorEditFlags flags, const struct ImVec2 size);
void igSetColorEditOptions(ImGuiColorEditFlags flags);
bool igTreeNode(const char *label);
bool igTreeNodeStr(const char *str_id, const char *fmt, ...);
bool igTreeNodePtr(const void *ptr_id, const char *fmt, ...);
bool igTreeNodeStrV(const char *str_id, const char *fmt, va_list args);
bool igTreeNodePtrV(const void *ptr_id, const char *fmt, va_list args);
bool igTreeNodeEx(const char *label, ImGuiTreeNodeFlags flags);
bool igTreeNodeExStr(const char *str_id, ImGuiTreeNodeFlags flags, const char *fmt, ...);
bool igTreeNodeExPtr(const void *ptr_id, ImGuiTreeNodeFlags flags, const char *fmt, ...);
bool igTreeNodeExV(const char *str_id, ImGuiTreeNodeFlags flags, const char *fmt, va_list args);
bool igTreeNodeExVPtr(const void *ptr_id, ImGuiTreeNodeFlags flags, const char *fmt, va_list args);
void igTreePushStr(const char *str_id);
void igTreePushPtr(const void *ptr_id);
void igTreePop();
void igTreeAdvanceToLabelPos();
float igGetTreeNodeToLabelSpacing();
void igSetNextTreeNodeOpen(bool opened, ImGuiCond cond);
bool igCollapsingHeader(const char *label, ImGuiTreeNodeFlags flags);
bool igCollapsingHeaderEx(const char *label, bool *p_open, ImGuiTreeNodeFlags flags);
bool igSelectable(const char *label, bool selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool igSelectableEx(const char *label, bool *p_selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool igListBox(const char *label, int *current_item, const char *const *items, int items_count, int height_in_items);
bool igListBox2(const char *label, int *current_item, bool (*items_getter)(void *data, int idx, const char **out_text), void *data, int items_count, int height_in_items);
bool igListBoxHeader(const char *label, const struct ImVec2 size);
bool igListBoxHeader2(const char *label, int items_count, int height_in_items);
void igListBoxFooter();
void igValueBool(const char *prefix, bool b);
void igValueInt(const char *prefix, int v);
void igValueUInt(const char *prefix, unsigned int v);
void igValueFloat(const char *prefix, float v, const char *float_format);
void igSetTooltip(const char *fmt, ...);
void igSetTooltipV(const char *fmt, va_list args);
void igBeginTooltip();
void igEndTooltip();
bool igBeginMainMenuBar();
void igEndMainMenuBar();
bool igBeginMenuBar();
void igEndMenuBar();
bool igBeginMenu(const char *label, bool enabled);
void igEndMenu();
bool igMenuItem(const char *label, const char *shortcut, bool selected, bool enabled);
bool igMenuItemPtr(const char *label, const char *shortcut, bool *p_selected, bool enabled);
void igOpenPopup(const char *str_id);
bool igOpenPopupOnItemClick(const char *str_id, int mouse_button);
bool igBeginPopup(const char *str_id);
bool igBeginPopupModal(const char *name, bool *p_open, ImGuiWindowFlags extra_flags);
bool igBeginPopupContextItem(const char *str_id, int mouse_button);
bool igBeginPopupContextWindow(const char *str_id, int mouse_button, bool also_over_items);
bool igBeginPopupContextVoid(const char *str_id, int mouse_button);
void igEndPopup();
bool igIsPopupOpen(const char *str_id);
void igCloseCurrentPopup();
void igLogToTTY(int max_depth);
void igLogToFile(int max_depth, const char *filename);
void igLogToClipboard(int max_depth);
void igLogFinish();
void igLogButtons();
void igLogText(const char *fmt, ...);
bool igBeginDragDropSource(ImGuiDragDropFlags flags, int mouse_button);
bool igSetDragDropPayload(const char *type, const void *data, size_t size, ImGuiCond cond);
void igEndDragDropSource();
bool igBeginDragDropTarget();
const struct ImGuiPayload *igAcceptDragDropPayload(const char *type, ImGuiDragDropFlags flags);
void igEndDragDropTarget();
void igPushClipRect(const struct ImVec2 clip_rect_min, const struct ImVec2 clip_rect_max, bool intersect_with_current_clip_rect);
void igPopClipRect();
void igStyleColorsClassic(struct ImGuiStyle *dst);
void igStyleColorsDark(struct ImGuiStyle *dst);
void igStyleColorsLight(struct ImGuiStyle *dst);
void igSetItemDefaultFocus();
void igSetKeyboardFocusHere(int offset);
bool igIsItemHovered(ImGuiHoveredFlags flags);
bool igIsItemActive();
bool igIsItemClicked(int mouse_button);
bool igIsItemVisible();
bool igIsAnyItemHovered();
bool igIsAnyItemActive();
void igGetItemRectMin(struct ImVec2 *pOut);
void igGetItemRectMax(struct ImVec2 *pOut);
void igGetItemRectSize(struct ImVec2 *pOut);
void igSetItemAllowOverlap();
bool igIsWindowFocused(ImGuiFocusedFlags flags);
bool igIsWindowHovered(ImGuiHoveredFlags falgs);
bool igIsAnyWindowFocused();
bool igIsAnyWindowHovered();
bool igIsRectVisible(const struct ImVec2 item_size);
bool igIsRectVisible2(const struct ImVec2 *rect_min, const struct ImVec2 *rect_max);
float igGetTime();
int igGetFrameCount();
struct ImDrawList *igGetOverlayDrawList();
struct ImDrawListSharedData *igGetDrawListSharedData();
const char *igGetStyleColorName(ImGuiCol idx);
void igCalcItemRectClosestPoint(struct ImVec2 *pOut, const struct ImVec2 pos, bool on_edge, float outward);
void igCalcTextSize(struct ImVec2 *pOut, const char *text, const char *text_end, bool hide_text_after_double_hash, float wrap_width);
void igCalcListClipping(int items_count, float items_height, int *out_items_display_start, int *out_items_display_end);
bool igBeginChildFrame(ImGuiID id, const struct ImVec2 size, ImGuiWindowFlags extra_flags);
void igEndChildFrame();
void igColorConvertU32ToFloat4(struct ImVec4 *pOut, ImU32 in);
ImU32 igColorConvertFloat4ToU32(const struct ImVec4 in);
void igColorConvertRGBtoHSV(float r, float g, float b, float *out_h, float *out_s, float *out_v);
void igColorConvertHSVtoRGB(float h, float s, float v, float *out_r, float *out_g, float *out_b);
int igGetKeyIndex(ImGuiKey imgui_key);
bool igIsKeyDown(int user_key_index);
bool igIsKeyPressed(int user_key_index, bool repeat);
bool igIsKeyReleased(int user_key_index);
int igGetKeyPressedAmount(int key_index, float repeat_delay, float rate);
bool igIsMouseDown(int button);
bool igIsMouseClicked(int button, bool repeat);
bool igIsMouseDoubleClicked(int button);
bool igIsMouseReleased(int button);
bool igIsMouseDragging(int button, float lock_threshold);
bool igIsMouseHoveringRect(const struct ImVec2 r_min, const struct ImVec2 r_max, bool clip);
bool igIsMousePosValid(const struct ImVec2 *mouse_pos);
void igGetMousePos(struct ImVec2 *pOut);
void igGetMousePosOnOpeningCurrentPopup(struct ImVec2 *pOut);
void igGetMouseDragDelta(struct ImVec2 *pOut, int button, float lock_threshold);
void igResetMouseDragDelta(int button);
ImGuiMouseCursor igGetMouseCursor();
void igSetMouseCursor(ImGuiMouseCursor type);
void igCaptureKeyboardFromApp(bool capture);
void igCaptureMouseFromApp(bool capture);
void *igMemAlloc(size_t sz);
void igMemFree(void *ptr);
const char *igGetClipboardText();
void igSetClipboardText(const char *text);
const char *igGetVersion();
struct ImGuiContext *igCreateContext(void *(*malloc_fn)(size_t), void (*free_fn)(void *));
void igDestroyContext(struct ImGuiContext *ctx);
struct ImGuiContext *igGetCurrentContext();
void igSetCurrentContext(struct ImGuiContext *ctx);
void ImFontConfig_DefaultConstructor(struct ImFontConfig *config);
void ImGuiIO_AddInputCharacter(unsigned short c);
void ImGuiIO_AddInputCharactersUTF8(const char *utf8_chars);
void ImGuiIO_ClearInputCharacters();
struct ImGuiTextFilter *ImGuiTextFilter_Create(const char *default_filter);
void ImGuiTextFilter_Destroy(struct ImGuiTextFilter *filter);
void ImGuiTextFilter_Clear(struct ImGuiTextFilter *filter);
bool ImGuiTextFilter_Draw(struct ImGuiTextFilter *filter, const char *label, float width);
bool ImGuiTextFilter_PassFilter(const struct ImGuiTextFilter *filter, const char *text, const char *text_end);
bool ImGuiTextFilter_IsActive(const struct ImGuiTextFilter *filter);
void ImGuiTextFilter_Build(struct ImGuiTextFilter *filter);
const char *ImGuiTextFilter_GetInputBuf(struct ImGuiTextFilter *filter);
struct ImGuiTextBuffer *ImGuiTextBuffer_Create();
void ImGuiTextBuffer_Destroy(struct ImGuiTextBuffer *buffer);
char ImGuiTextBuffer_index(struct ImGuiTextBuffer *buffer, int i);
const char *ImGuiTextBuffer_begin(const struct ImGuiTextBuffer *buffer);
const char *ImGuiTextBuffer_end(const struct ImGuiTextBuffer *buffer);
int ImGuiTextBuffer_size(const struct ImGuiTextBuffer *buffer);
bool ImGuiTextBuffer_empty(struct ImGuiTextBuffer *buffer);
void ImGuiTextBuffer_clear(struct ImGuiTextBuffer *buffer);
const char *ImGuiTextBuffer_c_str(const struct ImGuiTextBuffer *buffer);
void ImGuiTextBuffer_appendf(struct ImGuiTextBuffer *buffer, const char *fmt, ...);
void ImGuiTextBuffer_appendfv(struct ImGuiTextBuffer *buffer, const char *fmt, va_list args);
struct ImGuiStorage *ImGuiStorage_Create();
void ImGuiStorage_Destroy(struct ImGuiStorage *storage);
int ImGuiStorage_GetInt(struct ImGuiStorage *storage, ImGuiID key, int default_val);
void ImGuiStorage_SetInt(struct ImGuiStorage *storage, ImGuiID key, int val);
bool ImGuiStorage_GetBool(struct ImGuiStorage *storage, ImGuiID key, bool default_val);
void ImGuiStorage_SetBool(struct ImGuiStorage *storage, ImGuiID key, bool val);
float ImGuiStorage_GetFloat(struct ImGuiStorage *storage, ImGuiID key, float default_val);
void ImGuiStorage_SetFloat(struct ImGuiStorage *storage, ImGuiID key, float val);
void *ImGuiStorage_GetVoidPtr(struct ImGuiStorage *storage, ImGuiID key);
void ImGuiStorage_SetVoidPtr(struct ImGuiStorage *storage, ImGuiID key, void *val);
int *ImGuiStorage_GetIntRef(struct ImGuiStorage *storage, ImGuiID key, int default_val);
bool *ImGuiStorage_GetBoolRef(struct ImGuiStorage *storage, ImGuiID key, bool default_val);
float *ImGuiStorage_GetFloatRef(struct ImGuiStorage *storage, ImGuiID key, float default_val);
void **ImGuiStorage_GetVoidPtrRef(struct ImGuiStorage *storage, ImGuiID key, void *default_val);
void ImGuiStorage_SetAllInt(struct ImGuiStorage *storage, int val);
void ImGuiTextEditCallbackData_DeleteChars(struct ImGuiTextEditCallbackData *data, int pos, int bytes_count);
void ImGuiTextEditCallbackData_InsertChars(struct ImGuiTextEditCallbackData *data, int pos, const char *text, const char *text_end);
bool ImGuiTextEditCallbackData_HasSelection(struct ImGuiTextEditCallbackData *data);
bool ImGuiListClipper_Step(struct ImGuiListClipper *clipper);
void ImGuiListClipper_Begin(struct ImGuiListClipper *clipper, int count, float items_height);
void ImGuiListClipper_End(struct ImGuiListClipper *clipper);
int ImGuiListClipper_GetDisplayStart(struct ImGuiListClipper *clipper);
int ImGuiListClipper_GetDisplayEnd(struct ImGuiListClipper *clipper);
int ImDrawList_GetVertexBufferSize(struct ImDrawList *list);
struct ImDrawVert *ImDrawList_GetVertexPtr(struct ImDrawList *list, int n);
int ImDrawList_GetIndexBufferSize(struct ImDrawList *list);
ImDrawIdx *ImDrawList_GetIndexPtr(struct ImDrawList *list, int n);
int ImDrawList_GetCmdSize(struct ImDrawList *list);
struct ImDrawCmd *ImDrawList_GetCmdPtr(struct ImDrawList *list, int n);
void ImDrawList_Clear(struct ImDrawList *list);
void ImDrawList_ClearFreeMemory(struct ImDrawList *list);
void ImDrawList_PushClipRect(struct ImDrawList *list, struct ImVec2 clip_rect_min, struct ImVec2 clip_rect_max, bool intersect_with_current_clip_rect);
void ImDrawList_PushClipRectFullScreen(struct ImDrawList *list);
void ImDrawList_PopClipRect(struct ImDrawList *list);
void ImDrawList_PushTextureID(struct ImDrawList *list, const ImTextureID texture_id);
void ImDrawList_PopTextureID(struct ImDrawList *list);
void ImDrawList_GetClipRectMin(struct ImVec2 *pOut, struct ImDrawList *list);
void ImDrawList_GetClipRectMax(struct ImVec2 *pOut, struct ImDrawList *list);
void ImDrawList_AddLine(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float thickness);
void ImDrawList_AddRect(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners_flags, float thickness);
void ImDrawList_AddRectFilled(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners_flags);
void ImDrawList_AddRectFilledMultiColor(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
void ImDrawList_AddQuad(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, ImU32 col, float thickness);
void ImDrawList_AddQuadFilled(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, ImU32 col);
void ImDrawList_AddTriangle(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col, float thickness);
void ImDrawList_AddTriangleFilled(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col);
void ImDrawList_AddCircle(struct ImDrawList *list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments, float thickness);
void ImDrawList_AddCircleFilled(struct ImDrawList *list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments);
void ImDrawList_AddText(struct ImDrawList *list, const struct ImVec2 pos, ImU32 col, const char *text_begin, const char *text_end);
void ImDrawList_AddTextExt(struct ImDrawList *list, const struct ImFont *font, float font_size, const struct ImVec2 pos, ImU32 col, const char *text_begin, const char *text_end, float wrap_width, const struct ImVec4 *cpu_fine_clip_rect);
void ImDrawList_AddImage(struct ImDrawList *list, ImTextureID user_texture_id, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv_a, const struct ImVec2 uv_b, ImU32 col);
void ImDrawList_AddImageQuad(struct ImDrawList *list, ImTextureID user_texture_id, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, const struct ImVec2 uv_a, const struct ImVec2 uv_b, const struct ImVec2 uv_c, const struct ImVec2 uv_d, ImU32 col);
void ImDrawList_AddImageRounded(struct ImDrawList *list, ImTextureID user_texture_id, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv_a, const struct ImVec2 uv_b, ImU32 col, float rounding, int rounding_corners);
void ImDrawList_AddPolyline(struct ImDrawList *list, const struct ImVec2 *points, const int num_points, ImU32 col, bool closed, float thickness);
void ImDrawList_AddConvexPolyFilled(struct ImDrawList *list, const struct ImVec2 *points, const int num_points, ImU32 col);
void ImDrawList_AddBezierCurve(struct ImDrawList *list, const struct ImVec2 pos0, const struct ImVec2 cp0, const struct ImVec2 cp1, const struct ImVec2 pos1, ImU32 col, float thickness, int num_segments);
void ImDrawList_PathClear(struct ImDrawList *list);
void ImDrawList_PathLineTo(struct ImDrawList *list, const struct ImVec2 pos);
void ImDrawList_PathLineToMergeDuplicate(struct ImDrawList *list, const struct ImVec2 pos);
void ImDrawList_PathFillConvex(struct ImDrawList *list, ImU32 col);
void ImDrawList_PathStroke(struct ImDrawList *list, ImU32 col, bool closed, float thickness);
void ImDrawList_PathArcTo(struct ImDrawList *list, const struct ImVec2 centre, float radius, float a_min, float a_max, int num_segments);
void ImDrawList_PathArcToFast(struct ImDrawList *list, const struct ImVec2 centre, float radius, int a_min_of_12, int a_max_of_12);
void ImDrawList_PathBezierCurveTo(struct ImDrawList *list, const struct ImVec2 p1, const struct ImVec2 p2, const struct ImVec2 p3, int num_segments);
void ImDrawList_PathRect(struct ImDrawList *list, const struct ImVec2 rect_min, const struct ImVec2 rect_max, float rounding, int rounding_corners_flags);
void ImDrawList_ChannelsSplit(struct ImDrawList *list, int channels_count);
void ImDrawList_ChannelsMerge(struct ImDrawList *list);
void ImDrawList_ChannelsSetCurrent(struct ImDrawList *list, int channel_index);
void ImDrawList_AddCallback(struct ImDrawList *list, ImDrawCallback callback, void *callback_data);
void ImDrawList_AddDrawCmd(struct ImDrawList *list);
void ImDrawList_PrimReserve(struct ImDrawList *list, int idx_count, int vtx_count);
void ImDrawList_PrimRect(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col);
void ImDrawList_PrimRectUV(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv_a, const struct ImVec2 uv_b, ImU32 col);
void ImDrawList_PrimQuadUV(struct ImDrawList *list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, const struct ImVec2 uv_a, const struct ImVec2 uv_b, const struct ImVec2 uv_c, const struct ImVec2 uv_d, ImU32 col);
void ImDrawList_PrimWriteVtx(struct ImDrawList *list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void ImDrawList_PrimWriteIdx(struct ImDrawList *list, ImDrawIdx idx);
void ImDrawList_PrimVtx(struct ImDrawList *list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void ImDrawList_UpdateClipRect(struct ImDrawList *list);
void ImDrawList_UpdateTextureID(struct ImDrawList *list);
void ImDrawData_DeIndexAllBuffers(struct ImDrawData *drawData);
void ImDrawData_ScaleClipRects(struct ImDrawData *drawData, const struct ImVec2 sc);
void ImFontAtlas_GetTexDataAsRGBA32(struct ImFontAtlas *atlas, unsigned char **out_pixels, int *out_width, int *out_height, int *out_bytes_per_pixel);
void ImFontAtlas_GetTexDataAsAlpha8(struct ImFontAtlas *atlas, unsigned char **out_pixels, int *out_width, int *out_height, int *out_bytes_per_pixel);
void ImFontAtlas_SetTexID(struct ImFontAtlas *atlas, ImTextureID id);
struct ImFont *ImFontAtlas_AddFont(struct ImFontAtlas *atlas, const struct ImFontConfig *font_cfg);
struct ImFont *ImFontAtlas_AddFontDefault(struct ImFontAtlas *atlas, const struct ImFontConfig *font_cfg);
struct ImFont *ImFontAtlas_AddFontFromFileTTF(struct ImFontAtlas *atlas, const char *filename, float size_pixels, const struct ImFontConfig *font_cfg, const ImWchar *glyph_ranges);
struct ImFont *ImFontAtlas_AddFontFromMemoryTTF(struct ImFontAtlas *atlas, void *font_data, int font_size, float size_pixels, const struct ImFontConfig *font_cfg, const ImWchar *glyph_ranges);
struct ImFont *ImFontAtlas_AddFontFromMemoryCompressedTTF(struct ImFontAtlas *atlas, const void *compressed_font_data, int compressed_font_size, float size_pixels, const struct ImFontConfig *font_cfg, const ImWchar *glyph_ranges);
struct ImFont *ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(struct ImFontAtlas *atlas, const char *compressed_font_data_base85, float size_pixels, const struct ImFontConfig *font_cfg, const ImWchar *glyph_ranges);
void ImFontAtlas_ClearTexData(struct ImFontAtlas *atlas);
void ImFontAtlas_Clear(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesDefault(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesKorean(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesJapanese(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesChinese(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesCyrillic(struct ImFontAtlas *atlas);
const ImWchar *ImFontAtlas_GetGlyphRangesThai(struct ImFontAtlas *atlas);
ImTextureID ImFontAtlas_GetTexID(struct ImFontAtlas *atlas);
unsigned char *ImFontAtlas_GetTexPixelsAlpha8(struct ImFontAtlas *atlas);
unsigned int *ImFontAtlas_GetTexPixelsRGBA32(struct ImFontAtlas *atlas);
int ImFontAtlas_GetTexWidth(struct ImFontAtlas *atlas);
int ImFontAtlas_GetTexHeight(struct ImFontAtlas *atlas);
int ImFontAtlas_GetTexDesiredWidth(struct ImFontAtlas *atlas);
void ImFontAtlas_SetTexDesiredWidth(struct ImFontAtlas *atlas, int TexDesiredWidth_);
int ImFontAtlas_GetTexGlyphPadding(struct ImFontAtlas *atlas);
void ImFontAtlas_SetTexGlyphPadding(struct ImFontAtlas *atlas, int TexGlyphPadding_);
void ImFontAtlas_GetTexUvWhitePixel(struct ImFontAtlas *atlas, struct ImVec2 *pOut);
int ImFontAtlas_Fonts_size(struct ImFontAtlas *atlas);
struct ImFont *ImFontAtlas_Fonts_index(struct ImFontAtlas *atlas, int index);
float ImFont_GetFontSize(const struct ImFont *font);
void ImFont_SetFontSize(struct ImFont *font, float FontSize_);
float ImFont_GetScale(const struct ImFont *font);
void ImFont_SetScale(struct ImFont *font, float Scale_);
void ImFont_GetDisplayOffset(const struct ImFont *font, struct ImVec2 *pOut);
const struct IMFONTGLYPH *ImFont_GetFallbackGlyph(const struct ImFont *font);
void ImFont_SetFallbackGlyph(struct ImFont *font, const struct IMFONTGLYPH *FallbackGlyph_);
float ImFont_GetFallbackAdvanceX(const struct ImFont *font);
ImWchar ImFont_GetFallbackChar(const struct ImFont *font);
short ImFont_GetConfigDataCount(const struct ImFont *font);
struct ImFontConfig *ImFont_GetConfigData(struct ImFont *font);
struct ImFontAtlas *ImFont_GetContainerAtlas(struct ImFont *font);
float ImFont_GetAscent(const struct ImFont *font);
float ImFont_GetDescent(const struct ImFont *font);
int ImFont_GetMetricsTotalSurface(const struct ImFont *font);
void ImFont_ClearOutputData(struct ImFont *font);
void ImFont_BuildLookupTable(struct ImFont *font);
const struct IMFONTGLYPH *ImFont_FindGlyph(const struct ImFont *font, ImWchar c);
void ImFont_SetFallbackChar(struct ImFont *font, ImWchar c);
float ImFont_GetCharAdvance(const struct ImFont *font, ImWchar c);
bool ImFont_IsLoaded(const struct ImFont *font);
const char *ImFont_GetDebugName(const struct ImFont *font);
void ImFont_CalcTextSizeA(const struct ImFont *font, struct ImVec2 *pOut, float size, float max_width, float wrap_width, const char *text_begin, const char *text_end, const char **remaining);
const char *ImFont_CalcWordWrapPositionA(const struct ImFont *font, float scale, const char *text, const char *text_end, float wrap_width);
void ImFont_RenderChar(const struct ImFont *font, struct ImDrawList *draw_list, float size, struct ImVec2 pos, ImU32 col, unsigned short c);
void ImFont_RenderText(const struct ImFont *font, struct ImDrawList *draw_list, float size, struct ImVec2 pos, ImU32 col, const struct ImVec4 *clip_rect, const char *text_begin, const char *text_end, float wrap_width, bool cpu_fine_clip);
int ImFont_Glyphs_size(const struct ImFont *font);
struct IMFONTGLYPH *ImFont_Glyphs_index(struct ImFont *font, int index);
int ImFont_IndexXAdvance_size(const struct ImFont *font);
float ImFont_IndexXAdvance_index(const struct ImFont *font, int index);
int ImFont_IndexLookup_size(const struct ImFont *font);
unsigned short ImFont_IndexLookup_index(const struct ImFont *font, int index);
]]

local function defaultConcat(a,b) return tostring(a) .. tostring(b) end
local ImVec2 = ffi.metatype('struct ImVec2', {
	__concat = defaultConcat,
	__tostring = function(v) return v.x..','..v.y end,
})
local ImVec4 = ffi.metatype('struct ImVec4', {
	__concat = defaultConcat,
	__tostring = function(v) return v.x..','..v.y..','..v.z..','..v.w end,
})

--]==]

-- I would use the ffi comparison, but it is only checks wrt const-ness
-- it doesn't equate pointers and arrays
local function isptr(x, ptrPattern)
	if type(x) ~= 'cdata' then return false end
	local ctype = tostring(ffi.typeof(x))
	-- the original ctype
	return ctype:match('^ctype<'..ptrPattern..'%s*%*>$')
	-- maybe const
		or ctype:match('^ctype<const%s+'..ptrPattern..'%s*%*>$')
	-- maybe array
		or ctype:match('^ctype<'..ptrPattern..'%s*%[.*%]>$')
	-- maybe const array
		or ctype:match('^ctype<const%s+'..ptrPattern..'%s*%[.*%]>$')
end

-- [[ implementing function overloading
local wrapper = setmetatable({
	ImVec2 = ImVec2,
	ImVec4 = ImVec4,
	
	igBegin = function(...)
		local n = select('#', ...)
		-- if the 3rd arg is an ImVec2 then use the 2nd prototype
		local arg3 = select(3, ...)
		if type(arg3) == 'cdata' and tostring(ffi.typeof(arg3)) == 'ctype<struct ImVec2>' then
			local name, p_open, size_on_first_use, bg_alpha, flags = ...
			if n < 4 then bg_alpha = -1 end
			if n < 5 then flags = 0 end
			return ig.igBegin2(name, p_open, size_on_first_use, bg_alpha, flags)
		else
			local name, p_open, flags = ...
			if n < 2 then p_open = nil end
			if n < 3 then flags = 0 end
			return ig.igBegin(name, p_open, flags)
		end
	end,
	igBeginChild = function(...)
		local n = select('#', ...)
		local arg1, size, border, extra_flags = ...
		if n < 2 then size = ImVec2(0,0) end
		if n < 3 then border = false end
		if n < 4 then extra_flags = 0 end
		if type(arg1) == 'number'
		or (type(arg1) == 'cdata' and ffi.istype('ImGuiID', arg1))
		then
			return ig.igBeginChildEx(arg1, size, border, extra_flags)
		else	-- string
			return ig.igBeginChild(arg1, size, border, extra_flags)
		end
	end,
	igBeginMenu = function(...)
		local n = select('#', ...)
		local label, enabled = ...
		if n < 2 then enabled = true end
		return ig.igBeginMenu(label, enabled)
	end,
	igBeginPopupModal = function(...)
		local n = select('#', ...)
		local name, p_open, extra_flags = ...
		if n < 2 then p_open = nil end
		if n < 3 then extra_flags = 0 end
		return ig.igBeginPopupModal(name, p_open, extra_flags)
	end,
	igButton = function(...)
		local n = select('#', ...)
		local label, size = ...
		if n < 2 then size = ImVec2(0,0) end
		return ig.igButton(label, size)
	end,
	igCollapsingHeader = function(...)
		local n = select('#', ...)
		-- if the 2nd arg is a pointer then use the 2nd prototype
		if isptr(select(2, ...), 'bool') then
			local label, p_open, flags = ...
			if n < 3 then flags = 0 end
			return ig.igCollapsingHeaderBoolPtr(label, p_open, flags)
		else
			local label, flags = ...
			if n < 2 then flags = 0 end
			return ig.igCollapsingHeader(label, flags)
		end
	end,
	igCombo = function(...)
		local n = select('#', ...)
		local arg3 = select(3, ...)
		local type3 = type(arg3)
		if isptr(select(3, ...), 'char%s*%*') then
			local label, current_item, items, item_count, height_in_items = ...
			if n < 5 then height_in_items = -1 end
			return ig.igCombo(label, current_item, items, item_count, height_in_items)
		elseif type3 == 'function' or ctype3 == 'ctype<bool (*)()>'  then	-- why doesn't ffi.typeof(ffi.cast) for callbacks show any arguments?
			local label, current_item, items_getter, data, items_count, height_in_items = ...
			if n < 6 then height_in_items = -1 end
			return ig.igCombo3(label, current_item, items_getter, data, items_count, height_in_items)
		-- lua compat:
		elseif type3 == 'table' then
			local label, current_item, item_table, height_in_items = ...
			if n < 4 then height_in_items = -1 end
			local items_separated_by_zeros = table.concat(item_table, '\0')..'\0'
			return ig.igCombo2(label, current_item, items_separated_by_zeros, height_in_items)
		else
			local label, current_item, items_separated_by_zeros, height_in_items = ...
			if n < 4 then height_in_items = -1 end
			return ig.igCombo2(label, current_item, items_separated_by_zeros, height_in_items)
		end
	end,
	igColorButton = function(...)
		local n = select('#', ...)
		local col, small_height, outline_border = ...
		if type(col) == 'table' then col = ImVec4(table.unpack(col,1,4)) end
		if n < 2 then small_height = false end
		if n < 3 then outline_border = true end
		return ig.igColorButton(col, small_height, outline_border)
	end,
	igInputFloat = function(...)
		local n = select('#', ...)
		local label, v, step, step_fast, decimal_precision, extra_flags = ...
		if n < 3 then step = 0 end
		if n < 4 then step_fast = 0 end
		if n < 5 then decimal_precision = -1 end
		if n < 6 then extra_flags = 0 end
		return ig.igInputFloat(label, v, step, step_fast, decimal_precision, extra_flags)
	end,
	igInputFloat2 = function(...)
		local n = select('#', ...)
		local label, v, decimal_precision, extra_flags = ...
		if n < 3 then decimal_precision = -1 end
		if n < 4 then extra_flags = 0 end
		return ig.igInputFloat2(label, v, decimal_precision, extra_flags)
	end,
	igInputFloat3 = function(...)
		local n = select('#', ...)
		local label, v, decimal_precision, extra_flags = ...
		if n < 3 then decimal_precision = -1 end
		if n < 4 then extra_flags = 0 end
		return ig.igInputFloat3(label, v, decimal_precision, extra_flags)
	end,
	igInputFloat4 = function(...)
		local n = select('#', ...)
		local label, v, decimal_precision, extra_flags = ...
		if n < 3 then decimal_precision = -1 end
		if n < 4 then extra_flags = 0 end
		return ig.igInputFloat4(label, v, decimal_precision, extra_flags)
	end,
	igInputInt = function(...)
		local n = select('#', ...)
		local label, v, step, step_fast, extra_flags = ...
		if n < 3 then step = 1 end
		if n < 4 then step_fast = 100 end
		if n < 5 then extra_flags = 0 end
		return ig.igInputInt(label, v, step, step_fast, extra_flags)
	end,
	igInputInt2 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt2(label, v, extra_flags)
	end,
	igInputInt3 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt3(label, v, extra_flags)
	end,
	igInputInt4 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt4(label, v, extra_flags)
	end,
	igGetCursorScreenPos = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetCursorScreenPos(result)
			return result[0]
		end
	end)(),
	igGetMousePos = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetMousePos(result)
			return result[0]
		end
	end)(),
	igGetWindowSize = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetWindowSize(result)
			return result[0]
		end
	end)(),
	igImage = function(...)
		local n = select('#', ...)
		local user_texture_id, size, uv0, uv1, tint_col, border_col = ...
		if n < 3 then uv0 = ImVec2(0,0) end
		if n < 4 then uv1 = ImVec2(1,1) end
		if n < 5 then tint_col = ImVec4(1,1,1,1) end
		if n < 6 then border_col = ImVec4(0,0,0,0) end
		return ig.igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
	end,
	igImageButton = function(...)
		local n = select('#', ...)
		local user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col = ...
		if n < 3 then uv0 = ImVec2(0,0) end
		if n < 4 then uv1 = ImVec2(1,1) end
		if n < 5 then frame_padding = -1 end
		if n < 6 then bg_col = ImVec4(0,0,0,0) end
		if n < 7 then tint_col = ImVec4(1,1,1,1) end
		return ig.igImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col)
	end,
	igInputText = function(...)
		local n = select('#', ...)
		local label, buf, buf_size, flags, callback, user_data = ...
		if n < 4 then flags = 0 end
		if n < 5 then callback = nil end
		if n < 6 then user_data = nil end
		return ig.igInputText(label, buf, buf_size, flags, callback, user_data)
	end,
	igInputTextMultiline = function(...)
		local n = select('#', ...)
		local label, buf, buf_size, size, flags, callback, user_data = ...
		if n < 4 then size = ImVec2(0,0) end
		if n < 5 then flags = 0 end
		if n < 6 then callback = nil end
		if n < 7 then user_data = nil end
		return ig.igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)
	end,
	igMenuItem = function(...)
		local n = select('#', ...)
		local label, shortcut, arg2, enabled = ...
		if n < 2 then shortcut = nil end
		if n < 3 then arg2 = false end
		if n < 4 then enabled = true end
		if isptr(arg2, 'bool') then
			return ig.igMenuItemPtr(label, shortcut, arg2, enabled)
		else
			return ig.igMenuItem(label, shortcut, arg2, enabled)
		end
	end,
	igSameLine = function(...)
		local n = select('#', ...)
		local pos_x, spacing_w = ...
		if n < 1 then pos_x = 0 end
		if n < 2 then spacing_w = -1 end
		return ig.igSameLine(pos_x, spacing_w)
	end,
	igSelectable = function(...)
		local n = select('#', ...)
		local label, arg2, flags, size = ...
		if n < 2 then arg2 = false end
		if n < 3 then flags = 0 end
		if n < 4 then size = ImVec2(0,0) end
		if isptr(arg2, 'bool') then
 			return ig.igSelectableEx(label, arg2, flags, size)
		else
			return ig.igSelectable(label, arg2, flags, size)
		end
	end,
	igSetScrollHere = function(...)
		local n = select('#', ...)
		local center_y_ratio = ...
		if n < 1 then center_y_ratio = .5 end
		return ig.igSetScrollHere(center_y_ratio)
	end,
	igSetScrollFromPosY = function(...)
		local n = select('#', ...)
		local pos_y, center_y_ratio = ...
		if n < 2 then center_y_ratio = .5 end
		return ig.igSetScrollFromPosY(pos_y, center_y_ratio)
	end,
	igSliderFloat = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat2 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat2(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat3 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat3(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat4 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat4(label, v, v_min, v_max, display_format, power)
	end,
	igSliderInt = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt(label, v, v_min, v_max, display_format)
	end,
	igSliderInt2 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt2(label, v, v_min, v_max, display_format)
	end,
	igSliderInt3 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt3(label, v, v_min, v_max, display_format)
	end,
	igSliderInt4 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt4(label, v, v_min, v_max, display_format)
	end,
}, {
	__index = ig,
})

return wrapper
--]]
--[[ no overloading
return ig
--]]
