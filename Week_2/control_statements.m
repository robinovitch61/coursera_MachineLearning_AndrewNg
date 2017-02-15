v = zeros(10,1);

for i = 1:10,
    v(i) = 2^i;
end;

disp(v);


indices = 1:10;

for i = indices,
    disp(i);
end;


i = 1;
while i <= 5,
    v(i) = 100;
    i = i + 1;
end;
disp(v);


i = 1;
while true,
    v(i) = 999;
    i = i+1;
    if i == 6,
        break;
    end;
end;
disp(v);


v(1) = 2;
if v(1) == 1,
    disp('Val is one');
elseif v(1) == 2,
    disp('Val is two');
else
    disp('Val not one or two');
end;


squareThisNumber(5)


[x1, x2] = squareCubeNumber(5);
disp(x1);
disp(x2);