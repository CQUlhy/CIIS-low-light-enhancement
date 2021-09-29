 

% test = "para8\res\";
for i = 1:35
   j=num2str(i);
%    file="E:\研究生\paper\demo\low-light V2\data35\.png"
    file = strcat('E:\研究生\paper\demo\low-light V2\data35\',j ,'.png');
   S=imread(file); %L oringal image 
   S=im2double(S);
   
   S1 = S(:,:,1); 
   S2 = S(:,:,2); 
   S3 = S(:,:,3); 
   S = cat(3, S1,S2,S3);
    LI = min(S,[],3); 
    H = max(S,[],3);
%      [res, R, t_our,t_b,Q] = new_enhance_demo(L);
    [res, L, R,Q] = model_3rgb(S);
   imwrite(res,strcat('E:\研究生\paper\demo\low-light V2\result\res\',j,'.png'));
% imwrite(S1,strcat('E:\研究生\paper\demo\low-light V2\result\res\',j,'S1.png'))
% imwrite(S2,strcat('E:\研究生\paper\demo\low-light V2\result\res\',j,'S2.png'))
% imwrite(S3,strcat('E:\研究生\paper\demo\low-light V2\result\res\',j,'S3.png'))
% imwrite(Q,strcat('E:\研究生\paper\demo\low-light V2\result\res\',j,'SQ.png'))
      imwrite(R,strcat('E:\研究生\paper\demo\low-light V2\result\ref\',j,'.png'));
       imwrite(L,strcat('E:\研究生\paper\demo\low-light V2\result\ill\',j,'.png'));
     imwrite(LI,strcat('E:\研究生\paper\demo\low-light V2\result\INVE\',j,'.png'));
%       imwrite(C,strcat('E:\研究生\paper\demo\low-light V2\result\low\',j,'.png'));
         imwrite(H,strcat('E:\研究生\paper\demo\low-light V2\result\high\',j,'.png'));
%         imwrite(HE,strcat('E:\研究生\paper\demo\low-light V2\result\HEW\',j,'.png'));
%          imwrite(O,strcat('E:\研究生\paper\demo\low-light V2\result\O_Denoise\',j,'.png'));
%         niqe_L =niqe(S)
%         niqe_O =niqe()
%         niqe_res =niqe(res)
%   imwrite(res,strcat('E:\研究生\房老师\Compare\O_enhance.png'));
end