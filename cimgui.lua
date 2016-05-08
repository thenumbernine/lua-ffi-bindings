local ffi = require 'ffi'

local cimgui = ffi.load(os.getenv'LUAJIT_LIBPATH' .. '/bin/OSX/cimgui.dylib')

-- imgui
ffi.cdef[[
/* Forward declarations*/
typedef void ImDrawChannel;               /* Temporary storage for outputting drawing commands out of order, used by ImDrawList::ChannelsSplit()*/
typedef void ImDrawCmd;                   /* A single draw command within a parent ImDrawList (generally maps to 1 GPU draw call)*/
typedef void ImDrawData;                  /* All draw command lists required to render the frame*/
typedef void ImDrawList;                  /* A single draw command list (generally one per window)*/
typedef void ImDrawVert;                  /* A single vertex (20 bytes by default, override layout with IMGUI_OVERRIDE_DRAWVERT_STRUCT_LAYOUT)*/
typedef void ImDrawIdx;
typedef void ImFont;                      /* Runtime data for a single font within a parent ImFontAtlas*/
typedef void ImFontAtlas;                 /* Runtime data for multiple fonts, bake multiple fonts into a single texture, TTF font loader*/
typedef void ImFontConfig;                /* Configuration data when adding a font or merging fonts*/
typedef void ImColor;                     /* Helper functions to create a color that can be converted to either u32 or float4*/
typedef void ImGuiIO;                     /* Main configuration and I/O between your application and ImGui*/
typedef void ImGuiOnceUponAFrame;         /* Simple helper for running a block of code not more than once a frame, used by IMGUI_ONCE_UPON_A_FRAME macro*/
typedef void ImGuiStorage;                /* Simple custom key value storage*/
typedef void ImGuiStyle;                  /* Runtime data for styling/colors*/
typedef void ImGuiTextFilter;             /* Parse and apply text filters. In format "aaaaa[,bbbb][,ccccc]"*/
typedef void ImGuiTextBuffer;             /* Text buffer for logging/accumulating text*/
typedef void ImGuiTextEditCallbackData;   /* Shared state of ImGui::InputText() when using custom callbacks (advanced)*/
typedef void ImGuiListClipper;            /* Helper to manually clip large list of items*/
typedef void *ImDrawCallback;

/* Enumerations (declared as int for compatibility and to not pollute the top of this file)*/
typedef unsigned int ImU32;
typedef unsigned short ImWchar;     /* character for keyboard input/display*/
typedef void* ImTextureID;          /* user data to refer to a texture (e.g. store your texture handle/id)*/
typedef ImU32 ImGuiID;              /* unique ID used by widgets (typically hashed from a stack of string)*/
typedef int ImGuiCol;               /* a color identifier for styling       // enum ImGuiCol_*/
typedef int ImGuiStyleVar;          /* a variable identifier for styling    // enum ImGuiStyleVar_*/
typedef int ImGuiKey;               /* a key identifier (ImGui-side enum)   // enum ImGuiKey_*/
typedef int ImGuiAlign;             /* alignment                            // enum ImGuiAlign_*/
typedef int ImGuiColorEditMode;     /* color edit mode for ColorEdit*()     // enum ImGuiColorEditMode_*/
typedef int ImGuiMouseCursor;       /* a mouse cursor identifier            // enum ImGuiMouseCursor_*/
typedef int ImGuiWindowFlags;       /* window flags for Begin*()            // enum ImGuiWindowFlags_*/
typedef int ImGuiSetCond;           /* condition flags for Set*()           // enum ImGuiSetCond_*/
typedef int ImGuiInputTextFlags;    /* flags for InputText*()               // enum ImGuiInputTextFlags_*/
typedef int ImGuiSelectableFlags;   /* flags for Selectable()               // enum ImGuiSelectableFlags_*/
typedef int (*ImGuiTextEditCallback)(ImGuiTextEditCallbackData *data);

/* Others helpers at bottom of the file:*/
/* class ImVector<>                 // Lightweight std::vector like class.*/
/* IMGUI_ONCE_UPON_A_FRAME          // Execute a block of code once per frame only (convenient for creating UI within deep-nested code that runs multiple times)*/

struct ImVec2
{
    float x, y;
};

struct ImVec4
{
    float x, y, z, w;
};

/* Flags for ImGui::Begin()*/
enum ImGuiWindowFlags_
{
    /* Default: 0*/
    ImGuiWindowFlags_NoTitleBar             = 1 << 0,   /* Disable title-bar*/
    ImGuiWindowFlags_NoResize               = 1 << 1,   /* Disable user resizing with the lower-right grip*/
    ImGuiWindowFlags_NoMove                 = 1 << 2,   /* Disable user moving the window*/
    ImGuiWindowFlags_NoScrollbar            = 1 << 3,   /* Disable scrollbars (window can still scroll with mouse or programatically)*/
    ImGuiWindowFlags_NoScrollWithMouse      = 1 << 4,   /* Disable user vertically scrolling with mouse wheel*/
    ImGuiWindowFlags_NoCollapse             = 1 << 5,   /* Disable user collapsing window by double-clicking on it*/
    ImGuiWindowFlags_AlwaysAutoResize       = 1 << 6,   /* Resize every window to its content every frame*/
    ImGuiWindowFlags_ShowBorders            = 1 << 7,   /* Show borders around windows and items*/
    ImGuiWindowFlags_NoSavedSettings        = 1 << 8,   /* Never load/save settings in .ini file*/
    ImGuiWindowFlags_NoInputs               = 1 << 9,   /* Disable catching mouse or keyboard inputs*/
    ImGuiWindowFlags_MenuBar                = 1 << 10,  /* Has a menu-bar*/
    ImGuiWindowFlags_HorizontalScrollbar    = 1 << 11,  /* Allow horizontal scrollbar to appear (off by default). You need to use SetNextWindowContentSize(struct ImVec2(width,0.0f)); prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.*/
    ImGuiWindowFlags_NoFocusOnAppearing     = 1 << 12,  /* Disable taking focus when transitioning from hidden to visible state*/
    ImGuiWindowFlags_NoBringToFrontOnFocus  = 1 << 13,  /* Disable bringing window to front when taking focus (e.g. clicking on it or programatically giving it focus)*/
    ImGuiWindowFlags_ForceVerticalScrollbar = 1 << 14,  /* Always show vertical scrollbar (even if ContentSize.y < Size.y)*/
    ImGuiWindowFlags_ForceHorizontalScrollbar=1 << 15,  /* Always show horizontal scrollbar (even if ContentSize.x < Size.x)*/
    /* [Internal]*/
    ImGuiWindowFlags_ChildWindow            = 1 << 20,  /* Don't use! For internal use by BeginChild()*/
    ImGuiWindowFlags_ChildWindowAutoFitX    = 1 << 21,  /* Don't use! For internal use by BeginChild()*/
    ImGuiWindowFlags_ChildWindowAutoFitY    = 1 << 22,  /* Don't use! For internal use by BeginChild()*/
    ImGuiWindowFlags_ComboBox               = 1 << 23,  /* Don't use! For internal use by ComboBox()*/
    ImGuiWindowFlags_Tooltip                = 1 << 24,  /* Don't use! For internal use by BeginTooltip()*/
    ImGuiWindowFlags_Popup                  = 1 << 25,  /* Don't use! For internal use by BeginPopup()*/
    ImGuiWindowFlags_Modal                  = 1 << 26,  /* Don't use! For internal use by BeginPopupModal()*/
    ImGuiWindowFlags_ChildMenu              = 1 << 27   /* Don't use! For internal use by BeginMenu()*/
};

/* Flags for ImGui::InputText()*/
enum ImGuiInputTextFlags_
{
    /* Default: 0*/
    ImGuiInputTextFlags_CharsDecimal        = 1 << 0,   /* Allow 0123456789.+-*/
    ImGuiInputTextFlags_CharsHexadecimal    = 1 << 1,   /* Allow 0123456789ABCDEFabcdef*/
    ImGuiInputTextFlags_CharsUppercase      = 1 << 2,   /* Turn a..z into A..Z*/
    ImGuiInputTextFlags_CharsNoBlank        = 1 << 3,   /* Filter out spaces, tabs*/
    ImGuiInputTextFlags_AutoSelectAll       = 1 << 4,   /* Select entire text when first taking mouse focus*/
    ImGuiInputTextFlags_EnterReturnsTrue    = 1 << 5,   /* Return 'true' when Enter is pressed (as opposed to when the value was modified)*/
    ImGuiInputTextFlags_CallbackCompletion  = 1 << 6,   /* Call user function on pressing TAB (for completion handling)*/
    ImGuiInputTextFlags_CallbackHistory     = 1 << 7,   /* Call user function on pressing Up/Down arrows (for history handling)*/
    ImGuiInputTextFlags_CallbackAlways      = 1 << 8,   /* Call user function every time. User code may query cursor position, modify text buffer.*/
    ImGuiInputTextFlags_CallbackCharFilter  = 1 << 9,   /* Call user function to filter character. Modify data->EventChar to replace/filter input, or return 1 to discard character.*/
    ImGuiInputTextFlags_AllowTabInput       = 1 << 10,  /* Pressing TAB input a '\t' character into the text field*/
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,  /* In multi-line mode, allow exiting edition by pressing Enter. Ctrl+Enter to add new line (by default adds new lines with Enter).*/
    ImGuiInputTextFlags_NoHorizontalScroll  = 1 << 12,  /* Disable following the cursor horizontally*/
    ImGuiInputTextFlags_AlwaysInsertMode    = 1 << 13,  /* Insert mode*/
    ImGuiInputTextFlags_ReadOnly            = 1 << 14,  /* Read-only mode*/
    ImGuiInputTextFlags_Password            = 1 << 15,  /* Password mode, display all characters as '*'*/
    /* [Internal]*/
    ImGuiInputTextFlags_Multiline           = 1 << 20   /* For internal use by InputTextMultiline()*/
};

/* Flags for ImGui::Selectable()*/
enum ImGuiSelectableFlags_
{
    /* Default: 0*/
    ImGuiSelectableFlags_DontClosePopups    = 1 << 0,   /* Clicking this don't close parent popup window*/
    ImGuiSelectableFlags_SpanAllColumns     = 1 << 1,   /* Selectable frame can span all columns (text will still fit in current column)*/
    ImGuiSelectableFlags_AllowDoubleClick   = 1 << 2    /* Generate press events on double clicks too*/
};

/* User fill ImGuiIO.KeyMap[] array with indices into the ImGuiIO.KeysDown[512] array*/
enum ImGuiKey_
{
    ImGuiKey_Tab,       /* for tabbing through fields*/
    ImGuiKey_LeftArrow, /* for text edit*/
    ImGuiKey_RightArrow,/* for text edit*/
    ImGuiKey_UpArrow,   /* for text edit*/
    ImGuiKey_DownArrow, /* for text edit*/
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,      /* for text edit*/
    ImGuiKey_End,       /* for text edit*/
    ImGuiKey_Delete,    /* for text edit*/
    ImGuiKey_Backspace, /* for text edit*/
    ImGuiKey_Enter,     /* for text edit*/
    ImGuiKey_Escape,    /* for text edit*/
    ImGuiKey_A,         /* for text edit CTRL+A: select all*/
    ImGuiKey_C,         /* for text edit CTRL+C: copy*/
    ImGuiKey_V,         /* for text edit CTRL+V: paste*/
    ImGuiKey_X,         /* for text edit CTRL+X: cut*/
    ImGuiKey_Y,         /* for text edit CTRL+Y: redo*/
    ImGuiKey_Z,         /* for text edit CTRL+Z: undo*/
    ImGuiKey_COUNT
};

/* Enumeration for PushStyleColor() / PopStyleColor()*/
enum ImGuiCol_
{
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildWindowBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,               /* Background of checkbox, radio button, plot, slider, text input*/
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_TitleBgActive,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_ComboBg,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Column,
    ImGuiCol_ColumnHovered,
    ImGuiCol_ColumnActive,
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
    ImGuiCol_TooltipBg,
    ImGuiCol_ModalWindowDarkening,  /* darken entire screen when a modal window is active*/
    ImGuiCol_COUNT
};

/* Enumeration for PushStyleVar() / PopStyleVar()*/
/* NB: the enum only refers to fields of ImGuiStyle() which makes sense to be pushed/poped in UI code. Feel free to add others.*/
enum ImGuiStyleVar_
{
    ImGuiStyleVar_Alpha,               /* float*/
    ImGuiStyleVar_WindowPadding,       /* ImVec2*/
    ImGuiStyleVar_WindowRounding,      /* float*/
    ImGuiStyleVar_WindowMinSize,       /* ImVec2*/
    ImGuiStyleVar_ChildWindowRounding, /* float*/
    ImGuiStyleVar_FramePadding,        /* ImVec2*/
    ImGuiStyleVar_FrameRounding,       /* float*/
    ImGuiStyleVar_ItemSpacing,         /* ImVec2*/
    ImGuiStyleVar_ItemInnerSpacing,    /* ImVec2*/
    ImGuiStyleVar_IndentSpacing,       /* float*/
    ImGuiStyleVar_GrabMinSize          /* float*/
};

enum ImGuiAlign_
{
    ImGuiAlign_Left     = 1 << 0,
    ImGuiAlign_Center   = 1 << 1,
    ImGuiAlign_Right    = 1 << 2,
    ImGuiAlign_Top      = 1 << 3,
    ImGuiAlign_VCenter  = 1 << 4,
    ImGuiAlign_Default  = ImGuiAlign_Left | ImGuiAlign_Top
};

/* Enumeration for ColorEditMode()*/
enum ImGuiColorEditMode_
{
    ImGuiColorEditMode_UserSelect = -2,
    ImGuiColorEditMode_UserSelectShowButton = -1,
    ImGuiColorEditMode_RGB = 0,
    ImGuiColorEditMode_HSV = 1,
    ImGuiColorEditMode_HEX = 2
};

/* Enumeration for GetMouseCursor()*/
enum ImGuiMouseCursor_
{
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,         /* When hovering over InputText, etc.*/
    ImGuiMouseCursor_Move,              /* Unused*/
    ImGuiMouseCursor_ResizeNS,          /* Unused*/
    ImGuiMouseCursor_ResizeEW,          /* When hovering over a column*/
    ImGuiMouseCursor_ResizeNESW,        /* Unused*/
    ImGuiMouseCursor_ResizeNWSE,        /* When hovering over the bottom-right corner of a window*/
    ImGuiMouseCursor_Count_
};

/* Condition flags for ImGui::SetWindow***(), SetNextWindow***(), SetNextTreeNode***() functions*/
/* All those functions treat 0 as a shortcut to ImGuiSetCond_Always*/
enum ImGuiSetCond_
{
    ImGuiSetCond_Always        = 1 << 0, /* Set the variable*/
    ImGuiSetCond_Once          = 1 << 1, /* Only set the variable on the first call per runtime session*/
    ImGuiSetCond_FirstUseEver  = 1 << 2, /* Only set the variable if the window doesn't exist in the .ini file*/
    ImGuiSetCond_Appearing     = 1 << 3  /* Only set the variable if the window is appearing after being inactive (or the first time)*/
};
]]

