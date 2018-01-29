;SetTimer, CheckUpdate, 1000
Menu Tray, Tip, Kafelki

<!F9::Volume_Mute
<!F10::Volume_Down
<!F11::Volume_Up
<!F12::Media_Play_Pause

>#C::
  run chrome.exe

  WinRestore, A
  WinGetPos, X, Y, W, H, A

  nX := Floor((3840 - W) / 2)

  WinMove, A, , nX, 0, W, 2137
Return

<!Numpad7::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+X, 0+Y, 982+W, 718+H
Return

<!Numpad4::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+X, 710+Y, 982+W, 718+H
Return

<!Numpad1::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+X, 1420+Y, 982+W, 717+H
Return

<!Numpad8::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , 960+X, 0+Y, 1920+W, 1073+H
Return

<!Numpad2::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , 960+X, 1065+Y, 1920+W, 1072+H
Return

<!Numpad9::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , 2865+X, 0+Y, 981+W, 718+H
Return

<!Numpad6::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , 2865+X, 710+Y, 981+W, 718+H
Return

<!Numpad3::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , 2865+X, 1420+Y, 981+W, 717+H
Return

<!Numpad5::
  WinRestore, A
  WinGetPos, X, Y, W, H, A

  nX := Floor((3840 - W) / 2)
  ny := Floor((2160 - H) / 2)

  WinMove, A, , nX, nY, W, H
Return

<!Numpad0::
  WinRestore, A
  WinGetPos, X, Y, W, H, A
  WinMove, A, , X, 0, W, 2137
Return

GetDeltas(ByRef W, ByRef H, ByRef X, ByRef Y)
{
  W = 0
  H = 0
  X = 0
  Y = 0

  WinGetTitle, T, A
  if T = WhatSapp
  {
    Y =  1
    X =  8
    H = -9
    W = -16
  }

  if T =  Spotify
  {
    X =  8
    H = -8
    W = -16
  }
  if T = Hyper
  {
    X = 8
    Y = 1
    H = -9
    W = -16
  }

  IfInString, T, cezary@yonderbeyond
  {
    X =  7
    H = -7
    W = -14
  }

  IfInString, T, Visual Studio
  {
    X =  8
    H = -8
    W = -16
  }

  Return
}

CheckUpdate:
FileGetAttrib, attribs, %A_ScriptFullPath%
IfInString, attribs, A
{
  FileSetAttrib, -A, %A_ScriptFullPath%
  SplashTextOn,,, Updated script,
  Sleep, 500
  Reload
}
Return
