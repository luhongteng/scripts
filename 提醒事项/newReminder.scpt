JsOsaDAS1.001.00bplist00�Vscript_O
var app = Application('Calendar');
app.strictPropertyScope = true;
app.includeStandardAdditions = true;

function log(message) {
    TextEdit = Application('TextEdit')
    doc = TextEdit.documents['loging.rtf']
    doc.text = doc.text() + message;
}

var list = app.calendars();
var currentDate = Date();
log(currentDate.toString());
                              e jscr  ��ޭ