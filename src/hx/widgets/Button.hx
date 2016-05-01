package hx.widgets;

import cpp.Pointer;
import wx.widgets.Button in WxButton;

class Button extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var buttonRef:Pointer<WxButton> = WxButton.createInstance();
            buttonRef.ptr.create(parent != null ? parent._ref : null, id, label, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            _ref = cast buttonRef.raw;
        }
        
        super(parent, id);
    }
}

/*
import cpp.Pointer;
import wx.widgets.Button in WxButton;

@:unreflective
class Button extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var buttonRef:WxButton = WxButton.createInstance();
            buttonRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = buttonRef;
        }
        
        super(parent, id);
    }

    private var _hasBitmap:Bool = false;
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        buttonRef.setBitmap(bitmap._ref);
        if (_hasBitmap == false) {
            buttonRef.setBitmapPosition(#if (haxe_ver >= 3.3) _dir #else untyped __cpp__("((wxDirection)_dir)")#end);
        }
        _hasBitmap = true;
    }
    
    private var _dir:Direction = Direction.LEFT;
    public function setBitmapPosition(dir:Direction) {
        if (_hasBitmap == false) {
            _dir = dir;
            return;
        }
        buttonRef.setBitmapPosition(#if (haxe_ver >= 3.3) dir #else untyped __cpp__("((wxDirection)dir)")#end);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):WxButton;
    private function get_buttonRef():WxButton {
        return cast _ref;
    }
}
*/