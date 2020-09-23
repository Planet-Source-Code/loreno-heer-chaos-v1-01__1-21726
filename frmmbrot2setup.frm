VERSION 5.00
Begin VB.Form frmmbrot2setup 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   1215
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   3405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1215
   ScaleWidth      =   3405
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Command3 
      Caption         =   "Print"
      Height          =   255
      Left            =   2280
      TabIndex        =   15
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Draw"
      Height          =   255
      Left            =   2280
      TabIndex        =   0
      Top             =   480
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Show"
      Height          =   255
      Left            =   2280
      TabIndex        =   14
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox kstep 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   1320
      TabIndex        =   13
      Text            =   "-15"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox kend 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   840
      TabIndex        =   12
      Text            =   "-15"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox r 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "2"
      Top             =   240
      Width           =   495
   End
   Begin VB.TextBox recen 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   840
      TabIndex        =   3
      Text            =   "0"
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox imcen 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   1560
      TabIndex        =   2
      Text            =   "0"
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox kstart 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   360
      TabIndex        =   1
      Text            =   "-15"
      Top             =   840
      Width           =   495
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "start"
      Height          =   195
      Left            =   480
      TabIndex        =   11
      Top             =   600
      Width           =   300
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "end"
      Height          =   195
      Left            =   960
      TabIndex        =   10
      Top             =   600
      Width           =   270
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "step"
      Height          =   195
      Left            =   1440
      TabIndex        =   9
      Top             =   600
      Width           =   300
   End
   Begin VB.Label test 
      AutoSize        =   -1  'True
      Caption         =   "Radius:"
      Height          =   195
      Left            =   120
      TabIndex        =   8
      Top             =   0
      Width           =   540
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "recen:"
      Height          =   195
      Left            =   840
      TabIndex        =   7
      Top             =   0
      Width           =   450
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "imcen:"
      Height          =   195
      Left            =   1560
      TabIndex        =   6
      Top             =   0
      Width           =   465
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "k:"
      Height          =   195
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   135
   End
End
Attribute VB_Name = "frmmbrot2setup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMBrot2.draw
End Sub

Private Sub Command2_Click()
frmMBrot2.Show
End Sub

Private Sub Command3_Click()
frmMBrot2.PrintForm
End Sub
