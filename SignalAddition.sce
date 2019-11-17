clc;

function output = add(vec1,vec2,pos1,pos2)
    if pos1 > pos2 then
        vec2 = [zeros(1,pos1-pos2) vec2]
    elseif pos2 > pos1 then
            vec1 = [zeros(1, pos2-pos1) vec1]
    end
    aft = length(vec1)-pos1
    aft2 = length(vec2) - pos2
    if aft > aft2 then
        vec2 = [vec2 zeros(1,aft-aft2)]
    elseif aft2 > aft then
        vec1 = [vec1 zeros(1,aft2-aft)]
    end
    output = vec1 + vec2
endfunction

v3 = [1,2,3,4,3,-2,-1]
v4 = [4,-2,2,1.2,3,4,5,6]

out = add(v3,v4,4,4)
disp(out)
