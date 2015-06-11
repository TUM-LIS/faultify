function ret = dec2bin_clib(inp)

in = libpointer('uint8Ptr',uint8(inp));
out = libpointer('uint8Ptr',zeros(length(inp),8));
outL = libpointer('int32Ptr',1);
calllib('libbitmanipulation','byte_to_bit',int32(1),in,int32(length(inp)),out,outL);
ret = out.Value(1:outL.Value);