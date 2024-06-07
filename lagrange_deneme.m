yk = [27, 8, 4, 60, 40, 1];
xk = [23, 4, 29, 10, 19, 5];
k = 1;
legendInfo = cell(1, length(xk)-1);

while k < length(xk) + 1
    x = linspace(min(xk), max(xk), 1000);
    y = ones(size(x));
    for ii = 1:length(xk)
        if ii ~= k
            y = y .* (x - xk(ii)) ./ (xk(k) - xk(ii));
        end
    end
    plot(x, y .* yk(k));
    grid on;
    hold on;
    legendInfo{k} = ['x= ' num2str(xk(k))];
    k = k + 1;
end
k = 1;
while k < length(xk) + 1
    plot(xk(k),yk(k),'rx');
    k = k + 1;
end

legend(legendInfo);
hold off