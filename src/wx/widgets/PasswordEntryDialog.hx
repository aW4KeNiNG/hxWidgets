package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/textdlg.h")
@:unreflective
@:native("wxPasswordEntryDialog")
extern class PasswordEntryDialog extends TextEntryDialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPasswordEntryDialog")   private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):RawPointer<Window>;
                                            public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):Pointer<Window> return Pointer.fromRaw(_new(parent, message, caption, value, style));
}