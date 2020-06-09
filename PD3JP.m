% Przedmiot: Techniki Obliczeniowe 
% Kierunek studiów: Mechatronika 
% Semestr: 2
% Rok akademicki: 2019/2020
% Data (dzień-miesiąc-rok): 07-06-2020
%
% Imię:             Jakub
% Nazwisko:         Przybyl
% Numer albumu ZUT: 48104

f = @(x,y, dx, dy) 1 ./ (1 + (x-dx).^2 + (y-dy).^2);
g = @(x,y) f(x,y, 0, 0) + 0.5 * f(x, y, 4, 0);

x = -6 : 0.1 : 6;
y = -6 : 0.1 : 6;
a = gradient(zz);

[xx, yy] = meshgrid(x,y);

zz = g(xx, yy);

figure (1)
surf(xx, yy, zz);

figure(2)
surf(xx,yy,zz,'AlphaData',a,...
    'FaceAlpha','interp',...
    'FaceColor','white')


figure(3)
mesh(xx,yy,zz,'AlphaData',a,...
    'FaceAlpha','interp',...
    'FaceColor','white')
colormap([0 0 0]) 