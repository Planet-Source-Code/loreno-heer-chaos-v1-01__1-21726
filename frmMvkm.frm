VERSION 5.00
Begin VB.Form frmMvkm 
   Appearance      =   0  '2D
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   5025
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   335
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   473
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
End
Attribute VB_Name = "frmMvkm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Paint()
'Sorry there are some goto's etc. this is because some of this code is from a math-book with BASIC examples.
Dim xlinks(10), xrechts(10), xoben(10)
Dim ylinks(10), yrechts(10), yoben(10)
Dim a(5), b(5), c(5), d(5), e(5), f(5)
links = 0
w = 300
wl = w + links
stufe = Int(frmmvsetup.stufe.Text)
xlinks(stufe) = 0
ylinks(stufe) = 0
xrechts(stufe) = w
yrechts(stufe) = 0
xoben(stufe) = 0.5 * w
yoben(stufe) = w
a(1) = frmmvsetup.a(0): a(2) = frmmvsetup.a(1): a(3) = frmmvsetup.a(2)
a(4) = frmmvsetup.a(3): a(5) = frmmvsetup.a(4)
b(1) = frmmvsetup.b(0): b(2) = frmmvsetup.b(1): b(3) = frmmvsetup.b(2)
b(4) = frmmvsetup.b(3): b(5) = frmmvsetup.b(4)
c(1) = frmmvsetup.c(0): c(2) = frmmvsetup.c(1): c(3) = frmmvsetup.c(2)
c(4) = frmmvsetup.c(3): c(5) = frmmvsetup.c(4)
d(1) = frmmvsetup.d(0): d(2) = frmmvsetup.d(1): d(3) = frmmvsetup.d(2)
d(4) = frmmvsetup.d(3): d(5) = frmmvsetup.d(4)
e(1) = frmmvsetup.e(0) * w: e(2) = frmmvsetup.e(1) * w: e(3) = frmmvsetup.e(2) * w
e(4) = frmmvsetup.e(3) * w: e(5) = frmmvsetup.e(4) * w
f(1) = frmmvsetup.f(0) * w: f(2) = frmmvsetup.f(1) * w: f(3) = frmmvsetup.f(2) * w
f(4) = frmmvsetup.f(3) * w: f(5) = frmmvsetup.f(4) * w
GoSub 100
Exit Sub

50  xlinks(stufe) = a(abb) * xlinks(stufe + 1) + b(abb) * ylinks(stufe + 1) + e(abb)
    ylinks(stufe) = c(abb) * xlinks(stufe + 1) + d(abb) * ylinks(stufe + 1) + f(abb)
    xrechts(stufe) = a(abb) * xrechts(stufe + 1) + b(abb) * yrechts(stufe + 1) + e(abb)
    yrechts(stufe) = c(abb) * xrechts(stufe + 1) + d(abb) * yrechts(stufe + 1) + f(abb)
    xoben(stufe) = a(abb) * xoben(stufe + 1) + b(abb) * yoben(stufe + 1) + e(abb)
    yoben(stufe) = c(abb) * xoben(stufe + 1) + d(abb) * yoben(stufe + 1) + f(abb)
    
100 If stufe <= 1 Then
        Line (links + xlinks(1), wl - ylinks(1))-(links + xrechts(1), wl - yrechts(1))
        Line -(links + xoben(1), wl - yoben(1))
        Line -(links + xlinks(1), wl - ylinks(1))
    Else
        stufe = stufe - 1
        abb = 1
        GoSub 50
        abb = 2
        GoSub 50
        abb = 3
        GoSub 50
        abb = 4
        GoSub 50
        abb = 5
        GoSub 50
        stufe = stufe + 1
    End If
    Return
End Sub
'a      b       c       d       e       f
'.500   .000    .00     .500    .0000   .0000
'.500   .000    .00     .500    .5000   .0000
'.500   .000    .00     .500    .0000   .5000
'--------------------------------------------
'.000   -.500   .500    -.000   .5000   .0000
'.000   .500    -.500   .000    .5000   .5000
'.500   .000    .000    .500    .2500   .5000
'--------------------------------------------
'.000   .577    -.577   .000    .0951   .5893
'.000   .577    -.577   .000    .4413   .7893
'.000   .577    -.577   .000    .0952   .9893
'--------------------------------------------
'.336   .000    .000    .335    .0662   .1333
'.000   .333    1.000   .000    .1333   .0000
'.000   -.333   1.000   .000    .0666   .0000
'--------------------------------------------
'.387   .430    .430    -.387   .2560   .5220
'.441   -.091   -.009   -.322   .4219   .5059
'-.468  .020    -.113   .015    .4000   .4000
'--------------------------------------------
'.255   .000    .000    .255    .3726   .6714
'.255   .000    .000    .255    .1146   .2232
'.255   .000    .000    .255    .6306   .2232
'.370   -.642   .642    .370    .6356   -.0061
'--------------------------------------------
'.382   .000    .000    .382    .3072   .6190
'.382   .000    .000    .382    .6033   .4044
'.382   .000    .000    .382    .0139   .4044
'.382   .000    .000    .382    .1253   .0595
'.382   .000    .000    .382    .4920   .0595
'--------------------------------------------
'.195   -.488   .344    .443    .4431   .2452
'.462   .414    -.252   .361    .2511   .5692
'-.058  -.070   .453    -.111   .5976   .0969
'-.035  .070    -.469   -.022   .4884   .5069
'-.637  .000    .000    .501    .8562   .2513
'--------------------------------------------
'.849   .037    -.037   .849    .075    .1830
'.197   -.226   .226    .197    .400    .0490
'-.150  .283    .260    .237    .575    -.0840
'.00    .000    .000    .160    .500    .0000
'--------------------------------------------

