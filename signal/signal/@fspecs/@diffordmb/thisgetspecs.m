function specs = thisgetspecs(this)
%THISGETSPECS   Get the specs.

%   Author(s): P. Costa
%   Copyright 2005 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2005/06/16 08:31:10 $

specs.Fpass = this.Fpass;
specs.Fstop = this.Fstop;
specs.Apass = nan;
specs.Astop = nan;

% [EOF]
