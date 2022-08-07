-- `pkg-config --cflags cfitsio` gives ``
require 'include' '<fitsio.h>'

-- `pkg-config --libs cfitsio` gives `-lcfitsio -lpthread`
-- I just want the first one
return ffi.load'cfitsio'
