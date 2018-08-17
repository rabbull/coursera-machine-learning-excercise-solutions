% initialization
clear ; close all; clc

% configure
nmax = 1e3;
times = 1e6;
vec = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
time = [];

% warmUp();
single_for_loop_time = singleForLoopTime(times);

for n = 1 : nmax

  tic();
  for i = 1 : times
    norm(vec, n);
  end
  time = [time; (toc() / times - single_for_loop_time)];

end

plot(time)
hold

