VERSION 5.00
Begin VB.Form fib 
   Appearance      =   0  '2D
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   10485
   ClientLeft      =   105
   ClientTop       =   585
   ClientWidth     =   6990
   ForeColor       =   &H00800000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10485
   ScaleWidth      =   6990
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   WindowState     =   2  'Maximiert
   Begin VB.CommandButton Command3 
      Caption         =   "Paint"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   10200
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Print"
      Height          =   195
      Left            =   1080
      TabIndex        =   1
      Top             =   10200
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   195
      Left            =   2040
      TabIndex        =   0
      Top             =   10200
      Width           =   975
   End
   Begin VB.Line Line0 
      BorderColor     =   &H00800000&
      Index           =   0
      X1              =   120
      X2              =   6840
      Y1              =   120
      Y2              =   120
   End
End
Attribute VB_Name = "fib"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const phi As Double = (5 ^ (1 / 2) + 1) / 2
Dim s As Double
Dim q As Double
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Command1.Visible = False
Command2.Visible = False
Command3.Visible = False
Me.PrintForm
Command1.Visible = True
Command2.Visible = True
Command3.Visible = True
End Sub

Private Sub Command3_Click()
Line0(0).X1 = 20
Line0(0).X2 = Me.Width - 40
Line0(0).Y1 = 20
Line0(0).Y2 = 20
For a = 1 To 3
nu = fibXdwn(Line0(nu))
nu = fibYlft(Line0(nu))
nu = fibXup(Line0(nu))
nu = fibYrgt(Line0(nu))
Next
End Sub
Function getLenghtX(l As Line) As Double
getLenghtX = l.X2 - l.X1
End Function
Function getLenghtY(l As Line) As Double
getLenghtY = l.Y2 - l.Y1
End Function
Function drawLine(nu As Integer, xa As Double, ya As Double, xb As Double, yb As Double)
Load Line0(nu)
Line0(nu).X1 = xa
Line0(nu).X2 = xb
Line0(nu).Y1 = ya
Line0(nu).Y2 = yb
Line0(nu).Visible = True
Refresh
End Function
Function fibXdwn(l As Line) As Integer
Dim nu As Integer
nu = Line0.Count + 1
Load Line0(nu + 0)
Load Line0(nu + 1)
Load Line0(nu + 2)
Load Line0(nu + 3)
For x = nu To nu + 3
Line0(x).Visible = True
Next
s = getLenghtX(l)
q = s / phi
k = s - q
Line0(nu + 0).X1 = k + l.X1
Line0(nu + 0).X2 = k + l.X1
Line0(nu + 0).Y1 = l.Y1
Line0(nu + 0).Y2 = l.Y1 + q
'
Line0(nu + 1).X1 = l.X1
Line0(nu + 1).X2 = l.X1
Line0(nu + 1).Y1 = l.Y1
Line0(nu + 1).Y2 = l.Y1 + q
'
Line0(nu + 2).X1 = l.X2
Line0(nu + 2).X2 = l.X2
Line0(nu + 2).Y1 = l.Y1
Line0(nu + 2).Y2 = l.Y1 + q
'
Line0(nu + 3).X1 = l.X1
Line0(nu + 3).X2 = l.X2
Line0(nu + 3).Y1 = l.Y1 + q
Line0(nu + 3).Y2 = l.Y1 + q
fibXdwn = nu
End Function
Function fibYlft(l As Line) As Integer
Dim nu As Integer
nu = Line0.Count + 1
Load Line0(nu + 0)
Line0(nu).Visible = True
s = getLenghtY(l)
q = s / phi
k = s - q
Line0(nu + 0).X1 = l.X1 - q
Line0(nu + 0).X2 = l.X1
Line0(nu + 0).Y1 = l.Y1 + k
Line0(nu + 0).Y2 = l.Y1 + k
fibYlft = nu
End Function
Function fibXup(l As Line) As Integer
Dim nu As Integer
nu = Line0.Count + 1
Load Line0(nu + 0)
Line0(nu).Visible = True
s = getLenghtX(l)
q = s / phi
k = s - q
Line0(nu + 0).X1 = l.X1 + q
Line0(nu + 0).X2 = l.X1 + q
Line0(nu + 0).Y1 = l.Y1 - q
Line0(nu + 0).Y2 = l.Y1
fibXup = nu
End Function
Function fibYrgt(l As Line) As Integer
Dim nu As Integer
nu = Line0.Count + 1
Load Line0(nu + 0)
Line0(nu).Visible = True
s = getLenghtY(l)
q = s / phi
k = s - q
Line0(nu + 0).X1 = l.X1
Line0(nu + 0).X2 = l.X1 + q
Line0(nu + 0).Y1 = l.Y1 + q
Line0(nu + 0).Y2 = l.Y1 + q
fibYrgt = nu
End Function

Private Sub Form_DblClick()
Me.WindowState = 0
End Sub