-- imgui/examples/imgui_sdl_opengl
ffi.cdef[[

struct SDL_Window;
typedef union SDL_Event SDL_Event;

bool        ImGui_ImplSdl_Init(SDL_Window *window);
void        ImGui_ImplSdl_Shutdown();
void        ImGui_ImplSdl_NewFrame(SDL_Window *window);
bool        ImGui_ImplSdl_ProcessEvent(SDL_Event* event);

void        ImGui_ImplSdl_InvalidateDeviceObjects();
bool        ImGui_ImplSdl_CreateDeviceObjects();
]]

-- imgui
ffi.cdef[[

typedef int ImGuiWindowFlags;
typedef int ImGuiSetCond;
typedef int ImGuiColorEditMode;

ImGuiIO*         igGetIO();
ImGuiStyle*      igGetStyle();
ImDrawData*      igGetDrawData();
void             igNewFrame();
void             igRender();
void             igShutdown();
void             igShowUserGuide();
void             igShowStyleEditor(ImGuiStyle* ref);
void             igShowTestWindow(bool* opened);
void             igShowMetricsWindow(bool* opened);

/* Window*/
bool             igBegin(const char* name, bool* p_opened, ImGuiWindowFlags flags);
bool             igBegin2(const char* name, bool* p_opened, const struct ImVec2 size_on_first_use, float bg_alpha, ImGuiWindowFlags flags);
void             igEnd();
bool             igBeginChild(const char* str_id, const struct ImVec2 size, bool border, ImGuiWindowFlags extra_flags);
bool             igBeginChildEx(ImGuiID id, const struct ImVec2 size, bool border, ImGuiWindowFlags extra_flags);
void             igEndChild();
void             igGetContentRegionMax(struct ImVec2* out);
void             igGetContentRegionAvail(struct ImVec2* out);
float            igGetContentRegionAvailWidth();
void             igGetWindowContentRegionMin(struct ImVec2* out);
void             igGetWindowContentRegionMax(struct ImVec2* out);
float            igGetWindowContentRegionWidth();
ImDrawList*      igGetWindowDrawList();
void             igGetWindowPos(struct ImVec2* out);
void             igGetWindowSize(struct ImVec2* out);
float            igGetWindowWidth();
float            igGetWindowHeight();
bool             igIsWindowCollapsed();
void             igSetWindowFontScale(float scale);

void             igSetNextWindowPos(const struct ImVec2 pos, ImGuiSetCond cond);
void             igSetNextWindowPosCenter(ImGuiSetCond cond);
void             igSetNextWindowSize(const struct ImVec2 size, ImGuiSetCond cond);
void             igSetNextWindowContentSize(const struct ImVec2 size);
void             igSetNextWindowContentWidth(float width);
void             igSetNextWindowCollapsed(bool collapsed, ImGuiSetCond cond);
void             igSetNextWindowFocus();
void             igSetWindowPos(const struct ImVec2 pos, ImGuiSetCond cond);
void             igSetWindowSize(const struct ImVec2 size, ImGuiSetCond cond);
void             igSetWindowCollapsed(bool collapsed, ImGuiSetCond cond);
void             igSetWindowFocus();
void             igSetWindowPosByName(const char* name, const struct ImVec2 pos, ImGuiSetCond cond);
void             igSetWindowSize2(const char* name, const struct ImVec2 size, ImGuiSetCond cond);
void             igSetWindowCollapsed2(const char* name, bool collapsed, ImGuiSetCond cond);
void             igSetWindowFocus2(const char* name);

float            igGetScrollX();
float            igGetScrollY();
float            igGetScrollMaxX();
float            igGetScrollMaxY();
void             igSetScrollX(float scroll_x);
void             igSetScrollY(float scroll_y);
//void             igSetScrollHere(float center_y_ratio = 0.5f);
void             igSetScrollHere(float center_y_ratio);
//void             igSetScrollFromPosY(float pos_y, float center_y_ratio = 0.5f);
void             igSetScrollFromPosY(float pos_y, float center_y_ratio);
void             igSetKeyboardFocusHere(int offset);
void             igSetStateStorage(ImGuiStorage* tree);
ImGuiStorage*    igGetStateStorage();

/* Parameters stacks (shared)*/
void             igPushFont(ImFont* font);
void             igPopFont();
void             igPushStyleColor(ImGuiCol idx, const struct ImVec4 col);
void             igPopStyleColor(int count);
void             igPushStyleVar(ImGuiStyleVar idx, float val);
void             igPushStyleVarVec(ImGuiStyleVar idx, const struct ImVec2 val);
void             igPopStyleVar(int count);
ImFont*          igGetFont();
float            igGetFontSize();
void             igGetFontTexUvWhitePixel(struct ImVec2* pOut);
ImU32            igGetColorU32(ImGuiCol idx, float alpha_mul);
ImU32            igGetColorU32Vec(const struct ImVec4* col);


/* Parameters stacks (current window)*/
void             igPushItemWidth(float item_width);
void             igPopItemWidth();
float            igCalcItemWidth();
void             igPushTextWrapPos(float wrap_pos_x);
void             igPopTextWrapPos();
void             igPushAllowKeyboardFocus(bool v);
void             igPopAllowKeyboardFocus();
void             igPushButtonRepeat(bool repeat);
void             igPopButtonRepeat();

/* Layout*/
void             igBeginGroup();
void             igEndGroup();
void             igSeparator();
void             igSameLine(float pos_x, float spacing_w);
void             igSpacing();
void             igDummy(const struct ImVec2* size);
void             igIndent();
void             igUnindent();
void             igGetCursorPos(struct ImVec2* pOut);
float            igGetCursorPosX();
float            igGetCursorPosY();
void             igSetCursorPos(const struct ImVec2 local_pos);
void             igSetCursorPosX(float x);
void             igSetCursorPosY(float y);
void             igGetCursorStartPos(struct ImVec2* pOut);
void             igGetCursorScreenPos(struct ImVec2* pOut);
void             igSetCursorScreenPos(const struct ImVec2 pos);
void             igAlignFirstTextHeightToWidgets();
float            igGetTextLineHeight();
float            igGetTextLineHeightWithSpacing();
float            igGetItemsLineHeightWithSpacing();

/*Columns*/
void             igColumns(int count, const char* id, bool border);
void             igNextColumn();
int              igGetColumnIndex();
float            igGetColumnOffset(int column_index);
void             igSetColumnOffset(int column_index, float offset_x);
float            igGetColumnWidth(int column_index);
int              igGetColumnsCount();

/* ID scopes*/
/* If you are creating widgets in a loop you most likely want to push a unique identifier so ImGui can differentiate them*/
/* You can also use "##extra" within your widget name to distinguish them from each others (see 'Programmer Guide')*/
void             igPushIdStr(const char* str_id);
void             igPushIdStrRange(const char* str_begin, const char* str_end);
void             igPushIdPtr(const void* ptr_id);
void             igPushIdInt(int int_id);
void             igPopId();
ImGuiID          igGetIdStr(const char* str_id);
ImGuiID          igGetIdStrRange(const char* str_begin,const char* str_end);
ImGuiID          igGetIdPtr(const void* ptr_id);

/* Widgets*/
void             igText(const char* fmt, ...);
void             igTextV(const char* fmt, va_list args);
void             igTextColored(const struct ImVec4 col, const char* fmt, ...);
void             igTextColoredV(const struct ImVec4 col, const char* fmt, va_list args);
void             igTextDisabled(const char* fmt, ...);
void             igTextDisabledV(const char* fmt, va_list args);
void             igTextWrapped(const char* fmt, ...);
void             igTextWrappedV(const char* fmt, va_list args);
void             igTextUnformatted(const char* text, const char* text_end);
void             igLabelText(const char* label, const char* fmt, ...);
void             igLabelTextV(const char* label, const char* fmt, va_list args);
void             igBullet();
void             igBulletText(const char* fmt, ...);
void             igBulletTextV(const char* fmt, va_list args);
bool             igButton(const char* label, const struct ImVec2 size);
bool             igSmallButton(const char* label);
bool             igInvisibleButton(const char* str_id, const struct ImVec2 size);
void             igImage(ImTextureID user_texture_id, const struct ImVec2 size, const struct ImVec2 uv0, const struct ImVec2 uv1, const struct ImVec4 tint_col, const struct ImVec4 border_col);
bool             igImageButton(ImTextureID user_texture_id, const struct ImVec2 size, const struct ImVec2 uv0, const struct ImVec2 uv1, int frame_padding, const struct ImVec4 bg_col, const struct ImVec4 tint_col);
bool             igCollapsingHeader(const char* label, const char* str_id, bool display_frame, bool default_open);
bool             igCheckbox(const char* label, bool* v);
bool             igCheckboxFlags(const char* label, unsigned int* flags, unsigned int flags_value);
bool             igRadioButtonBool(const char* label, bool active);
bool             igRadioButton(const char* label, int* v, int v_button);
bool             igCombo(const char* label, int* current_item, const char** items, int items_count, int height_in_items);
bool             igCombo2(const char* label, int* current_item, const char* items_separated_by_zeros, int height_in_items);
bool             igCombo3(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items);
bool             igColorButton(const struct ImVec4 col, bool small_height, bool outline_border);
bool             igColorEdit3(const char* label, float col[3]);
bool             igColorEdit4(const char* label, float col[4], bool show_alpha);
void             igColorEditMode(ImGuiColorEditMode mode);
void             igPlotLines(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size, int stride);
void             igPlotLines2(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size);
void             igPlotHistogram(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size, int stride);
void             igPlotHistogram2(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, struct ImVec2 graph_size);
void             igProgressBar(float fraction, const struct ImVec2* size_arg, const char* overlay);


/* Widgets: Sliders (tip: ctrl+click on a slider to input text)*/
bool             igSliderFloat(const char* label, float* v, float v_min, float v_max, const char* display_format, float power);
bool             igSliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* display_format, float power);
bool             igSliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* display_format, float power);
bool             igSliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* display_format, float power);
bool             igSliderAngle(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max);
bool             igSliderInt(const char* label, int* v, int v_min, int v_max, const char* display_format);
bool             igSliderInt2(const char* label, int v[2], int v_min, int v_max, const char* display_format);
bool             igSliderInt3(const char* label, int v[3], int v_min, int v_max, const char* display_format);
bool             igSliderInt4(const char* label, int v[4], int v_min, int v_max, const char* display_format);
bool             igVSliderFloat(const char* label, const struct ImVec2 size, float* v, float v_min, float v_max, const char* display_format, float power);
bool             igVSliderInt(const char* label, const struct ImVec2 size, int* v, int v_min, int v_max, const char* display_format);

