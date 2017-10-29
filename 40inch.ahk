Menu Tray, Tip, Tiler

<!^Numpad7::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -6+X, 0+Y, 1294+W, 1072+H
Return

<!^Numpad4::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -6+X, 0+Y, 1294+W, 2137+H
Return

<!^Numpad1::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -6+X, 1064+Y, 1294+W, 1073+H
Return

<!^Numpad8::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+1280+X, 0+Y, 1294+W, 1072+H
Return

<!^Numpad5::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+1280+X, 0+Y, 1294+W, 2137+H
Return

<!^Numpad2::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -7+1280+X, 1064+Y, 1294+W, 2137+H
Return

<!^Numpad9::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -8+1280+1280+X, 0+Y, 1294+W, 1072+H
Return

<!^Numpad6::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -8+1280+1280+X, 0+Y, 1294+W, 2137+H
Return

<!^Numpad3::
  GetDeltas(W, H, X, Y)

  WinRestore, A
  WinMove, A, , -8+1280+1280+X, 1064+Y, 1294+W, 2137+H
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

  IfInString, T, cezary@yonderbeyond
  {
    X =  7
    H = -7
    W = -14
  }

  Return
}
