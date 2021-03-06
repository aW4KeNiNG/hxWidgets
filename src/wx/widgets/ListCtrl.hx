package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/listctrl.h")
@:unreflective
@:native("wxListCtrl")
extern class ListCtrl extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxListCtrl")          private static function _new():RawPointer<ListCtrl>;
                                        public static inline function createInstance():Pointer<ListCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("InsertItem")              public function insertItem(text:ListItem):Int;
    @:native("SetItem")                 public function setItem(text:ListItem):Bool;
    @:native("GetImageList")            public function getImageList(which:Int):RawPointer<ImageList>;
    @:native("SetImageList")            public function setImageList(imageList:RawPointer<ImageList>, which:Int):Void;
    @:native("GetItemCount")            public function getItemCount():Int;
    @:native("AppendColumn")            public function appendColumn(heading:WxString):Int;
}