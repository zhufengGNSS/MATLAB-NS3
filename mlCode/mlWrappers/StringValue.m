classdef StringValue < MlWrapper
    % StringValue This object holds a string. This can be used for setting string-type of attributes to NS3 models.
    % More details at: https://www.nsnam.org/docs/release/3.26/doxygen/classns3_1_1_string_value.html
    
    %
    % Copyright (C) Vamsi.  2017-18 All rights reserved.
    %
    % This copyrighted material is made available to anyone wishing to use,
    % modify, copy, or redistribute it subject to the terms and conditions
    % of the GNU General Public License version 2.
    %
    
    properties ( Access = private, Hidden = true)
        cppHandle
    end
    
    methods
        function set(obj, val)
            obj.cppHandle = val;
        end
        
        function val = get(obj)
            val = obj.cppHandle;
        end
        
        function delete(obj)
            mexStringValue('delete', obj.cppHandle);
        end
        
        function obj = StringValue(varargin)
            switch(length(varargin))
                case 0
                    obj.cppHandle = mexStringValue('new');
                case 1
                    obj.cppHandle = mexStringValue('new', varargin{1});
                otherwise
                    obj.cppHandle = 0;
            end
        end
    end
end
