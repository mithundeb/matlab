function examples = getexamples(this)
%GETEXAMPLES   Get the examples.

%   Author(s): V. Pellissier
%   Copyright 2005 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2005/08/20 13:28:53 $

examples = {{ ...
    'Model an exponentiel with an FIR Filter.', ...
    'F = linspace(0,1,300);',...
    'A = exp(-2*pi*F);',... 
    'W = .1-20*log10(abs(A));',...
    'N = 30;',...
    'd = fdesign.arbmag(''N,F,A'',N,F,A);',...
    'Hd = design(d,''firls'',''Weights'',W);',...
    'fvtool(Hd)'},...
    { ...
    'Design an arbitrary-magnitude complex FIR filter.', ...
    'F = [-1 -.93443 -.86885 -.80328 -.7377 -.67213 -.60656 -.54098 -.47541,...',...
    '   -.40984 -.34426 -.27869 -.21311 -.14754 -.081967 -.016393 .04918 .11475,...',...
    '   .18033 .2459 .31148 .37705 .44262 .5082 .57377 .63934 .70492 .77049,...',...
    '   .83607 .90164 1];',...
    'A = [.0095848 .021972 .047249 .099869 .23119 .57569 .94032 .98084 .99707,...',...
    '   .99565 .9958 .99899 .99402 .99978 .99995 .99733 .99731 .96979 .94936,...',...
    '   .8196 .28502 .065469 .0044517 .018164 .023305 .02397 .023141 .021341,...',...
    '   .019364 .017379 .016061];', ...
    'N = 48;',...
    'd = fdesign.arbmag(''N,F,A'',N,F,A);',...
    'Hd = design(d,''firls'',''Weights'',-20*log10(A)+10);',...
    'fvtool(Hd)'}};


% [EOF]
