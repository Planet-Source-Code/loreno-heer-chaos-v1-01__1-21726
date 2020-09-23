VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2865
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   129
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   191
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   1680
      TabIndex        =   12
      Text            =   ".7"
      Top             =   1320
      Width           =   495
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   360
      TabIndex        =   11
      Text            =   ".7"
      Top             =   1320
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   1560
      TabIndex        =   10
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1680
      TabIndex        =   7
      Text            =   "-30"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   360
      TabIndex        =   6
      Text            =   "45"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Zentriert
      Height          =   285
      Left            =   840
      TabIndex        =   5
      Text            =   "F[+F][-F]"
      Top             =   600
      Width           =   1935
   End
   Begin VB.TextBox axiom 
      Alignment       =   2  'Zentriert
      Enabled         =   0   'False
      Height          =   285
      Left            =   840
      TabIndex        =   3
      Text            =   "F"
      Top             =   360
      Width           =   1935
   End
   Begin VB.TextBox lsystemtxt 
      Alignment       =   2  'Zentriert
      Height          =   285
      Left            =   840
      TabIndex        =   1
      Text            =   "Tree"
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "° Right"
      Height          =   195
      Left            =   2280
      TabIndex        =   9
      Top             =   960
      Width           =   480
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "° Left"
      Height          =   195
      Left            =   960
      TabIndex        =   8
      Top             =   960
      Width           =   375
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "F --->"
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   640
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Axiom:"
      Enabled         =   0   'False
      Height          =   195
      Left            =   240
      TabIndex        =   2
      Top             =   360
      Width           =   465
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "L-System:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmTree.Show
drwTree
End Sub

Private Sub Form_Load()
Load frmTree
frmTree.Visible = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload frmTree
End Sub
