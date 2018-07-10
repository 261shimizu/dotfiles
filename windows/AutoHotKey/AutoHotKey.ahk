;; 無変換+hjklでカーソル移動、Blindをつけると修飾キー組み合わせ（Shift、Ctrなど）も可能
vk1D & h::Send, {Blind}{left}
vk1D & j::Send, {Blind}{down}
vk1D & k::Send, {Blind}{up}
vk1D & l::Send, {Blind}{right}

vk1D & x::Send, {Blind}!{F4} ;; 無変換+x=ALT+F4
vk1D:: Send, {Blind}{Esc} ;; 無変換単独=Esc
vk1D & q:: Send, {Blind}{Esc} ;; 無変換+q=Esc

;;変換（not無変換）
vk1C:: Send, {Blind}{sc029} ;; 変換単独=全角/半角キー

;; 無変換+y,oでalt+←/→
vk1D & y::Send, {Blind}!{left}
vk1D & o::Send, {Blind}!{right}

#IfWinActive ahk_exe EXCEL.EXE
#Include %A_ScriptDir%/IME.ahk
Return
vk1D & y::Send, {Blind}^{PgUp} ;; Excelでは、無変換+y,oでシート切り替え
vk1D & o::Send, {Blind}^{PgDn} ;; Excelでは、無変換+y,oでシート切り替え
vk1C & y::Send, {Blind}^{left} ;; Excelでは、変換+yでctrl+left
vk1C & o::Send, {Blind}^{right} ;; Excelでは、変換+oでctrl+right
vk1C & u::Send, {Blind}^{down} ;; Excelでは、変換+uでctrl+down
vk1C & i::Send, {Blind}^{up}  ;; Excelでは、変換+iでctrl+up

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

;;無変換+wでword移動
vk1D & w::Send, {Blind}^{right}

;; 無変換+0,$でhome,end
vk1D & 0::Send, {Blind}{Home}
vk1D & 4::
  If GetKeyState("shift", "P"){
    Send, {Blind}{End}
  }
  return

;; 無変換+a,eでhome,end
vk1D & a::Send, {Blind}{Home}
vk1D & e::Send, {Blind}{End}

;; 無変換+b,fでPgUp, PgDn
vk1D & b::Send, {Blind}{PgUp}
vk1D & f::Send, {Blind}{PgDn}

; 入力系
:O:`;sl::／                 ;セミコロン(;)に続けてSL<Enter>と入力すると全角スラッシュが入力される
:O:`;bsl::＼                ;セミコロン(;)に続けてBSL<Enter>と入力すると全角バックスラッシュが入力される
:O:`;kome::※               ;セミコロン(;)に続けてKOME<Enter>と入力すると※が入力される
:O:`;s::■{Space}           ;セミコロン(;)に続けてS<Enter>と入力すると■と半角スペースが入力される
:O:`;Mon::（月）            ;セミコロン(;)に続けてMON<Enter>と入力すると"（月）"が入力される
:O:`;Tue::（火）            ;セミコロン(;)に続けてTUE<Enter>と入力すると"（火）"が入力される
:O:`;Wed::（水）            ;セミコロン(;)に続けてWED<Enter>と入力すると"（水）"が入力される
:O:`;Thu::（木）            ;セミコロン(;)に続けてTHU<Enter>と入力すると"（木）"が入力される
:O:`;Fri::（金）            ;セミコロン(;)に続けてFRI<Enter>と入力すると"（金）"が入力される
:O:`;Sat::（土）            ;セミコロン(;)に続けてSAT<Enter>と入力すると"（土）"が入力される
:O:`;Sun::（日）            ;セミコロン(;)に続けてSUN<Enter>と入力すると"（日）"が入力される

