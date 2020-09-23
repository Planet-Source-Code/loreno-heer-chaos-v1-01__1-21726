VERSION 5.00
Begin VB.Form frmMBrotsetup 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   900
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   900
   ScaleWidth      =   4080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Command3 
      Caption         =   "Print"
      Height          =   255
      Left            =   3000
      TabIndex        =   10
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Draw"
      Height          =   255
      Left            =   3000
      TabIndex        =   8
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Show"
      Height          =   255
      Left            =   3000
      TabIndex        =   9
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox k 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   2280
      TabIndex        =   7
      Text            =   "-15"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox imcen 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   1560
      TabIndex        =   5
      Text            =   "0"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox recen 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   840
      TabIndex        =   4
      Text            =   "0"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox r 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "2"
      Top             =   360
      Width           =   495
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "k:"
      Height          =   195
      Left            =   2520
      TabIndex        =   6
      Top             =   120
      Width           =   135
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "imcen:"
      Height          =   195
      Left            =   1560
      TabIndex        =   3
      Top             =   120
      Width           =   465
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "recen:"
      Height          =   195
      Left            =   840
      TabIndex        =   2
      Top             =   120
      Width           =   450
   End
   Begin VB.Label test 
      AutoSize        =   -1  'True
      Caption         =   "Radius:"
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   540
   End
End
Attribute VB_Name = "frmMBrotsetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMBrot1.draw
End Sub

Private Sub Command2_Click()
frmMBrot1.Show
End Sub

Private Sub Command3_Click()
frmMBrot1.PrintForm
End Sub
