function ret = bin2dec_clib(inp)

in = libpointer('uint8Ptr',uint8(inp));
out = in;
outL = libpointer('int32Ptr',1);
calllib('libbitmanipulation','bit_to_byte',int32(1),in,int32(length(inp)),out,outL);
ret = out.Value(1:outL.Value);