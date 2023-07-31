local ffi = require 'ffi'
local sdl = require 'ffi.req' 'sdl'
ffi.cdef[[

enum {
	SDL_IMAGE_MAJOR_VERSION	= 1,
	SDL_IMAGE_MINOR_VERSION = 2,
	SDL_IMAGE_PATCHLEVEL = 10,
};


/* This function gets the version of the dynamically linked SDL_image library.
   it should NOT be used to fill a version structure, instead you should
   use the SDL_IMAGE_VERSION() macro.
 */
const SDL_version * IMG_Linked_Version(void);

typedef enum
{
    IMG_INIT_JPG = 0x00000001,
    IMG_INIT_PNG = 0x00000002,
    IMG_INIT_TIF = 0x00000004
} IMG_InitFlags;

/* Loads dynamic libraries and prepares them for use.  Flags should be
   one or more flags from IMG_InitFlags OR'd together.
   It returns the flags successfully initialized, or 0 on failure.
 */
int  IMG_Init(int flags);

/* Unloads libraries loaded with IMG_Init */
void  IMG_Quit(void);

/* Load an image from an SDL data source.
   The 'type' may be one of: "BMP", "GIF", "PNG", etc.

   If the image format supports a transparent pixel, SDL will set the
   colorkey for the surface.  You can enable RLE acceleration on the
   surface afterwards by calling:
	SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
 */
SDL_Surface *  IMG_LoadTyped_RW(SDL_RWops *src, int freesrc, char *type);
/* Convenience functions */
SDL_Surface *  IMG_Load(const char *file);
SDL_Surface *  IMG_Load_RW(SDL_RWops *src, int freesrc);

/* Invert the alpha of a surface for use with OpenGL
   This function is now a no-op, and only provided for backwards compatibility.
*/
int  IMG_InvertAlpha(int on);

/* Functions to detect a file type, given a seekable source */
int  IMG_isICO(SDL_RWops *src);
int  IMG_isCUR(SDL_RWops *src);
int  IMG_isBMP(SDL_RWops *src);
int  IMG_isGIF(SDL_RWops *src);
int  IMG_isJPG(SDL_RWops *src);
int  IMG_isLBM(SDL_RWops *src);
int  IMG_isPCX(SDL_RWops *src);
int  IMG_isPNG(SDL_RWops *src);
int  IMG_isPNM(SDL_RWops *src);
int  IMG_isTIF(SDL_RWops *src);
int  IMG_isXCF(SDL_RWops *src);
int  IMG_isXPM(SDL_RWops *src);
int  IMG_isXV(SDL_RWops *src);

/* Individual loading functions */
SDL_Surface *  IMG_LoadICO_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadCUR_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadBMP_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadGIF_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadJPG_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadLBM_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadPCX_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadPNG_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadPNM_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadTGA_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadTIF_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadXCF_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadXPM_RW(SDL_RWops *src);
SDL_Surface *  IMG_LoadXV_RW(SDL_RWops *src);

SDL_Surface *  IMG_ReadXPMFromArray(char **xpm);
]]
return require 'ffi.load' 'SDL_image'
