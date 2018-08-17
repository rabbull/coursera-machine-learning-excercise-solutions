function t = singleForLoopTime(times)

  tic();
  for i = 1 : times
    % doing nothing
  end
  t = toc();

  t /= times;

end
