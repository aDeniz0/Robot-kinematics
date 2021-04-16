
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
clc
clear all

syms T01 T12 T23 T34 T04 teta1 teta2 teta3 l1 l2 l3

T01 = [ cos(teta1) -sin(teta1) 0 0;
        sin(teta1) cos(teta1) 0 0;
        0 0 1 0;
        0 0 0 1 ];
    
T12 = [ cos(teta2) -sin(teta2) 0 l1;
        sin(teta2) cos(teta2) 0 0;
        0 0 1 0;
        0 0 0 1 ];
    
T23 = [ cos(teta3) -sin(teta3) 0 l2;
        sin(teta3) cos(teta3) 0 0;
        0 0 1 0;
        0 0 0 1 ];
    
T34 = [ 1 0 0 l3;
        0 1 0 0;
        0 0 1 0;
        0 0 0 1 ];
    
    
 T04 = T01 * T12 * T23 * T34;
    
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 clc
 clear all
 
 syms T01 T12 T23 T03 teta1 teta2  h1 d2 l2 d3
 
 T01 = [ cos(teta1) -sin(teta1)  0  0;
         sin(teta1) cos(teta1)   0  0;
         0            0          1  h1;
         0            0          0  1];
     
     
 T12 = [ cos(teta2) -sin(teta2)  0  0;
         0            0         -1 -d2;
         sin(teta2)  cos(teta2)  0  0;
         0            0          0  1];
     
     
 T23 = [ 1        0      0       0;
         0        0      1       l2 + d3;
         0       -1      0       0;
         0        0      0       1];
    

T03 = T01*T12*T23;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 clc
 clear all
 
 syms T01 T12 T23 T34 T45 T56 T06 teta1 teta2 teta3 teta4 teta5 teta6  h1 L1 L2 D3 D4
 
 T01 = [ cos(teta1) -sin(teta1)  0  0;
         sin(teta1) cos(teta1)   0  0;
         0            0          1  h1;
         0            0          0  1];
     
 T12 = [ cos(teta2) -sin(teta2)  0  L1;
         sin(teta2)  cos(teta2)  0   0;
         0            0          1   0;
         0            0          0   1];
      
 T23 = [ 1        0      0       L2;
         0        -1     0       0;
         0        0     -1       -D3;
         0        0      0       1];
     
 T34 = [ cos(teta4) -sin(teta4)  0   0;
         sin(teta4)  cos(teta4)  0   0;
         0            0          1   D4;
         0            0          0   1];
     
 T45 = [ cos(teta5) -sin(teta5)  0   0;
         0            0          1   0;
        -sin(teta5)  -cos(teta5) 0   0;
         0            0          0   1];
     
 T56 = [ cos(teta6) -sin(teta6)  0   0;
         0            0         -1   0;
        -sin(teta6)  -cos(teta6) 0   0;
         0            0          0   1];
     
 T06 = T01*T12*T23*T34*T45*T56; 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TERS
 clc
 clear all
 
 syms T01 T12 T23 T03 T02 teta1 teta2  h1 d2 l2 d3 r11 r12 r13 r21 r22 r23 r31 r32 r33 px py pz
 
 
 T01 = [ cos(teta1) -sin(teta1)  0  0;
         sin(teta1) cos(teta1)   0  0;
         0            0          1  h1;
         0            0          0  1];
     
     
 T12 = [ cos(teta2) -sin(teta2)  0  0;
         0            0         -1 -d2;
         sin(teta2)  cos(teta2)  0  0;
         0            0          0  1];
     
     
 T23 = [ 1        0      0       0;
         0        0      1       l2 + d3;
         0       -1      0       0;
         0        0      0       1];
     
     
 T03s = [ r11 r12 r13 px;
           r21 r22 r23 py;
           r31 r32 r33 pz;
           0  0 0 1];
 
 
 
 T02 = T01*T12;
   
 T02_ters = inv(T02);
 
 T02_ters = simplify(T02_ters);
 
 sol = T02_ters * T03s;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 clc
 clear all
 
 syms T01 T12 T23 T34  teta1 teta2 teta3  h1 d2 l2 l3 r11 r12 r13 r21 r22 r23 r31 r32 r33 px py pz sol T03_ters 
 
 
 T01 = [ cos(teta1) -sin(teta1)  0  0;
         sin(teta1) cos(teta1)   0  0;
         0            0          1  h1;
         0            0          0  1];
 
 
 T12 = [ 0 -1 0 0;
         0 0 -1 -(l2+d2);
         1 0 0 0;
         0 0 0 1];
     
 T23 = [ cos(teta3) -sin(teta3)  0  0;
         0            0         -1  0;
         sin(teta3)  cos(teta3)  0  0;
         0            0          0  1];
     
 T34 = [ 1 0 0 l3;
        0 1 0 0;
        0 0 1 0;
        0 0 0 1 ];
    
  T04s = [ r11 r12 r13 px;
           r21 r22 r23 py;
           r31 r32 r33 pz;
           0  0 0 1];
    
 T03 = T01*T12*T23;
 
 T03_ters = inv(T03);
 
 T03_ters = simplify(T03_ters);
 
 sol = T03_ters * T04s;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
clc
clear all
     
p = atan2(0.866083,0.499901);

teta1 = p*(180/pi); %% + - 60 derece
 
     
     
     
 
 

        