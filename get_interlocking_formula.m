function [ interlocking ] = get_interlocking_formula( r,h,L,e )
%GET_INTERLOCKING_FORMULA Summary of this function goes here
%   Detailed explanation goes here

interlocking=(r*(pi-2)+h+sqrt((L/2-2*r)^2+e^2))/h+e;

end

