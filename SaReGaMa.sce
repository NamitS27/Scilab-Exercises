clear;
function  tone  = noteG( s,n,d)
//s denotes saptak (1,2,3). n denotes the
//note number s =2 and n =0 is the base note
// number.This will generate madhya saptak Sa
 
if s == 1                         
    N = 2^(n/12);
elseif s == 2
        N = 2*2^(n/12);
    else N = 4*2^(n/12);
end

f = 130.815;
f1 = f*N;
t = 0:1/22050:d;

T = length(t);
T1 = round(0.02*T);
T2 = round(0.04*T);
T3 =  round(0.88*T);

L1 = linspace(0,1,T1);
L2 = linspace(1,1,T2);
L3 = linspace(1,0.9,T2);
L4 = linspace(0.9, 0.45,T3);
L5 = linspace(0.45,0,T1);

a = [L1 L2 L3 L4 L5 ];

A = length(a);

if T > A then
    diff = T-A;
    for i = 1:diff
        a = [a 0];
    end
    
elseif T < A then
        diff = A-T;
        for i = 1:diff
            t = {t 0};
        end
           
end
S = sin((2*%pi*f1*t + a.*sin(4*%pi*f1*t) ));
tone = a.*S;
endfunction

d1 = 0.4;
d2 = 2*d1;
S1 = noteG(2,0,d1);
S1t = noteG(3,0,d2);
R2 = noteG(2,2,d1);
G2 = noteG(2,4,d1);
M1 = noteG(2,5,d1);
P = noteG(2,7,d1);
D2 = noteG(2,9,d1);
N2 = noteG(2,11,d1);
inter = 0*[0:1/22050:d1];
SRGM= [S1 R2 G2 M1 P D2 N2 S1t inter];
sound(SRGM);

