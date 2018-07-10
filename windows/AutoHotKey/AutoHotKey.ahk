;; 無変換+hjklでカーソル移動、Blindをつけると修飾キー組み合わせ（Shift、Ctrなど）も可能
vk1D & h::Send, {Blind}{left}
vk1D & j::Send, {Blind}{down}
vk1D & k::Send, {Blind}{up}
vk1D & l::Send, {Blind}{right}

vk1D & x::Send, {Blind}!{F4} ;; 無変換+x=ALT+F4
vk1D:: Send, {Blind}{Esc} ;; 無変換単独=Esc
vk1C:: Send, {Blind}{sc029} ;; 変換単独=全角/半角キー

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

