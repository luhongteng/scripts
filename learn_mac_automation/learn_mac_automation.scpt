JsOsaDAS1.001.00bplist00�Vscript_�
function run(){
	Safari = Application('Safari');
Safari.Document().make();
currentWindow = Safari.windows[0];
firstTab = Safari.Tab({url : "https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateImages.html#//apple_ref/doc/uid/TP40016239-CH20-SW1"});
currentWindow.tabs.push(firstTab);
currentWindow.tabs.push(Safari.Tab({url : "https://developer.apple.com/library/content/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/OSX10-10.html#//apple_ref/doc/uid/TP40014508-CH109-SW16"}));
currentWindow.tabs.push(Safari.Tab({url : "https://github.com/JXA-Cookbook/JXA-Cookbook/wiki"}));
currentWindow.currentTab = firstTab;
}

                              � jscr  ��ޭ