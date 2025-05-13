local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
//__MATHDECL_ALIAS (int, __fpclassify,, (_Mdouble_ __value), fpclassify)
     //__attribute__ ((__const__));
//__MATHDECL_ALIAS (int, __signbit,, (_Mdouble_ __value), signbit)
     //__attribute__ ((__const__));
//__MATHDECL_ALIAS (int, __isinf,, (_Mdouble_ __value), isinf)
  //__attribute__ ((__const__));
//__MATHDECL_ALIAS (int, __finite,, (_Mdouble_ __value), finite)
  //__attribute__ ((__const__));
//__MATHDECL_ALIAS (int, __isnan,, (_Mdouble_ __value), isnan)
  //__attribute__ ((__const__));
//__MATHDECL_ALIAS (int, __iseqsig,, (_Mdouble_ __x, _Mdouble_ __y), iseqsig);
//__MATHDECL_ALIAS (int, __issignaling,, (_Mdouble_ __value), issignaling)
     //__attribute__ ((__const__));
/* + END <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
]]
