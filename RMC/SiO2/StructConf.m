%% SCRIPT PER LA CONVERSIONE DEL FILE RMCA IN GSF

clc; clear all; close all;
%% PATH

data_path = ['.\'];
save_path = ['.\'];

%% ACQUISIZIONE DATI
name = 'sio2';

row0 = 26;
col0 = 0;

Natom1 = 300;
Tatom1 = 'Si';
Natom2 = 514;
Tatom2 = 'O';

Natom = Natom1+Natom2;

filename = [data_path name '.cfg'];
temp = dlmread(filename,'',row0,col0);

%% FORMATTAZIONE DEL FILE

fid = fopen([data_path name '.gsf'], 'w');

fprintf(fid,'TITLE\n');
fprintf(fid,'	final configuration\n');
fprintf(fid,'END\n');
fprintf(fid,'TIMESTEP\n');
fprintf(fid,'         100000  200.00000000\n');
fprintf(fid,'END\n');
fprintf(fid,'POSITION\n');
fprintf(fid,'# first 24 chars ignored\n');

for i = 1:Natom1
    fprintf(fid, ['    1 SOLV  ' Tatom1 '      %i    %8.7f  %8.7f  %8.7f\n'], i-1,temp(i,1),temp(i,2),temp(i,3));
end

for i = Natom1+1:Natom
    fprintf(fid, ['    1 SOLV   ' Tatom2 '       %i    %8.7f  %8.7f  %8.7f\n'], i-1,temp(i,1),temp(i,2),temp(i,3));
end




fprintf(fid,'END\n');
fclose(fid);



    