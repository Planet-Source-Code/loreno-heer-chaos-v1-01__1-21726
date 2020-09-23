VERSION 5.00
Begin VB.Form frmTme 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Timeline"
   ClientHeight    =   4275
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   285
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   427
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.TextBox txtx0 
      Alignment       =   1  'Rechts
      Appearance      =   0  '2D
      Height          =   195
      Left            =   1440
      TabIndex        =   3
      Text            =   ".1"
      Top             =   3960
      Width           =   1215
   End
   Begin VB.TextBox txta 
      Alignment       =   1  'Rechts
      Appearance      =   0  '2D
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Text            =   "2.75"
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   4560
      TabIndex        =   1
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CheckBox mode 
      Caption         =   "Error Mode"
      Height          =   375
      Left            =   3000
      Style           =   1  'Grafisch
      TabIndex        =   0
      Top             =   3750
      Width           =   975
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   424
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Parameter a:"
      Height          =   195
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Width           =   900
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Begin Value x0:"
      Height          =   195
      Left            =   1440
      TabIndex        =   4
      Top             =   3720
      Width           =   1110
   End
End
Attribute VB_Name = "frmTme"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Cls
left = 10
h = 200
w = 1.5 * h
dw = 5
m = 1
Dim xn, x0, a As Long
Dim dxn, da As Double
x0 = Me.txtx0.Text
a = Me.txta.Text
xn = x0
dxn = x0
da = a

Line (left, left)-Step(0, h)
Line -Step(w, 0)
If Me.mode.Value = False Then
    PSet (left, left + (1 - xn) * h)
Else
    PSet (left, left + h)
End If

For i = 1 To w / dw
    For k = 1 To m
        xn = a * xn * (1 - xn)
    Next k
    If Me.mode.Value = False Then
        Line -(left + i * dw, left + (1 - xn) * h)
    Else
        For k = 1 To m
            dxn = da * dxn * (1 - dxn)
        Next k
        Line -(left + i * dw, left + (1 - Abs(xn - dxn)) * h)
    End If
Next i
End Sub

