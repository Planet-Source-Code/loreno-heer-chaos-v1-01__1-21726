VERSION 5.00
Begin VB.Form frmMBrot2 
   Appearance      =   0  '2D
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   213
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   312
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
End
Attribute VB_Name = "frmMBrot2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub draw()
Me.Cls
Dim x(3), y(3)
left = 0
w = Me.Width / Screen.TwipsPerPixelX
r = frmmbrot2setup.r
sr = 2 * r / w
imcen = frmmbrot2setup.imcen
recen = frmmbrot2setup.recen
kstart = frmmbrot2setup.kstart
kend = frmmbrot2setup.kend
kstep = frmmbrot2setup.kstep
For k = kstart To kend Step kstep
    For i = 1 To 10000
        rec = sr * i + recen
        imc = imcen
        GoSub 500
        If outside = 1 Then GoTo 100
    Next i
    Exit Sub
    
100 vin = 1: vout = 2: vnew = 3
    x(vin) = i - 1: x(vout) = i: x(vnew) = i
    y(vin) = 0: y(vout) = 0: y(vnew) = 1
    xin = x(vin): yin = y(vin): xout = x(vout): yout = y(vout)
    PSet (x(vin) + left + w / 2, -y(vin) + left + w / 2)
    
200 rec = sr * x(vnew) + recen: imc = sr * y(vnew) + imcen
    GoSub 500
    If outside = 1 Then
        vref = vout: vout = vnew: vnew = vref
    Else
        Line -(x(vnew) + left + w / 2, -y(vnew) + left + w / 2)
        vref = vin: vin = vnew: vnew = vref
    End If
    x(vnew) = x(vin) + x(vout) - x(vref)
    y(vnew) = y(vin) + y(vout) - y(vref)
    If x(vin) <> xin Or y(vin) <> yin Then GoTo 200
    If x(vout) <> xout Or y(vout) <> yout Then GoTo 200
Next k
Exit Sub
500 outside = 1
    re = rec
    im = imc
    For j = 0 To 2 - k
        re2 = re ^ 2
        im2 = im ^ 2
        If re2 + im2 > 256! Then Return
        im = 2 * re * im + imc
        re = re2 - im2 + rec
    Next j
    outside = 0
    Return
End Sub
