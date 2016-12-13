function ret=display_lee_path()
tic
mat=dlmread('D:\leemap.txt');

pause(1);
red=mat==2;
BW = red;


se = strel('line',11,90);

BW2 = imdilate(BW,se)*255;

map=ones(size(mat,1),size(mat,2),3);
for i=1:size(mat,1)
    for j=1:size(mat,2)
        if(BW2(i,j)==255)
           map(i,j,1)=255;
                map(i,j,2)=0;
                map(i,j,3)=0;
        else
        switch (mat(i,j))
            case 1
                map(i,j,1)=0;
                map(i,j,2)=0;
                map(i,j,3)=0;
              
            case 0
                map(i,j,1)=255;
                map(i,j,2)=255;
                map(i,j,3)=255;
            
        end
        end
        
    end
end

  imwrite(map,'D:\leemap.bmp');
  ret=1;              
                
                
