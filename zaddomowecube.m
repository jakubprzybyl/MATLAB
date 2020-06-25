% Przedmiot: Techniki Obliczeniowe 
% Kierunek studiów: Mechatronika 
% Semestr: 2
% Rok akademicki: 2019/2020
% Data (dzień-miesiąc-rok): 25-06-2020
%
% Imię:             Jakub
% Nazwisko:         Przybyl
% Numer albumu ZUT: 48104


p1 = [0 0 0];
p2 = [2 0 0];
p3 = [2 4 0];    
p4 = [0 4 0]; 

x = [p1(1) p2(1) p3(1) p4(1)];
y = [p1(2) p2(2) p3(2) p4(2)];
z = [p1(3) p2(3) p3(3) p4(3)];   %Spod

fill3(x, y, z, 'r');
xlabel('x'); ylabel('y'); zlabel('z')

axis([-1 3 -1 5 -1 4])
grid
hold on

p5 = [0 0 3];
p6 = [2 0 3];   
p7 = [2 4 3];
p8 = [0 4 3];

 
x = [p5(1) p6(1) p7(1) p8(1)];
y = [p5(2) p6(2) p7(2) p8(2)];
z = [p5(3) p6(3) p7(3) p8(3)];   %góra
fill3(x, y, z, 'r');

x = [p2(1) p6(1) p7(1) p3(1)];
y = [p2(2) p6(2) p7(2) p3(2)];
z = [p2(3) p6(3) p7(3) p3(3)];  %tył
fill3(x, y, z, 'g');

x = [p1(1) p5(1) p8(1) p4(1)];
y = [p1(2) p5(2) p8(2) p4(2)];
z = [p1(3) p5(3) p8(3) p4(3)];  %przod
fill3(x, y, z, 'g');

x = [p2(1) p6(1) p5(1) p1(1)];
y = [p2(2) p6(2) p5(2) p1(2)]; %prawa strona
z = [p2(3) p6(3) p5(3) p1(3)];
fill3(x, y, z, 'c');

x = [p3(1) p7(1) p8(1) p4(1)];
y = [p3(2) p7(2) p8(2) p4(2)]; %prawa strona
z = [p3(3) p7(3) p8(3) p4(3)];
fill3(x, y, z, 'c');
