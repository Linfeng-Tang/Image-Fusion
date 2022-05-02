function CC= CC_evaluation(A,B,F)    
    rAF = sum(sum((A-mean(mean(A))) .* (F - mean(mean(F))))) / sqrt(sum(sum((A - mean(mean(A))).^2)) * sum(sum((F-mean(mean(F))).^2)));
    rBF = sum(sum((B-mean(mean(A))) .* (F - mean(mean(F))))) / sqrt(sum(sum((B - mean(mean(B))).^2)) * sum(sum((F-mean(mean(F))).^2)));
    CC = mean([rAF, rBF]);
end