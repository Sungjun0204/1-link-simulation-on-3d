% 3원 그래프에서 링크 1개를 그리는 코드

% Parameters 설정
L1 = 1;     % 링크의 길이
q1 = pi/4;   % xy평면에서의 각도
r1 = pi/5;   % xy평면에서 z축 방향으로의 각도


% 링크 1의 양 끝단 좌표 계산 및 행렬로 묶음
x1 = L1*cos(r1)*cos(q1);   Px1 = [0 x1];      % x좌표
y1 = L1*cos(r1)*sin(q1);   Py1 = [0 y1];      % y좌표
z1 = L1*cos((pi/2)-r1);    Pz1 = [0 z1];      % z좌표




% 시뮬레이션을 할 링크들을 띄울 plot 설정
Fig = figure('Position', [300 300 600 600], 'Color', [1 1 1])
Axis = axes('parent', Fig);
hold on;
grid on;
axis([-2 2 -2 2 -0 2]);
title('1-Link Arm', 'fontsize', 25);   % 제목 설정
xlabel('X', 'fontsize', 15)       % x축 라벨 설정
ylabel('Y', 'fontsize', 15)       % y축 라벨 설정
zlabel('Z', 'fontsize', 15)       % z축 라벨 설정

% 로봇 링크를 그리는 plot을 변수에 초기화
p1 = plot3(Px1,Py1,Pz1, '-or','Linewidth', 3);

% 좌표가 잘 찍혔는지 각 절편에 해당하는 점선을 그림
plot3([0 x1], [0 0], [0 0], '--k', 'Linewidth', 2);         % 원점 -> x축 좌표
plot3([x1 x1], [0 y1], [0 0], '--k', 'Linewidth', 2);       % x축 좌표 -> x, y축 좌표
plot3([x1 x1], [y1 y1], [0 z1], '--k', 'Linewidth', 2);     % x, y축 좌표 -> x, y, z축 좌표

set(p1, 'XData', Px1, 'YData', Py1, 'ZData', Pz1)
drawnow



