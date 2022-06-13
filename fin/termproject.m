pic = patch('Vertices', zeros(4,3),'Faces', [1 2 3 4 3 2 2 2;8 6 5 7 9 7 5 6]);
go = xyz_mex(vcal_mex());
for i = 1:351
    pic.Vertices = [0 0 0;go(1:3,1:3,i);go(4:8,1:3,i)];
end
    