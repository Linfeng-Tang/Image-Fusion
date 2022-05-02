function [Q, qMap] = mef_ssim(imgSeq, fI,  K, window) 

if (nargin < 2 || nargin > 4)
   Q = -Inf;
   qMap = Inf;
   return;
end

if (~exist('K', 'var'))
   K = 0.03;
end

if (~exist('window', 'var'))
   window = fspecial('gaussian', 11, 1.5);
end


imgSeq = double(imgSeq);
fI = double(fI);
[s1, s2, s3] = size(imgSeq);
wSize = size(window,1);
sWindow = ones(wSize) / wSize^2; % square window used to calculate the distance
bd = floor(wSize/2);
mu = zeros(s1-2*bd, s2-2*bd, s3);
ed = zeros(s1-2*bd, s2-2*bd, s3);
for i = 1:s3
    img = squeeze(imgSeq(:,:,i));
    mu(:,:,i) = filter2(sWindow, img, 'valid');
    muSq = mu(:,:,i) .* mu(:,:,i);
    sigmaSq = filter2(sWindow, img.*img, 'valid') - muSq;
    ed(:,:,i) =  sqrt( max( wSize^2 * sigmaSq, 0 ) ) + 0.001; % add a small constant to avoid instability
end

R = zeros(s1-2*bd,s2-2*bd); % consistency map which could be used as an output if necessary
for i = bd+1:s1-bd
    for j = bd+1:s2-bd
        vecs = reshape(imgSeq(i-bd:i+bd,j-bd:j+bd,:),[wSize*wSize, s3]);
        denominator = 0;
        for k = 1:s3
            denominator = denominator + norm(vecs(:,k) - mu(i-bd,j-bd,k));
        end
        numerator = norm(sum(vecs,2) - mean(sum(vecs,2)));
        R(i-bd,j-bd) = (numerator + eps) / (denominator + eps);
    end
end

R(R > 1) = 1 - eps; % get rid of numerical instability
R(R < 0) = 0 + eps;


p = tan(pi/2 * R);
p( p >  10 ) = 10; % to avoid blow up (large number such as 10 is equivalent to taking maximum)
p = repmat(p,[1,1,s3]);


wMap = (ed / wSize).^p + eps; % to avoid blowing up
normalizer = sum(wMap,3);
wMap = wMap ./ repmat(normalizer,[1,1,s3]);
maxEd = max(ed,[],3);

C = (K * 255)^2;
qMap = zeros(s1-2*bd, s2-2*bd); 
for i = bd+1:s1-bd
    for j = bd+1:s2-bd
        blocks = imgSeq(i-bd:i+bd,j-bd:j+bd,:);
        rBlock = zeros(wSize,wSize);
        for k = 1 : s3
            rBlock = rBlock  + wMap(i-bd,j-bd,k) * ( blocks(:,:,k) - mu(i-bd,j-bd,k) ) / ed(i-bd,j-bd,k);
        end  
        if norm(rBlock(:)) > 0
            rBlock = rBlock / norm(rBlock(:)) * maxEd(i-bd,j-bd);
        end
        fBlock = fI(i-bd:i+bd,j-bd:j+bd);
        rVec = rBlock(:);
        fVec = fBlock(:);
        mu1 = sum( window(:) .* rVec );
        mu2 = sum( window(:) .* fVec );
        sigma1Sq = sum( window(:) .* (rVec - mu1).^2 );
        sigma2Sq = sum( window(:) .* (fVec - mu2).^2 );
        sigma12 = sum(  window(:) .* (rVec - mu1) .* (fVec - mu2)  );
        qMap(i-bd,j-bd) = ( 2 * sigma12 + C ) ./ ( sigma1Sq + sigma2Sq + C ); 
    end
end

Q = mean2(qMap);
