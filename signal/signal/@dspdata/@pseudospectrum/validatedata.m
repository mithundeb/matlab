function varargout = validatedata(this, data)
%VALIDATEDATA   Validate the data for this object.

%   Author(s): P. Pacheco
%   Copyright 1988-2006 The MathWorks, Inc.
%   $Revision: 1.1.6.3 $  $Date: 2007/12/14 15:10:32 $

% Call "private" function (using a trick) which is also used by abstractps.
[errid,errmsg] = dspdata.validatedata(this,data);

% If there is an output requested, return it, otherwise error.
if nargout
    varargout = {errid,errmsg};
else
    if ~isempty(errmsg), error(errid,errmsg); end
end

% [EOF]
