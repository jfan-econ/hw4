
kappa =0.024;
beta = 0.99;
lamda1 = ((1+beta+kappa) - ((1+beta+kappa)^2-4*beta)^(0.5))/(2*beta);
lamda2 = 1/lamda1;



p_si_vec = zeros(1,10);
p_si_vec(1) = beta*kappa/(lamda1^2);


for j = 1:9
    
    psi_p_next = beta*p_si_vec(j)/lamda1;   
    p_si_vec(j+1) = psi_p_next;

end


y_si_vec    = -p_si_vec;
y_si_vec(1) = y_si_vec(1) + 1;
x=[1:1:10]
figure
plot(x,-p_si_vec); hold on 
plot(x,-y_si_vec); 
legend('p_si','y_si');
