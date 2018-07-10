SetCapsLockState, AlwaysOff ;;CapsLock無効化
vkF0::return ;;英数キー無効化

vk1D & h::Send, {Blind}{left} ;; 無変換+h = 左
vk1D & j::Send, {Blind}{down} ;; 無変換+j = 下
vk1D & k::Send, {Blind}{up} ;; 無変換+k = 上
vk1D & l::Send, {Blind}{right} ;; 無変換+l = 右

vk1D & x::Send, {Blind}!{F4} ;; 無変換+x = ALT+F4
vk1D:: Send, {Blind}{Esc} ;; 無変換単独 = Esc
vk1D & q:: Send, {Blind}{Esc} ;; 無変換+q = Esc

vk1C:: Send, {Blind}{sc029} ;; 変換単独 = 全角/半角キー

vk1D & y::Send, {Blind}!{left} ;; 無変換+y = alt+左
vk1D & o::Send, {Blind}!{right} ;; 無変換+o = alt+右

#IfWinActive ahk_exe EXCEL.EXE
#Include %A_ScriptDir%/IME.ahk  ;download https://www6.atwiki.jp/eamat/pages/17.html
Return
vk1D & y::Send, {Blind}^{PgUp} ;; (Excel)無変換+y,o = シート切り替え
vk1D & o::Send, {Blind}^{PgDn} ;; (Excel)無変換+y,o = シート切り替え
vk1C & y::Send, {Blind}^{left} ;; (Excel)変換+y = ctrl+left
vk1C & o::Send, {Blind}^{right} ;; (Excel)変換+o = ctrl+right
vk1C & u::Send, {Blind}^{down} ;; (Excel)変換+u = ctrl+down
vk1C & i::Send, {Blind}^{up} ;; (Excel)変換+i = ctrl+up

;;更にshift/ctrl+spaceをIMEON/OFF問わずできるように
 $^Space::
    if (IME_GET())
    {
      IME_SET(0)
      Send,^{Space}
      IME_SET(1)
    }
    else
    {
      Send,^{Space}
    }
    Return

  $+Space::
    if (IME_GET())
    {
      IME_SET(0)
      Send,+{Space}
      IME_SET(1)
    }
    else
    {
      Send,+{Space}
    }
    Return

;;F1のヘルプが邪魔
F1::Return
+F1::SendInput, {F1}

#IfWinActive

vk1D & w::Send, {Blind}^{right} ;; 無変換+w = 単語移動

vk1D & 0::Send, {Blind}{Home} ;; 無変換+0 = home
;; 無変換+$ = end
vk1D & 4::
  If GetKeyState("shift", "P"){
    Send, {Blind}{End}
  }
  return

vk1D & a::Send, {Blind}{Home} ;; 無変換+a = home
vk1D & e::Send, {Blind}{End} ;; 無変換+e = end

vk1D & b::Send, {Blind}{PgUp} ;; 無変換+b = PgUp
vk1D & f::Send, {Blind}{PgDn} ;; 無変換+f = PgDn

;; 入力系
:O:`;sl::／ ;; セミコロン(;)に続けてSL<Enter>と入力すると全角スラッシュが入力される
:O:`;bsl::＼ ;; セミコロン(;)に続けてBSL<Enter>と入力すると全角バックスラッシュが入力される
:O:`;kome::※ ;; セミコロン(;)に続けてKOME<Enter>と入力すると※が入力される
:O:`;s::■{Space} ;; セミコロン(;)に続けてS<Enter>と入力すると■と半角スペースが入力される
:O:`;Mon::（月） ;; セミコロン(;)に続けてMON<Enter>と入力すると"（月）"が入力される
:O:`;Tue::（火）;; セミコロン(;)に続けてTUE<Enter>と入力すると"（火）"が入力される
:O:`;Wed::（水） ;; セミコロン(;)に続けてWED<Enter>と入力すると"（水）"が入力される
:O:`;Thu::（木） ;; セミコロン(;)に続けてTHU<Enter>と入力すると"（木）"が入力される
:O:`;Fri::（金） ;; セミコロン(;)に続けてFRI<Enter>と入力すると"（金）"が入力される
:O:`;Sat::（土） ;; セミコロン(;)に続けてSAT<Enter>と入力すると"（土）"が入力される
:O:`;Sun::（日） ;; セミコロン(;)に続けてSUN<Enter>と入力すると"（日）"が入力される


vk1D & F1::ReadTextViewList("`C:\Program Files\AutoHotkey\AutoHotkey.ahk`", "MainScript", "^[^;][^:]+::", "\s;;\s") ;; 無変換 + F1 = ヘルプ表示1

ReadTextViewList(file_path, gui_title, r, str) ;;テキストファイルを読み込みリスト表示
{
  static path ;関数内サブルーチンのためにstatic変数を使う
  path := file_path
  ;リスト作成
  Gui, TextGui:New, , % gui_title
  Gui, TextGui:default
  Gui, Font, s13, メイリオ
  Gui, Add, ListView, Grid w500 h600, % gui_title
  ;ループ
  i = 0
  Loop
  {
    i += 1
    FileReadLine, line, %path%, %i% ;ファイルから一行読み込む
    if(ErrorLevel <> 0)   ;読み込む行がないとき
    {
      break     ;ループ終了
    }
    else
    {
      found_pos := RegExMatch(line, r)  ;正規表現に一致する箇所を検索して位置を返す
      line_set := RegExMatch(line, str) ;文字列中で検索文字列が最初に出現する位置を返す
      line_txt := SubStr(line, line_set)  ;文字列の指定位置から指定文字数を取り出す
    }
    ;リスト描画
    if found_pos  ;正規表現に一致した行のとき
    {
      LV_Add("AutoHdr", line_txt)
    }
  }
  ;開くボタン
  Gui, Add, Button, Default GTextGuiEdit, 開く(&E)
  Gui, Show
  return
TextGuiEdit:
  ;Run, "!!!texteditor!!!" 1;;表示中のファイルをエディタで開く
  Gui, Destroy
  return
TextGuiGuiEscape:       ;Esc押下時
TextGuiGuiClose:        ;Guiウィンドウを消す
  GUI, Destroy
  return
}

