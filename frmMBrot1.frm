VERSION 5.00
Begin VB.Form frmMBrot1 
   Appearance      =   0  '2D
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   4245
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   5115
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   283
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   341
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
End
Attribute VB_Name = "frmMBrot1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub draw()
Me.Cls
left = 0
r = frmMBrotsetup.r
w = Me.Width / Screen.TwipsPerPixelX
sr = 2 * r / w
recen = frmMBrotsetup.recen
imcen = frmMBrotsetup.imcen
k = frmMBrotsetup.k
For y = 0 To w
    For x = 0 To w
        rec = sr * (x - w / 2) + recen
        imc = sr * (y - w / 2) + imcen
        GoSub 500
        If outside = 0 Then PSet (x + left, left + w - y)
    Next x
Next y
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

