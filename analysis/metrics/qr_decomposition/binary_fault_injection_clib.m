function ret = binary_fault_injection_clib(inp,bits,pe)
in = libpointer('int32Ptr',int32(inp));
pep = libpointer('doublePtr',double(pe));
out = in;
inL = numel(inp);
calllib('libbitmanipulation','binary_fault_injection',in,uint32(inL),uint32(bits),pep);
ret = out.Value;
