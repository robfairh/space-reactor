
#run bare2_res.m;
#run bare2_dep.m;

run reflector2_res.m;
run reflector2_dep.m;

# Keff
figure('visible','off');
# errorbar(BU, IMP_KEFF(:,1), IMP_KEFF(:,1).*IMP_KEFF(:,2)*2,'k.-')
errorbar(DAYS, IMP_KEFF(:,1), IMP_KEFF(:,1).*IMP_KEFF(:,2)*2,'k.-'),

set(gca, 'FontSize',16);
xlabel("EFPD");
ylabel("Multiplication factor");
title("Multiplication factor as a function of burnup");
xlim([0 4e3]);
#ylim([0.95 1.05]);
grid on;
box on;
#print -dpng bare2-Keff.png;
print -dpng reflector2-Keff.png;
close all;

# U235 
figure('visible','off');
# plot(BU, TOT_MASS(iU235, :), 'k.-')
plot(DAYS, TOT_MASS(iU235, :)/1e3, 'k.-');
set(gca, 'FontSize',16);
xlabel("EFPD");
ylabel("U-235 mass [kg]");
title("U-235 mass as a function of burnup");
xlim([0 4e3]);
grid on;
box on;
#print -dpng bare2-mU235.png;
print -dpng reflector2-mU235.png;