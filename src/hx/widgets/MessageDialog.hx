package hx.widgets;

import cpp.Pointer;
import wx.widgets.MessageDialog in WxMessageDialog;
import wx.widgets.WxString;

class MessageDialog extends Dialog {

    public function new(parent:Window, message:String, caption:String = null, style:Int = 0) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (caption == null) {
                caption = "";
            }
            if (style == 0) {
                style = Defs.OK | Defs.CENTRE;
            }

            var messageStr = WxString.createInstance(message);
            var captionStr = WxString.createInstance(caption);
            _ref = WxMessageDialog.createInstance(Window.toRaw(parent), messageStr.ref, captionStr.ref, style).reinterpret();
            messageStr.destroy();
            captionStr.destroy();
        }

        super(parent);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var messageDialogRef(get, null):Pointer<WxMessageDialog>;
    private function get_messageDialogRef():Pointer<WxMessageDialog> {
        return _ref.reinterpret();
    }

}
