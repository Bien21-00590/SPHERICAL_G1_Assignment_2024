disp('Spherical_RRP')
syms a1 a2 a3 a4 a5

%% Link lengths
a1 = 5
a2 = 5
a3 = 5  
a4 = 5
a5 = 5

%% D-H Parameters [theta, d, r, alpha, offset]1
% if prismatic joint: theta = theta, d = 0, offset = 1, after offset put the value of d
% if revolute joint: theta = 0,offset = 0, after offset put the value of theta

        
H0_1 = Link([0,0,0,0,1,a1])
H0_1.qlim = [0,5]

H1_2 = Link([0,0,a2,0,0,0])
H1_2.qlim = pi/180*[-90,90]

H2_3 = Link([0, 0,a3,0, 0,0])
H2_3.qlim = pi/180*[-90,90] 

H3_4 = Link([0, 0,a5,a4, 0,0])
H3_4.qlim = pi/180*[-90,90]

%%

Spherical_RRP = SerialLink([H0_1 H1_2 H2_3 H3_4], 'name', 'Spherical_RRP')
Spherical_RRP.plot([0 0 0 0], 'workspace', [-20 20 -20 20 -5 20])
Spherical_RRP.teach