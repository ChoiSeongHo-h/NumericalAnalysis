x = linspace(-pi/2, pi/2, 40);
f = exp(x) .* sin(x);
p1 = x;
p2 = x + x.^2;
p3 = x + x.^2+ (x.^3) / 3;
plot(x, f, '-r', x, p1, '-. m', x, p2, '--k', x, p3, ':b'), xlabel('x'), ylabel('y'),legend('Exact', 'p1', 'p2', 'p3');