/* Widgets: Drags (tip: ctrl+click on a drag box to input text)*/
bool             igDragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* display_format, float power);     /* If v_max >= v_max we have no bound*/
bool             igDragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* display_format, float power);
bool             igDragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* display_format, float power);
bool             igDragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* display_format, float power);
//bool             igDragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", const char* display_format_max = NULL, float power = 1.0f);
bool             igDragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* display_format, const char* display_format_max, float power);
bool             igDragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* display_format);                                       /* If v_max >= v_max we have no bound*/
bool             igDragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* display_format);
bool             igDragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* display_format);
bool             igDragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* display_format);
//bool             igDragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f", const char* display_format_max = NULL);
bool             igDragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* display_format, const char* display_format_max);


/* Widgets: Input*/
bool             igInputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data);
bool             igInputTextMultiline(const char* label, char* buf, size_t buf_size, const struct ImVec2 size, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback, void* user_data);
bool             igInputFloat(const char* label, float* v, float step, float step_fast, int decimal_precision, ImGuiInputTextFlags extra_flags);
bool             igInputFloat2(const char* label, float v[2], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool             igInputFloat3(const char* label, float v[3], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool             igInputFloat4(const char* label, float v[4], int decimal_precision, ImGuiInputTextFlags extra_flags);
bool             igInputInt(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags extra_flags);
bool             igInputInt2(const char* label, int v[2], ImGuiInputTextFlags extra_flags);
bool             igInputInt3(const char* label, int v[3], ImGuiInputTextFlags extra_flags);
bool             igInputInt4(const char* label, int v[4], ImGuiInputTextFlags extra_flags);

/* Widgets: Trees*/
bool             igTreeNode(const char* str_label_id);
bool             igTreeNodeStr(const char* str_id, const char* fmt, ...);
bool             igTreeNodePtr(const void* ptr_id, const char* fmt, ...);
bool             igTreeNodeStrV(const char* str_id, const char* fmt, va_list args);
bool             igTreeNodePtrV(const void* ptr_id, const char* fmt, va_list args);
void             igTreePushStr(const char* str_id);
void             igTreePushPtr(const void* ptr_id);
void             igTreePop();
void             igSetNextTreeNodeOpened(bool opened, ImGuiSetCond cond);

/* Widgets: Selectable / Lists*/
bool             igSelectable(const char* label, bool selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool             igSelectableEx(const char* label, bool* p_selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool             igListBox(const char* label, int* current_item, const char** items, int items_count, int height_in_items);
bool             igListBox2(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items);
bool             igListBoxHeader(const char* label, const struct ImVec2 size);
bool             igListBoxHeader2(const char* label, int items_count, int height_in_items);
void             igListBoxFooter();

/* Widgets: Value() Helpers. Output single value in "name: value" format (tip: freely declare your own within the ImGui namespace!)*/
void             igValueBool(const char* prefix, bool b);
void             igValueInt(const char* prefix, int v);
void             igValueUInt(const char* prefix, unsigned int v);
void             igValueFloat(const char* prefix, float v, const char* float_format);
void             igValueColor(const char* prefix, const struct ImVec4 v);
void             igValueColor2(const char* prefix, unsigned int v);

/* Tooltip*/
void             igSetTooltip(const char* fmt, ...);
void             igSetTooltipV(const char* fmt, va_list args);
void             igBeginTooltip();
void             igEndTooltip();

/* Widgets: Menus*/
bool             igBeginMainMenuBar();
void             igEndMainMenuBar();
bool             igBeginMenuBar();
void             igEndMenuBar();
bool             igBeginMenu(const char* label, bool enabled);
void             igEndMenu();
bool             igMenuItem(const char* label, const char* shortcut, bool selected, bool enabled);
bool             igMenuItemPtr(const char* label, const char* shortcut, bool* p_selected, bool enabled);

/* Popup*/
void             igOpenPopup(const char* str_id);
bool             igBeginPopup(const char* str_id);
bool             igBeginPopupModal(const char* name, bool* p_opened, ImGuiWindowFlags extra_flags);
bool             igBeginPopupContextItem(const char* str_id, int mouse_button);
bool             igBeginPopupContextWindow(bool also_over_items, const char* str_id, int mouse_button);
bool             igBeginPopupContextVoid(const char* str_id, int mouse_button);
void             igEndPopup();
void             igCloseCurrentPopup();

/* Logging: all text output from interface is redirected to tty/file/clipboard. Tree nodes are automatically opened.*/
void             igLogToTTY(int max_depth);
void             igLogToFile(int max_depth, const char* filename);
void             igLogToClipboard(int max_depth);
void             igLogFinish();
void             igLogButtons();
void             igLogText(const char* fmt, ...);

/* Utilities*/
bool             igIsItemHovered();
bool             igIsItemHoveredRect();
bool             igIsItemActive();
bool             igIsItemVisible();
bool             igIsAnyItemHovered();
bool             igIsAnyItemActive();
void             igGetItemRectMin(struct ImVec2* pOut);
void             igGetItemRectMax(struct ImVec2* pOut);
void             igGetItemRectSize(struct ImVec2* pOut);
void             igSetItemAllowOverlap();
bool             igIsWindowHovered();
bool             igIsWindowFocused();
bool             igIsRootWindowFocused();
bool             igIsRootWindowOrAnyChildFocused();
bool             igIsRectVisible(const struct ImVec2 item_size);
bool             igIsPosHoveringAnyWindow(const struct ImVec2 pos);
float            igGetTime();
int              igGetFrameCount();
const char*      igGetStyleColName(ImGuiCol idx);
void             igCalcItemRectClosestPoint(struct ImVec2* pOut, const struct ImVec2 pos, bool on_edge, float outward);
void             igCalcTextSize(struct ImVec2* pOut, const char* text, const char* text_end, bool hide_text_after_double_hash, float wrap_width);
void             igCalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end);

bool             igBeginChildFrame(ImGuiID id, const struct ImVec2 size, ImGuiWindowFlags extra_flags);
void             igEndChildFrame();

void             igColorConvertU32ToFloat4(struct ImVec4* pOut, ImU32 in);
ImU32            igColorConvertFloat4ToU32(const struct ImVec4 in);
void             igColorConvertRGBtoHSV(float r, float g, float b, float* out_h, float* out_s, float* out_v);
void             igColorConvertHSVtoRGB(float h, float s, float v, float* out_r, float* out_g, float* out_b);

int              igGetKeyIndex(ImGuiKey key);
bool             igIsKeyDown(int key_index);
bool             igIsKeyPressed(int key_index, bool repeat);
bool             igIsKeyReleased(int key_index);
bool             igIsMouseDown(int button);
bool             igIsMouseClicked(int button, bool repeat);
bool             igIsMouseDoubleClicked(int button);
bool             igIsMouseReleased(int button);
bool             igIsMouseHoveringWindow();
bool             igIsMouseHoveringAnyWindow();
bool             igIsMouseHoveringRect(const struct ImVec2 r_min, const struct ImVec2 r_max, bool clip);
bool             igIsMouseDragging(int button, float lock_threshold);
void             igGetMousePos(struct ImVec2* pOut);
void             igGetMousePosOnOpeningCurrentPopup(struct ImVec2* pOut);
void             igGetMouseDragDelta(struct ImVec2* pOut, int button, float lock_threshold);
void             igResetMouseDragDelta(int button);
ImGuiMouseCursor igGetMouseCursor();
void             igSetMouseCursor(ImGuiMouseCursor type);
void             igCaptureKeyboardFromApp(bool capture);
void             igCaptureMouseFromApp(bool capture);

/* Helpers functions to access functions pointers in ImGui::GetIO()*/
void*            igMemAlloc(size_t sz);
void             igMemFree(void* ptr);
const char*      igGetClipboardText();
void             igSetClipboardText(const char* text);

/* Internal state access - if you want to share ImGui state between modules (e.g. DLL) or allocate it yourself*/
const char*      igGetVersion();
void*            igGetInternalState();
size_t           igGetInternalStateSize();
void             igSetInternalState(void* state, bool construct);

void             ImFontAtlas_GetTexDataAsRGBA32(ImFontAtlas* atlas, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
void             ImFontAtlas_GetTexDataAsAlpha8(ImFontAtlas* atlas, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
void             ImFontAtlas_SetTexID(ImFontAtlas* atlas, void* tex);
ImFont*          ImFontAtlas_AddFont(ImFontAtlas* atlas, const ImFontConfig* font_cfg);
ImFont*          ImFontAtlas_AddFontDefault(ImFontAtlas* atlas, const ImFontConfig* font_cfg);
ImFont*          ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* atlas, const char* filename, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
ImFont*          ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* atlas, void* ttf_data, int ttf_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
ImFont*          ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* atlas, const void* compressed_ttf_data, int compressed_ttf_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
ImFont*          ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* atlas, const char* compressed_ttf_data_base85, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
void             ImFontAtlas_ClearTexData(ImFontAtlas* atlas);
void             ImFontAtlas_Clear(ImFontAtlas* atlas);

void             ImGuiIO_AddInputCharacter(unsigned short c);
void             ImGuiIO_AddInputCharactersUTF8(const char* utf8_chars);
void             ImGuiIO_ClearInputCharacters();

/*ImDrawData*/
void             ImDrawData_DeIndexAllBuffers(ImDrawData* drawData);

/*ImDrawList*/
int              ImDrawList_GetVertexBufferSize(ImDrawList* list);
ImDrawVert*      ImDrawList_GetVertexPtr(ImDrawList* list, int n);
int              ImDrawList_GetIndexBufferSize(ImDrawList* list);
ImDrawIdx*       ImDrawList_GetIndexPtr(ImDrawList* list, int n);
int              ImDrawList_GetCmdSize(ImDrawList* list);
ImDrawCmd*       ImDrawList_GetCmdPtr(ImDrawList* list, int n);

void             ImDrawList_Clear(ImDrawList* list);
void             ImDrawList_ClearFreeMemory(ImDrawList* list);
void             ImDrawList_PushClipRect(ImDrawList* list, const struct ImVec4 clip_rect); /* Scissoring. The values are x1, y1, x2, y2.*/
void             ImDrawList_PushClipRectFullScreen(ImDrawList* list);
void             ImDrawList_PopClipRect(ImDrawList* list);
void             ImDrawList_PushTextureID(ImDrawList* list, const ImTextureID texture_id);
void             ImDrawList_PopTextureID(ImDrawList* list);

/* Primitives*/
void             ImDrawList_AddLine(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float thickness);
void             ImDrawList_AddRect(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners, float thickness);
void             ImDrawList_AddRectFilled(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners);
void             ImDrawList_AddRectFilledMultiColor(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
void             ImDrawList_AddTriangle(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col, float thickness);
void             ImDrawList_AddTriangleFilled(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col);
void             ImDrawList_AddCircle(ImDrawList* list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments, float thickness);
void             ImDrawList_AddCircleFilled(ImDrawList* list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments);
void             ImDrawList_AddText(ImDrawList* list, const struct ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end);
void             ImDrawList_AddTextExt(ImDrawList* list, const ImFont* font, float font_size, const struct ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const struct ImVec4* cpu_fine_clip_rect);
void             ImDrawList_AddImage(ImDrawList* list, ImTextureID user_texture_id, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv0, const struct ImVec2 uv1, ImU32 col);
void             ImDrawList_AddPolyline(ImDrawList* list, const struct ImVec2* points, const int num_points, ImU32 col, bool closed, float thickness, bool anti_aliased);
void             ImDrawList_AddConvexPolyFilled(ImDrawList* list, const struct ImVec2* points, const int num_points, ImU32 col, bool anti_aliased);
void             ImDrawList_AddBezierCurve(ImDrawList* list, const struct ImVec2 pos0, const struct ImVec2 cp0, const struct ImVec2 cp1, const struct ImVec2 pos1, ImU32 col, float thickness, int num_segments);

/* Stateful path API, add points then finish with PathFill() or PathStroke()*/
void             ImDrawList_PathClear(ImDrawList* list);
void             ImDrawList_PathLineTo(ImDrawList* list, const struct ImVec2 pos);
void             ImDrawList_PathLineToMergeDuplicate(ImDrawList* list, const struct ImVec2 pos);
void             ImDrawList_PathFill(ImDrawList* list, ImU32 col);
void             ImDrawList_PathStroke(ImDrawList* list, ImU32 col, bool closed, float thickness);
void             ImDrawList_PathArcTo(ImDrawList* list, const struct ImVec2 centre, float radius, float a_min, float a_max, int num_segments);
void             ImDrawList_PathArcToFast(ImDrawList* list, const struct ImVec2 centre, float radius, int a_min_of_12, int a_max_of_12); /* Use precomputed angles for a 12 steps circle*/
void             ImDrawList_PathBezierCurveTo(ImDrawList* list, const struct ImVec2 p1, const struct ImVec2 p2, const struct ImVec2 p3, int num_segments);
void             ImDrawList_PathRect(ImDrawList* list, const struct ImVec2 rect_min, const struct ImVec2 rect_max, float rounding, int rounding_corners);

/* Channels*/
void             ImDrawList_ChannelsSplit(ImDrawList* list, int channels_count);
void             ImDrawList_ChannelsMerge(ImDrawList* list);
void             ImDrawList_ChannelsSetCurrent(ImDrawList* list, int channel_index);

/* Advanced*/
void             ImDrawList_AddCallback(ImDrawList* list, ImDrawCallback callback, void* callback_data); /* Your rendering function must check for 'UserCallback' in ImDrawCmd and call the function instead of rendering triangles.*/
void             ImDrawList_AddDrawCmd(ImDrawList* list); /* This is useful if you need to forcefully create a new draw call (to allow for dependent rendering / blending). Otherwise primitives are merged into the same draw-call as much as possible*/

/* Internal helpers*/
void             ImDrawList_PrimReserve(ImDrawList* list, int idx_count, int vtx_count);
void             ImDrawList_PrimRect(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col);
void             ImDrawList_PrimRectUV(ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv_a, const struct ImVec2 uv_b, ImU32 col);
void             ImDrawList_PrimQuadUV(ImDrawList* list,const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, const struct ImVec2 uv_a, const struct ImVec2 uv_b, const struct ImVec2 uv_c, const struct ImVec2 uv_d, ImU32 col);
void             ImDrawList_PrimVtx(ImDrawList* list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void             ImDrawList_PrimWriteVtx(ImDrawList* list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void             ImDrawList_PrimWriteIdx(ImDrawList* list, ImDrawIdx idx);
void             ImDrawList_UpdateClipRect(ImDrawList* list);
void             ImDrawList_UpdateTextureID(ImDrawList* list);

]]

return cimgui
