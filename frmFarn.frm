VERSION 5.00
Begin VB.Form frmFarn 
   Appearance      =   0  '2D
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   3390
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   3255
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   226
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   217
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
End
Attribute VB_Name = "frmFarn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const imax = 5000
Private Sub Form_Paint()
Randomize Timer
links = 0
w = 200
wl = w + links
e1 = 0.5 * w
e2 = 0.57 * w
e3 = 0.408 * w
e4 = 0.1075 * w
f1 = 0 * w
f2 = -0.036 * w
f3 = 0.0893 * w
f4 = 0.27 * w
x = e1
y = 0
For i = 1 To imax
    z = Rnd
    If z <= 0.02 Then
        xn = 0 * x + 0 * y + e1
        yn = 0 * x + 0.27 * y + f1
    ElseIf z <= 0.17 Then
        xn = -0.139 * x + 0.263 * y + e2
        yn = 0.246 * x + 0.224 * y + f2
    ElseIf z <= 0.3 Then
        xn = 0.17 * x - 0.215 * y + e3
        yn = 0.222 * x + 0.176 * y + f3
    Else
        xn = 0.781 * x + 0.034 * y + e4
        yn = -0.032 * x + 0.739 * y + f4
    End If
    PSet (xn + links, 200 - yn)
    x = xn
    y = yn
Next i
End Sub
