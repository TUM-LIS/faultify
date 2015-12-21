clear all

numIn = 6;

%% NAND2
NAND2=@(a,b) not(and(a,b));

%% NAND3
NAND3=@(a,b,c) NAND2(NAND2(a,b),c);

%% NAND4
NAND4=@(a,b,c,d) NAND2(NAND2(NAND2(a,b),c),d);

%% NOR2
NOR2=@(a,b) not(or(a,b));

%% NOR3
NOR3=@(a,b,c) NOR2(or(a,b),c);

%% NOR4
NOR4=@(a,b,c,d) NOR2(or(or(a,b),c),d);

%% OA21
OA21=@(a,b,c) and(or(a,b),c);

%% OR4
OR4=@(a,b,c,d) or(or(or(a,b),c),d);

%% OR3
OR3=@(a,b,c) or(or(a,b),c);


%% XOR2
XOR2 = @(a,b)  xor(a,b);


%% XOR3
XOR3=@(a,b,c) xor(xor(a,b),c);

%% OR2
OR2=@(a,b) or(a,b);

%% AND4
AND4=@(a,b,c,d) and(and(and(a,b),c),d);

%% AND3
AND3=@(a,b,c) and(and(a,b),c);

%% AO221
AO221=@(a,b,c,d,e) OR3(and(a,b),and(c,d),e);

%% AOI21
AOI21 = @(a,b,c) NOR2(and(a,b),c);

%% AO21
AO21 = @(a,b,c) OR2(and(a,b),c);

%% AO22
AO22 = @(a,b,c,d) OR2(and(a,b),and(c,d));

%% AOI22
AOI22 = @(a,b,c,d) NOR2(and(a,b),and(c,d));
%% AOI222
AOI222 = @(a,b,c,d,e,f) NOR3(and(a,b),and(c,d),and(e,f));

%% AOI221
AOI221 = @(a,b,c,d,e) NOR3(and(a,b),and(c,d),e);

%% AO222
AO222 = @(a,b,c,d,e,f) OR3(and(a,b),and(c,d),and(e,f));

%% OA22
OA22=@(a,b,c,d) and(or(a,b),or(c,d));

%% OAI22
OAI22=@(a,b,c,d) not(and(or(a,b),or(c,d)));

%% OA221
OA221=@(a,b,c,d,e) and(and(or(a,b),or(c,d)),e);

%% OA222
OA222=@(a,b,c,d,e,f) and(and(or(a,b),or(c,d)),or(e,f));



vals = '01rf';

C = cell(numIn, 1);            
[C{:}] = ndgrid(vals);     
y = cellfun(@(x){x(:)}, C); 
y = [y{:}];                 

