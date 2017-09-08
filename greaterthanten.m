%Walter Frank Lenoir
function indicator=greaterthanten(input)
if class(input) == 'double' 
   totsum = sum(input);
   if ge(totsum,10)
       indicator = 1;
   else
       indicator = 0;
   end
else
    disp("Invalid Array");
end
end