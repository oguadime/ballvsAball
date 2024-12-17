function ballvsAball(A,p,k)
  
  if nargin<1
      A=rand(2);
  end
  
  if nargin<2
    p=2;
  end
  
  if nargin<3
    k=30;
  end

   % Display Matrix Properties
  disp('Matrix A:');
  disp(A);

  detA = det(A);
  disp('Determinant of A:');
  disp(detA);

  eigenvalues = eig(A);
  disp('Eigenvalues of A:');
  disp(eigenvalues);

  conditionNumber = cond(A);
  disp('Condition number of A:');
  disp(conditionNumber);

  figure

  nA=max([1,norm(A,1),norm(A,2),norm(A,inf)]);
  ax=[-nA,nA,-nA,nA];
  
  for j=1:k
    subplot(1,2,1)
    loc_ball(p,j)
    axis(ax)
    
    subplot(1,2,2)
    loc_Aball(A,p,j)
    axis(ax)

    %pause(max(1,6-j/2))
    pause(0.5)
  end
  
  
  
  
  
  
  
function loc_ball(p,j)
  x1=cos(0:j-1);
  x2=sin(0:j-1);

  x=zeros(2,j);
  for i=1:j
    x(:,i)=[x1(i);x2(i)]/norm([x1(i);x2(i)],p);
  end
  
  plot(x(1,end),x(2,end),'o','MarkerSize',14)  
  hold on
  plot([0,x(1,end)],[0,x(2,end)],'LineWidth',2)  
  if j>1
    plot(x(1,1:end-1),x(2,1:end-1),'*','MarkerSize',12)
  end
  grid on
  axis square
  title(['x \in \{x: || x ',sprintf('||_{%d}',p),' = 1\}'],'FontSize',14)
  %title('x \in \{x: || x || = 1\}','FontSize',14)
  hold off

function loc_Aball(A,p,j)
  x1=cos(0:j-1);
  x2=sin(0:j-1);

  x=zeros(2,j);
  for i=1:j
    x(:,i)=[x1(i);x2(i)]/norm([x1(i);x2(i)],p);
  end
  
  b=A*x;
  plot(b(1,end),b(2,end),'o','MarkerSize',14)  
  hold on
  plot([0,b(1,end)],[0,b(2,end)],'LineWidth',2)  
  if j>1
    plot(b(1,1:end-1),b(2,1:end-1),'*','MarkerSize',12)
  end
  grid on
  axis square
  title(['y \in \{Ax: || x ',sprintf('||_{%d}',p),' = 1\}'],'FontSize',14)
  %title('y \in \{Ax: || x || = 1\}','FontSize',14)
  hold off
  
