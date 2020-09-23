VERSION 5.00
Begin VB.Form frmmvsetup 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Chaos"
   ClientHeight    =   1800
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   6450
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1800
   ScaleWidth      =   6450
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertikal
      TabIndex        =   39
      Text            =   "frmmvsetup.frx":0000
      Top             =   1920
      Width           =   6200
   End
   Begin VB.CommandButton Command2 
      Caption         =   "More->>"
      Height          =   255
      Left            =   5400
      TabIndex        =   38
      Top             =   1440
      Width           =   975
   End
   Begin VB.TextBox stufe 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Left            =   5400
      TabIndex        =   37
      Text            =   "5"
      Top             =   480
      Width           =   975
   End
   Begin VB.TextBox f 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   4320
      TabIndex        =   36
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox f 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   4320
      TabIndex        =   35
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox f 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   4320
      TabIndex        =   34
      Text            =   ".5"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox f 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   4320
      TabIndex        =   33
      Text            =   "0.000"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox f 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   4320
      TabIndex        =   32
      Text            =   "0.000"
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Default         =   -1  'True
      Height          =   375
      Left            =   5400
      TabIndex        =   31
      Top             =   960
      Width           =   975
   End
   Begin VB.TextBox e 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   3480
      TabIndex        =   30
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox e 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   3480
      TabIndex        =   29
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox e 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   3480
      TabIndex        =   28
      Text            =   ".25"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox e 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   3480
      TabIndex        =   27
      Text            =   ".5"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox e 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   3480
      TabIndex        =   26
      Text            =   "0.000"
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox d 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   2640
      TabIndex        =   25
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox d 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   2640
      TabIndex        =   24
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox d 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   2640
      TabIndex        =   23
      Text            =   ".5"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox d 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   2640
      TabIndex        =   22
      Text            =   ".5"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox d 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   2640
      TabIndex        =   21
      Text            =   ".5"
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox c 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   1800
      TabIndex        =   20
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox c 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   1800
      TabIndex        =   19
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox c 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   1800
      TabIndex        =   18
      Text            =   "0.000"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox c 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   1800
      TabIndex        =   17
      Text            =   "0.000"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox c 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   1800
      TabIndex        =   16
      Text            =   "0.000"
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox b 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   960
      TabIndex        =   15
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox b 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   960
      TabIndex        =   14
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox b 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   960
      TabIndex        =   13
      Text            =   "0.000"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox b 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   960
      TabIndex        =   12
      Text            =   "0.000"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox b 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   960
      TabIndex        =   11
      Text            =   "0.000"
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox a 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   4
      Left            =   120
      TabIndex        =   10
      Text            =   "0.000"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox a 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   3
      Left            =   120
      TabIndex        =   9
      Text            =   "0.000"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox a 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   2
      Left            =   120
      TabIndex        =   8
      Text            =   ".5"
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox a 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   1
      Left            =   120
      TabIndex        =   7
      Text            =   ".5"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox a 
      Alignment       =   2  'Zentriert
      Appearance      =   0  '2D
      Height          =   285
      Index           =   0
      Left            =   120
      TabIndex        =   6
      Text            =   ".5"
      Top             =   480
      Width           =   855
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "b"
      Height          =   195
      Left            =   1320
      TabIndex        =   5
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "c"
      Height          =   195
      Left            =   2160
      TabIndex        =   4
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "d"
      Height          =   195
      Left            =   3000
      TabIndex        =   3
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "f"
      Height          =   195
      Left            =   4680
      TabIndex        =   2
      Top             =   120
      Width           =   45
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "e"
      Height          =   195
      Left            =   3840
      TabIndex        =   1
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "a"
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   90
   End
End
Attribute VB_Name = "frmmvsetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmMvkm.Show
End Sub

Private Sub Command2_Click()
If Me.Height = 2130 Then
    Me.Height = 5055
Else
    Me.Height = 2130
End If
End Sub
