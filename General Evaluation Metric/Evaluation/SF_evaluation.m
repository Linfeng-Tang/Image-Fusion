function SF = SF_evaluation(MF)
RF = diff(MF,1,1);
RF1 = sqrt(mean(mean(RF.^2)));
CF = diff(MF,1,2);
CF1 = sqrt(mean(mean(CF.^2)));
SF = sqrt(RF1^2+CF1^2);
end
