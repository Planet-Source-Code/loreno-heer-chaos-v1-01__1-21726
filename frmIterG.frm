VERSION 5.00
Begin VB.Form frmIterG 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Graphic Iteration"
   ClientHeight    =   4065
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   5760
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   271
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   384
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   4200
      TabIndex        =   6
      Top             =   3600
      Width           =   1335
   End
   Begin VB.TextBox imax 
      Alignment       =   1  'Rechts
      Appearance      =   0  '2D
      Height          =   195
      Left            =   2640
      TabIndex        =   5
      Text            =   "10"
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox a 
      Alignment       =   1  'Rechts
      Appearance      =   0  '2D
      Height          =   195
      Left            =   0
      TabIndex        =   3
      Text            =   "2.75"
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox x0 
      Alignment       =   1  'Rechts
      Appearance      =   0  '2D
      Height          =   195
      Left            =   1320
      TabIndex        =   2
      Text            =   ".1"
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "I max:"
      Height          =   195
      Left            =   2640
      TabIndex        =   4
      Top             =   3480
      Width           =   420
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Begin Value x0:"
      Height          =   195
      Left            =   1320
      TabIndex        =   1
      Top             =   3480
      Width           =   1110
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Parameter a:"
      Height          =   195
      Left            =   0
      TabIndex        =   0
      Top             =   3480
      Width           =   900
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   384
      Y1              =   224
      Y2              =   224
   End
End
Attribute VB_Name = "frmIterG"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim xn As Double
Cls
xn = 0
links = 10
w = 200
m = 1
Line (links + w, links)-(links, links + w)
For i = 1 To w
    xn = i / w
    For k = 1 To m
        xn = CDbl(Me.a.Text) * xn * (1 - xn)
    Next k
    Line -(i + links, links + w * (1 - xn))
Next i
k = 1
i = 1
xn = Me.x0.Text
PSet (links + w * xn, links + w)
For i = 1 To CInt(Me.imax.Text)
    For k = 1 To m
        xn = CDbl(Me.a.Text) * xn * (1 - xn)
    Next k
    Line -(links + w * CDbl(Me.x0.Text), links + w * (1 - xn))
    Line -(links + w * xn, links + w * (1 - xn))
    Me.x0.Text = CStr(xn)
Next i
End Sub

