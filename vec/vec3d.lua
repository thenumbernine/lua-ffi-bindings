local createVectorClass = require 'ffi.vec.create_ffi'
return createVectorClass(3, 'double', 'd', [[
cross  = function(a,b)
	return vectorClass(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x)
end
]])