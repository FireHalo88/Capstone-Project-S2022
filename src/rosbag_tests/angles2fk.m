clearvars
%UR10 Joint Limits
L1 = Link('d',0.1273,'a',0,'alpha',pi/2,'offset',0);
L2 = Link('d',0,'a',-0.612,'alpha',0,'offset',0);
L3 = Link('d',0,'a',-0.5723,'alpha',0,'offset',0);
L4 = Link('d',0.163941,'a',0,'alpha',pi/2,'offset',0);
L5 = Link('d',0.1157,'a',0,'alpha',-pi/2,'offset',0);
L6 = Link('d',0.0922,'a',0,'alpha',0,'offset',0);
        
robot = SerialLink([L1 L2 L3 L4 L5 L6],'name','UR10');
       
q = zeros(1,6);       
robot.plot(q);       
robot.teach();
% input('Press enter to continue');
%No: 43 2.79245 -1.13448 9.69709e-05 -1.65814 -7.80544e-06 8.71973e-05
%No: 69 2.60116 -1.19832 0.701665 -1.40288 1.02057 8.04446e-05
%No: 74 2.53895 -1.21908 0.929816 -1.31987 1.35246 7.82164e-05
%No: 116 1.39628 -0.610915 0.872583 -0.785295 2.44348 3.19157e-05
%No: 150 0.741679 -0.305436 0.69662 -0.436282 2.758 1.98106e-05
%No: 258 0.741683 -0.305348 0.436372 -0.436233 -3.05425 -3.65877e-05
%No: 291 1.08034 -0.469417 -0.0993864 -0.610886 -2.34401 5.3442e-06
%No: 310 1.44336 -0.678042 -0.364676 -0.765364 -2.0787 -6.10607e-06
%No: 328 1.9629 -0.916071 -0.566969 -1.04686 -1.78942 -3.2247e-05
%No: 344 2.27144 -1.05456 -0.693362 -1.21314 -1.55986 -3.9999e-05
%No: 369 -6.6555e-05 -2.09449 2.618 9.57152e-05 -2.23983e-05 -9.81166e-05
%No: 381 2.26892 -1.74525 -2.17917e-05 2.55349e-05 -4.72569e-05 0.392632
%No: 432 0.610925 -0.392726 0.305512 -0.436291 -2.83612 0.174505

%Fixing the angles so that it makes sense
%No: 43 9.69709e-05 -1.13448 2.79245 -1.65814 -7.80544e-06 8.71973e-05 - Front
%No: 69 0.701665 -1.19832 2.60116 -1.40288 1.02057 8.04446e-05 - Front Left
%No: 74 0.929816 -1.21908 2.53895 -1.31987 1.35246 7.82164e-05 - Left Front
%No: 116 0.872583 -0.610915 1.39628 -0.785295 2.44348 3.19157e-05 -Left
%No: 150 0.69662 -0.305436 0.741679 -0.436282 2.758 1.98106e-05  -Left Back
%No: 258 0.436372 -0.305348 0.741683 -0.436233 -3.05425 -3.65877e-05 - BL
%No: 291 -0.0993864 -0.469417 1.08034 -0.610886 -2.34401 5.3442e-06 -BR
%No: 310 -0.364676 -0.678042 1.44336 -0.765364 -2.0787 -6.10607e-06 -RB
%No: 328 -0.566969 -0.916071 1.9629 -1.04686 -1.78942 -3.2247e-05 -Right
%No: 344 -0.693362 -1.05456 2.27144 -1.21314 -1.55986 -3.9999e-05 -FRR

%Anything involving looking at the top of the bottom didn't need changing?
%No: 369 -6.6555e-05 -2.09449 2.618 9.57152e-05 -2.23983e-05 -9.81166e-05
%No: 381 -2.17917e-05 -1.74525 2.26892 2.55349e-05 -4.72569e-05 0.392632
%No: 432 0.305512 -0.392726 0.610925 -0.436291 -2.83612 0.174505

%radians to degrees
%q = [-6.6555e-05 -2.09449 2.618 9.57152e-05 -2.23983e-05 -9.81166e-05];
%q = q*(180/pi);
       
% robot.plot(q);       
% robot.teach();

%q = [2.79247 -1.1344 -9.25719e-05 -1.57071 5.92996e-05 -4.48934e-05];                                              % Get the joint angles at the current position        
%disp(q(1,1));
q = [9.69709e-05 -1.13448 2.79245 -1.65814 -7.80544e-06 8.71973e-05;
    0.701665 -1.19832 2.60116 -1.40288 1.02057 8.04446e-05;
    0.929816 -1.21908 2.53895 -1.31987 1.35246 7.82164e-05;
    0.872583 -0.610915 1.39628 -0.785295 2.44348 3.19157e-05;
    0.69662 -0.305436 0.741679 -0.436282 2.758 1.98106e-05;
    0.436372 -0.305348 0.741683 -0.436233 -3.05425 -3.65877e-05;
    -0.0993864 -0.469417 1.08034 -0.610886 -2.34401 5.3442e-06;
    -0.364676 -0.678042 1.44336 -0.765364 -2.0787 -6.10607e-06;
    -0.566969 -0.916071 1.9629 -1.04686 -1.78942 -3.2247e-05;
    -0.693362 -1.05456 2.27144 -1.21314 -1.55986 -3.9999e-05;
    -6.6555e-05 -2.09449 2.618 9.57152e-05 -2.23983e-05 -9.81166e-05;
    -2.17917e-05 -1.74525 2.26892 2.55349e-05 -4.72569e-05 0.392632;
    0.305512 -0.392726 0.610925 -0.436291 -2.83612 0.174505;];
%disp(q(1,1:6))
for x = 1:13
    T = robot.fkine(q(x,1:6));
    for a = 1:4
        for b = 1:4
            T(a,b) = round(T(a,b),6);
        end
    end
%     %T(1,1) = round(T(1,1),6);
%     str = mat2str(T);
%     s = string(str)
%     changes = ["[", "]"]
%     newS = erase(s, changes);
%     newS = strrep(newS,";", " ");
%     newS = strrep(newS," 0 ", " 0.000000");
%     newS = strrep(newS,"0.0000001", "0.000000 1.000000");
%     disp(newS)
    disp(T)
end

% T = robot.fkine(q);
% for a = 1:4
%     for b = 1:4
%         T(a,b) = round(T(a,b),6);
%     end
% end
% %T(1,1) = round(T(1,1),6);
% str = mat2str(T);
% s = string(str)
% changes = ["[", "]"]
% newS = erase(s, changes);
% newS = strrep(newS,";", " ");
% newS = strrep(newS," 0 ", " 0.000000");
% newS = strrep(newS,"0.0000001", "0.000000 1.000000");
% %disp(newS)
% 
% fid = fopen('poses.txt','at');
% fprintf(fid, newS+"\n");
% fclose(fid);