for i=1:size(y,1)
    for j=1:numIn
        if (y(i,j) == '0')
            first(j) = 0;
            second(j) = 0;
        elseif (y(i,j) == '1')
            first(j) = 1;
            second(j) = 1;
        elseif (y(i,j) == 'r')
            first(j) = 0;
            second(j) = 1;
        elseif (y(i,j) == 'f')
            first(j) = 1;
            second(j) = 0;
        end
    end    
    
    %r0 = NAND4(first(1),first(2),first(3),first(4));
    %r1 = NAND4(second(1),second(2),second(3),second(4));
    %r0 = NAND2(first(1),first(2));
    %r1 = NAND2(second(1),second(2));
    %r0 = NOR2(first(1),first(2));
    %r1 = NOR2(second(1),second(2));
    %r0 = NOR3(first(1),first(2),first(3));
    %r1 = NOR3(second(1),second(2),second(3));
    %r0 = OA21(first(1),first(2),first(3));
    %r1 = OA21(second(1),second(2),second(3));
    %r0 = OR3(first(1),first(2),first(3));
    %r1 = OR3(second(1),second(2),second(3));
    %r0 = NOR4(first(1),first(2),first(3),first(4));
    %r1 = NOR4(second(1),second(2),second(3),second(4));
    %r0 = NAND3(first(1),first(2),first(3));
    %r1 = NAND3(second(1),second(2),second(3));
    %r0 = AND4(first(1),first(2),first(3),first(4));
    %r1 = AND4(second(1),second(2),second(3),second(4));
    %r0 = AO221(first(1),first(2),first(3),first(4),first(5));
    %r1 = AO221(second(1),second(2),second(3),second(4),second(5));
    %r0 = AOI21(first(1),first(2),first(3));
    %r1 = AOI21(second(1),second(2),second(3));
    %r0 = AOI222(first(1),first(2),first(3),first(4),first(5),first(6));
    %r1 = AOI222(second(1),second(2),second(3),second(4),second(5),second(6));
    %r0 = AO222(first(1),first(2),first(3),first(4),first(5),first(6));
    %r1 = AO222(second(1),second(2),second(3),second(4),second(5),second(6));
    %r0 = OA22(first(1),first(2),first(3),first(4));
    %r1 = OA22(second(1),second(2),second(3),second(4));
    %r0 = OA221(first(1),first(2),first(3),first(4),first(5));
    %r1 = OA221(second(1),second(2),second(3),second(4),second(5));
    %r0 = OR2(first(1),first(2));
    %r1 = OR2(second(1),second(2));
    %r0 = OR4(first(1),first(2),first(3),first(4));
    %r1 = OR4(second(1),second(2),second(3),second(4));
    %r0 = AO21(first(1),first(2),first(3));
    %r1 = AO21(second(1),second(2),second(3));
    %r0 = AND3(first(1),first(2),first(3));
    %r1 = AND3(second(1),second(2),second(3));
    %r0 = OAI22(first(1),first(2),first(3),first(4));
    %r1 = OAI22(second(1),second(2),second(3),second(4));
    %r0 = AO22(first(1),first(2),first(3),first(4));
    %r1 = AO22(second(1),second(2),second(3),second(4));
    %r0 = MUX41(first(1),first(2),first(3),first(4),first(5),first(6));
    %r1 = MUX41(second(1),second(2),second(3),second(4),second(5),second(6));
    %r0 = MUX21(first(1),first(2),first(3));
    %r1 = MUX21(second(1),second(2),second(3));
    %r0 = FADD(first(1),first(2),first(3));
    %r1 = FADD(second(1),second(2),second(3));
    %r0 = HADD(first(1),first(2));
    %r1 = HADD(second(1),second(2));
    %r0 = AOI221(first(1),first(2),first(3),first(4),first(5));
    %r1 = AOI221(second(1),second(2),second(3),second(4),second(5));
    %r0 = XOR3(first(1),first(2),first(3));
    %r1 = XOR3(second(1),second(2),second(3));
    %r0 = XOR2(first(1),first(2));
    %r1 = XOR2(second(1),second(2));
    %r0 = AOI22(first(1),first(2),first(3),first(4));
    %r1 = AOI22(second(1),second(2),second(3),second(4));
    r0 = OA222(first(1),first(2),first(3),first(4),first(5),first(6));
    r1 = OA222(second(1),second(2),second(3),second(4),second(5),second(6));
    
    if (r0 == 0 && r1 == 0)
        y(i,numIn+1) = '0';
    elseif (r0 == 1 && r1 == 1)
        y(i,numIn+1) = '1';
    elseif (r0 == 0 && r1 == 1)
        y(i,numIn+1) = 'r';
    elseif (r0 == 1 && r1 == 0)
        y(i,numIn+1) = 'f';
    end
end

y_hat = unique(y,'rows');

newIndex  = 1;
for i=1:size(y_hat,1)
   if (y_hat(i,end) == '0' || y_hat(i,end) == '1') 
   else
       y_final(newIndex,:) = y_hat(i,:);
       newIndex = newIndex + 1;
   end
end
