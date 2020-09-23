VERSION 5.00
Begin VB.Form frmStart 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   1185
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4050
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1185
   ScaleWidth      =   4050
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.CommandButton Command9 
      Caption         =   "Feigenbaum"
      Height          =   255
      Left            =   2760
      TabIndex        =   8
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Iteration 2"
      Height          =   255
      Left            =   1440
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Iteration 1"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "1.61803..."
      Height          =   255
      Left            =   1440
      TabIndex        =   5
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Mandelbrot 2"
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Mandelbrot 1"
      Height          =   255
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "MVKM Iteration"
      Height          =   255
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Farn"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Tree"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frmStart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMain.Show
End Sub

Private Sub Command2_Click()
frmFarn.Show
End Sub

Private Sub Command3_Click()
frmmvsetup.Show
End Sub

Private Sub Command4_Click()
frmMBrotsetup.Show
End Sub

Private Sub Command5_Click()
frmmbrot2setup.Show
End Sub

Private Sub Command6_Click()
fib.Show
End Sub

Private Sub Command7_Click()
frmIterG.Show
End Sub

Private Sub Command8_Click()
frmTme.Show
End Sub
