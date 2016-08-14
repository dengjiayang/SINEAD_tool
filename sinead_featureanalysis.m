function fig = sinead_featureanalysis()
% ___________________________________________________________________________
% SINEAD (Software Integrating NEuroimaging And other Data)
%
% Copyright 2016 ISRC-Ulster
% Reference 
% Youssofzadeh et al, Multi-kernel learning with Dartel enhances
% combined MRI-PET classification and prediction
% of Alzheimer�s disease: group and individual
% data analyses, submitted to Human Brain Mapping 
% 
% 
% v1.0 Vahab Youssofzadeh 05/06/2016
% ___________________________________________________________________________
disp('sinead_featureanalysis ...')
col = [0.9020 0.9072 0.9014];
h0 = figure('Color',[1 1 1], ...
	'PaperPosition',[18 180 576 432], ...
	'PaperUnits','points', ...
	'Position',[50 560 390 210], ...
	'Tag','Main', ...
	'NumberTitle','off',...
	'Name','ToolBox : SINEAD v.1', ...
    'MenuBar','none', ...
	'ToolBar','none');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',col, ...
	'Position',[72 85 166 16], ...
	'String','Feature extraction', ...
	'CallBack','sinead_featureanalysis_fe;');
h2 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',col, ...
	'Position',[72 60 166 16], ...
	'String','Feature selection (statistical analysis)', ...
	'CallBack','sinead_featureanalysis_ANOVA;');
% h3 = uicontrol('Parent',h0, ...
% 	'Units','points', ...
% 	'BackgroundColor',col, ...
% 	'Position',[72 35 166 16], ...
% 	'String','ANOVA test', ...
% 	'CallBack','sinead_featureanalysis_ANOVA');
h4 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',col, ...
	'Position',[72 10 166 16], ...
	'String','Close', ...
	'CallBack','delete(gcf)');
% 	'CallBack','delete(gcf), spm(''Clear'')');
h5 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'FontSize',11, ...
	'ListboxTop',0, ...
	'Position',[16 110 280 36], ...
	'String','Feature analysis (stat toolbox)', ...
	'Style','text', ...
	'Tag','StaticText5');
if nargout > 0, fig = h0; end
