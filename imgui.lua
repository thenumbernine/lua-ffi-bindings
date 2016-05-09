local ffi = require 'ffi'
local imgui = ffi.load(os.getenv'LUAJIT_LIBPATH' .. '/bin/OSX/libimgui.dylib')
-- cimgui
ffi.cdef[[
struct ImDrawChannel;
struct ImDrawCmd;
struct ImDrawData;
struct ImDrawList;
struct ImDrawVert;
struct ImDrawIdx;
struct ImFont;
struct ImFontAtlas;
struct ImFontConfig;
struct ImColor;
struct ImGuiIO;
struct ImGuiOnceUponAFrame;
struct ImGuiStorage;
struct ImGuiStyle;
struct ImGuiTextFilter;
struct ImGuiTextBuffer;
struct ImGuiTextEditCallbackData;
struct ImGuiListClipper;
typedef void (*ImDrawCallback)(const struct ImDrawList* parent_list, const struct ImDrawCmd* cmd);
typedef unsigned int ImU32;
typedef unsigned short ImWchar;
typedef void* ImTextureID;
typedef ImU32 ImGuiID;
typedef int ImGuiCol;
typedef int ImGuiStyleVar;
typedef int ImGuiKey;
typedef int ImGuiAlign;
typedef int ImGuiColorEditMode;
typedef int ImGuiMouseCursor;
typedef int ImGuiWindowFlags;
typedef int ImGuiSetCond;
typedef int ImGuiInputTextFlags;
typedef int ImGuiSelectableFlags;
typedef int (*ImGuiTextEditCallback)(struct ImGuiTextEditCallbackData *data);
struct ImVec2
{
    float x, y;
};
struct ImVec4
{
    float x, y, z, w;
};
enum ImGuiWindowFlags_
{
    ImGuiWindowFlags_NoTitleBar             = 1 << 0,
    ImGuiWindowFlags_NoResize               = 1 << 1,
    ImGuiWindowFlags_NoMove                 = 1 << 2,
    ImGuiWindowFlags_NoScrollbar            = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse      = 1 << 4,
    ImGuiWindowFlags_NoCollapse             = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize       = 1 << 6,
    ImGuiWindowFlags_ShowBorders            = 1 << 7,
    ImGuiWindowFlags_NoSavedSettings        = 1 << 8,
    ImGuiWindowFlags_NoInputs               = 1 << 9,
    ImGuiWindowFlags_MenuBar                = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar    = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing     = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus  = 1 << 13,
    ImGuiWindowFlags_ForceVerticalScrollbar = 1 << 14,
    ImGuiWindowFlags_ForceHorizontalScrollbar=1 << 15,
    ImGuiWindowFlags_ChildWindow            = 1 << 20,
    ImGuiWindowFlags_ChildWindowAutoFitX    = 1 << 21,
    ImGuiWindowFlags_ChildWindowAutoFitY    = 1 << 22,
    ImGuiWindowFlags_ComboBox               = 1 << 23,
    ImGuiWindowFlags_Tooltip                = 1 << 24,
    ImGuiWindowFlags_Popup                  = 1 << 25,
    ImGuiWindowFlags_Modal                  = 1 << 26,
    ImGuiWindowFlags_ChildMenu              = 1 << 27
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
    ImGuiInputTextFlags_Multiline           = 1 << 20
};
enum ImGuiSelectableFlags_
{
    ImGuiSelectableFlags_DontClosePopups    = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns     = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick   = 1 << 2
};
enum ImGuiKey_
{
    ImGuiKey_Tab,
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,
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
    ImGuiCol_ChildWindowBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
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
    ImGuiCol_ModalWindowDarkening,
    ImGuiCol_COUNT
};
enum ImGuiStyleVar_
{
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_ChildWindowRounding,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_GrabMinSize
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
enum ImGuiColorEditMode_
{
    ImGuiColorEditMode_UserSelect = -2,
    ImGuiColorEditMode_UserSelectShowButton = -1,
    ImGuiColorEditMode_RGB = 0,
    ImGuiColorEditMode_HSV = 1,
    ImGuiColorEditMode_HEX = 2
};
enum ImGuiMouseCursor_
{
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_Move,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Count_
};
enum ImGuiSetCond_
{
    ImGuiSetCond_Always        = 1 << 0,
    ImGuiSetCond_Once          = 1 << 1,
    ImGuiSetCond_FirstUseEver  = 1 << 2,
    ImGuiSetCond_Appearing     = 1 << 3
};
]]
-- imgui/examples/imgui_sdl_opengl
ffi.cdef[[
struct SDL_Window;
typedef union SDL_Event SDL_Event;
int        ImGui_ImplSdl_Init(SDL_Window *window);
void        ImGui_ImplSdl_Shutdown();
void        ImGui_ImplSdl_NewFrame(SDL_Window *window);
int        ImGui_ImplSdl_ProcessEvent(SDL_Event* event);
void        ImGui_ImplSdl_InvalidateDeviceObjects();
int        ImGui_ImplSdl_CreateDeviceObjects();
]]
-- imgui
ffi.cdef[[
typedef int ImGuiWindowFlags;
typedef int ImGuiSetCond;
typedef int ImGuiColorEditMode;
struct ImGuiIO*         igGetIO();
struct ImGuiStyle*      igGetStyle();
struct ImDrawData*      igGetDrawData();
void             igNewFrame();
void             igRender();
void             igShutdown();
void             igShowUserGuide();
void             igShowStyleEditor(struct ImGuiStyle* ref);
void             igShowTestWindow(bool* opened);
void             igShowMetricsWindow(bool* opened);
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
struct ImDrawList*      igGetWindowDrawList();
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
void             igSetStateStorage(struct ImGuiStorage* tree);
struct ImGuiStorage*    igGetStateStorage();
void             igPushFont(struct ImFont* font);
void             igPopFont();
void             igPushStyleColor(ImGuiCol idx, const struct ImVec4 col);
void             igPopStyleColor(int count);
void             igPushStyleVar(ImGuiStyleVar idx, float val);
void             igPushStyleVarVec(ImGuiStyleVar idx, const struct ImVec2 val);
void             igPopStyleVar(int count);
struct ImFont*          igGetFont();
float            igGetFontSize();
void             igGetFontTexUvWhitePixel(struct ImVec2* pOut);
ImU32            igGetColorU32(ImGuiCol idx, float alpha_mul);
ImU32            igGetColorU32Vec(const struct ImVec4* col);
void             igPushItemWidth(float item_width);
void             igPopItemWidth();
float            igCalcItemWidth();
void             igPushTextWrapPos(float wrap_pos_x);
void             igPopTextWrapPos();
void             igPushAllowKeyboardFocus(bool v);
void             igPopAllowKeyboardFocus();
void             igPushButtonRepeat(bool repeat);
void             igPopButtonRepeat();
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
void             igColumns(int count, const char* id, bool border);
void             igNextColumn();
int              igGetColumnIndex();
float            igGetColumnOffset(int column_index);
void             igSetColumnOffset(int column_index, float offset_x);
float            igGetColumnWidth(int column_index);
int              igGetColumnsCount();
void             igPushIdStr(const char* str_id);
void             igPushIdStrRange(const char* str_begin, const char* str_end);
void             igPushIdPtr(const void* ptr_id);
void             igPushIdInt(int int_id);
void             igPopId();
ImGuiID          igGetIdStr(const char* str_id);
ImGuiID          igGetIdStrRange(const char* str_begin,const char* str_end);
ImGuiID          igGetIdPtr(const void* ptr_id);
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
bool             igDragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* display_format, float power);
bool             igDragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* display_format, float power);
bool             igDragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* display_format, float power);
bool             igDragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* display_format, float power);
//bool             igDragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", const char* display_format_max = NULL, float power = 1.0f);
bool             igDragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* display_format, const char* display_format_max, float power);
bool             igDragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* display_format);
bool             igDragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* display_format);
bool             igDragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* display_format);
bool             igDragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* display_format);
//bool             igDragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f", const char* display_format_max = NULL);
bool             igDragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* display_format, const char* display_format_max);
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
bool             igTreeNode(const char* str_label_id);
bool             igTreeNodeStr(const char* str_id, const char* fmt, ...);
bool             igTreeNodePtr(const void* ptr_id, const char* fmt, ...);
bool             igTreeNodeStrV(const char* str_id, const char* fmt, va_list args);
bool             igTreeNodePtrV(const void* ptr_id, const char* fmt, va_list args);
void             igTreePushStr(const char* str_id);
void             igTreePushPtr(const void* ptr_id);
void             igTreePop();
void             igSetNextTreeNodeOpened(bool opened, ImGuiSetCond cond);
bool             igSelectable(const char* label, bool selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool             igSelectableEx(const char* label, bool* p_selected, ImGuiSelectableFlags flags, const struct ImVec2 size);
bool             igListBox(const char* label, int* current_item, const char** items, int items_count, int height_in_items);
bool             igListBox2(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items);
bool             igListBoxHeader(const char* label, const struct ImVec2 size);
bool             igListBoxHeader2(const char* label, int items_count, int height_in_items);
void             igListBoxFooter();
void             igValueBool(const char* prefix, bool b);
void             igValueInt(const char* prefix, int v);
void             igValueUInt(const char* prefix, unsigned int v);
void             igValueFloat(const char* prefix, float v, const char* float_format);
void             igValueColor(const char* prefix, const struct ImVec4 v);
void             igValueColor2(const char* prefix, unsigned int v);
void             igSetTooltip(const char* fmt, ...);
void             igSetTooltipV(const char* fmt, va_list args);
void             igBeginTooltip();
void             igEndTooltip();
bool             igBeginMainMenuBar();
void             igEndMainMenuBar();
bool             igBeginMenuBar();
void             igEndMenuBar();
bool             igBeginMenu(const char* label, bool enabled);
void             igEndMenu();
bool             igMenuItem(const char* label, const char* shortcut, bool selected, bool enabled);
bool             igMenuItemPtr(const char* label, const char* shortcut, bool* p_selected, bool enabled);
void             igOpenPopup(const char* str_id);
bool             igBeginPopup(const char* str_id);
bool             igBeginPopupModal(const char* name, bool* p_opened, ImGuiWindowFlags extra_flags);
bool             igBeginPopupContextItem(const char* str_id, int mouse_button);
bool             igBeginPopupContextWindow(bool also_over_items, const char* str_id, int mouse_button);
bool             igBeginPopupContextVoid(const char* str_id, int mouse_button);
void             igEndPopup();
void             igCloseCurrentPopup();
void             igLogToTTY(int max_depth);
void             igLogToFile(int max_depth, const char* filename);
void             igLogToClipboard(int max_depth);
void             igLogFinish();
void             igLogButtons();
void             igLogText(const char* fmt, ...);
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
void*            igMemAlloc(size_t sz);
void             igMemFree(void* ptr);
const char*      igGetClipboardText();
void             igSetClipboardText(const char* text);
const char*      igGetVersion();
void*            igGetInternalState();
size_t           igGetInternalStateSize();
void             igSetInternalState(void* state, bool construct);
void             ImFontAtlas_GetTexDataAsRGBA32(struct ImFontAtlas* atlas, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
void             ImFontAtlas_GetTexDataAsAlpha8(struct ImFontAtlas* atlas, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
void             ImFontAtlas_SetTexID(struct ImFontAtlas* atlas, void* tex);
struct ImFont*          ImFontAtlas_AddFont(struct ImFontAtlas* atlas, const struct ImFontConfig* font_cfg);
struct ImFont*          ImFontAtlas_AddFontDefault(struct ImFontAtlas* atlas, const struct ImFontConfig* font_cfg);
struct ImFont*          ImFontAtlas_AddFontFromFileTTF(struct ImFontAtlas* atlas, const char* filename, float size_pixels, const struct ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
struct ImFont*          ImFontAtlas_AddFontFromMemoryTTF(struct ImFontAtlas* atlas, void* ttf_data, int ttf_size, float size_pixels, const struct ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
struct ImFont*          ImFontAtlas_AddFontFromMemoryCompressedTTF(struct ImFontAtlas* atlas, const void* compressed_ttf_data, int compressed_ttf_size, float size_pixels, const struct ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
struct ImFont*          ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(struct ImFontAtlas* atlas, const char* compressed_ttf_data_base85, float size_pixels, const struct ImFontConfig* font_cfg, const ImWchar* glyph_ranges);
void             ImFontAtlas_ClearTexData(struct ImFontAtlas* atlas);
void             ImFontAtlas_Clear(struct ImFontAtlas* atlas);
void             ImGuiIO_AddInputCharacter(unsigned short c);
void             ImGuiIO_AddInputCharactersUTF8(const char* utf8_chars);
void             ImGuiIO_ClearInputCharacters();
void             ImDrawData_DeIndexAllBuffers(struct ImDrawData* drawData);
int              ImDrawList_GetVertexBufferSize(struct ImDrawList* list);
struct ImDrawVert*      ImDrawList_GetVertexPtr(struct ImDrawList* list, int n);
int              ImDrawList_GetIndexBufferSize(struct ImDrawList* list);
struct ImDrawIdx*       ImDrawList_GetIndexPtr(struct ImDrawList* list, int n);
int              ImDrawList_GetCmdSize(struct ImDrawList* list);
struct ImDrawCmd*       ImDrawList_GetCmdPtr(struct ImDrawList* list, int n);
void             ImDrawList_Clear(struct ImDrawList* list);
void             ImDrawList_ClearFreeMemory(struct ImDrawList* list);
void             ImDrawList_PushClipRect(struct ImDrawList* list, const struct ImVec4 clip_rect);
void             ImDrawList_PushClipRectFullScreen(struct ImDrawList* list);
void             ImDrawList_PopClipRect(struct ImDrawList* list);
void             ImDrawList_PushTextureID(struct ImDrawList* list, const ImTextureID texture_id);
void             ImDrawList_PopTextureID(struct ImDrawList* list);
void             ImDrawList_AddLine(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float thickness);
void             ImDrawList_AddRect(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners, float thickness);
void             ImDrawList_AddRectFilled(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col, float rounding, int rounding_corners);
void             ImDrawList_AddRectFilledMultiColor(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
void             ImDrawList_AddTriangle(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col, float thickness);
void             ImDrawList_AddTriangleFilled(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, ImU32 col);
void             ImDrawList_AddCircle(struct ImDrawList* list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments, float thickness);
void             ImDrawList_AddCircleFilled(struct ImDrawList* list, const struct ImVec2 centre, float radius, ImU32 col, int num_segments);
void             ImDrawList_AddText(struct ImDrawList* list, const struct ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end);
void             ImDrawList_AddTextExt(struct ImDrawList* list, const struct ImFont* font, float font_size, const struct ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const struct ImVec4* cpu_fine_clip_rect);
void             ImDrawList_AddImage(struct ImDrawList* list, ImTextureID user_texture_id, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv0, const struct ImVec2 uv1, ImU32 col);
void             ImDrawList_AddPolyline(struct ImDrawList* list, const struct ImVec2* points, const int num_points, ImU32 col, bool closed, float thickness, bool anti_aliased);
void             ImDrawList_AddConvexPolyFilled(struct ImDrawList* list, const struct ImVec2* points, const int num_points, ImU32 col, bool anti_aliased);
void             ImDrawList_AddBezierCurve(struct ImDrawList* list, const struct ImVec2 pos0, const struct ImVec2 cp0, const struct ImVec2 cp1, const struct ImVec2 pos1, ImU32 col, float thickness, int num_segments);
void             ImDrawList_PathClear(struct ImDrawList* list);
void             ImDrawList_PathLineTo(struct ImDrawList* list, const struct ImVec2 pos);
void             ImDrawList_PathLineToMergeDuplicate(struct ImDrawList* list, const struct ImVec2 pos);
void             ImDrawList_PathFill(struct ImDrawList* list, ImU32 col);
void             ImDrawList_PathStroke(struct ImDrawList* list, ImU32 col, bool closed, float thickness);
void             ImDrawList_PathArcTo(struct ImDrawList* list, const struct ImVec2 centre, float radius, float a_min, float a_max, int num_segments);
void             ImDrawList_PathArcToFast(struct ImDrawList* list, const struct ImVec2 centre, float radius, int a_min_of_12, int a_max_of_12);
void             ImDrawList_PathBezierCurveTo(struct ImDrawList* list, const struct ImVec2 p1, const struct ImVec2 p2, const struct ImVec2 p3, int num_segments);
void             ImDrawList_PathRect(struct ImDrawList* list, const struct ImVec2 rect_min, const struct ImVec2 rect_max, float rounding, int rounding_corners);
void             ImDrawList_ChannelsSplit(struct ImDrawList* list, int channels_count);
void             ImDrawList_ChannelsMerge(struct ImDrawList* list);
void             ImDrawList_ChannelsSetCurrent(struct ImDrawList* list, int channel_index);
void             ImDrawList_AddCallback(struct ImDrawList* list, ImDrawCallback callback, void* callback_data);
void             ImDrawList_AddDrawCmd(struct ImDrawList* list);
void             ImDrawList_PrimReserve(struct ImDrawList* list, int idx_count, int vtx_count);
void             ImDrawList_PrimRect(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, ImU32 col);
void             ImDrawList_PrimRectUV(struct ImDrawList* list, const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 uv_a, const struct ImVec2 uv_b, ImU32 col);
void             ImDrawList_PrimQuadUV(struct ImDrawList* list,const struct ImVec2 a, const struct ImVec2 b, const struct ImVec2 c, const struct ImVec2 d, const struct ImVec2 uv_a, const struct ImVec2 uv_b, const struct ImVec2 uv_c, const struct ImVec2 uv_d, ImU32 col);
void             ImDrawList_PrimVtx(struct ImDrawList* list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void             ImDrawList_PrimWriteVtx(struct ImDrawList* list, const struct ImVec2 pos, const struct ImVec2 uv, ImU32 col);
void             ImDrawList_PrimWriteIdx(struct ImDrawList* list, struct ImDrawIdx idx);
void             ImDrawList_UpdateClipRect(struct ImDrawList* list);
void             ImDrawList_UpdateTextureID(struct ImDrawList* list);
]]
return imgui
