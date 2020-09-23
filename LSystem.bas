Attribute VB_Name = "LSystem"
Option Explicit
Dim xs(15), dxs(15), ys(15), dys(15)
Dim stack, left, h, stage, xturtle, yturtle
Dim dx, dy, dx1
Dim fOut As Form
Public Const pi = 3.14159265358979
Dim cmd As String
Sub drwTree()
cmd = frmMain.Text1.Text
stack = 0
left = 0
h = 300
For stage = 0 To 6
    xturtle = left + h / 2
    yturtle = left + h
    dx = 0
    dy = -10 * (stage + 1)
    frmTree.Cls
    F
Next stage
End Sub
Sub F()
If stage <= 0 Then
    frmTree.Line (xturtle, yturtle)-Step(dx, dy)
    xturtle = xturtle + dx
    yturtle = yturtle + dy
Else
    stage = stage - 1
    TCall
    stage = stage + 1
End If
End Sub
Sub P()
dx1 = dx
dx = Cos(frmMain.Text2 * (pi / 180)) * dx1 - Sin(frmMain.Text2 * (pi / 180)) * dy
dy = Sin(frmMain.Text2 * (pi / 180)) * dx1 + Cos(frmMain.Text2 * (pi / 180)) * dy
End Sub
Sub N()
dx1 = dx
dx = Cos(frmMain.Text3 * (pi / 180)) * dx1 - Sin(frmMain.Text3 * (pi / 180)) * dy
dy = Sin(frmMain.Text3 * (pi / 180)) * dx1 + Cos(frmMain.Text3 * (pi / 180)) * dy
End Sub
Sub S()
stack = stack + 1
xs(stack) = xturtle
ys(stack) = yturtle
dxs(stack) = dx
dys(stack) = dy
'------------
dx = dx * frmMain.Text4
dy = dy * frmMain.Text5
'------------
End Sub
Sub L()
xturtle = xs(stack)
yturtle = ys(stack)
dx = dxs(stack)
dy = dys(stack)
stack = stack - 1
End Sub
Function TCall()
Dim j
j = 1
For j = 1 To Len(cmd)
    If Mid$(Trim$(cmd), j, 1) = "F" Then
        F
    ElseIf Mid$(Trim$(cmd), j, 1) = "+" Then
        P
    ElseIf Mid$(Trim$(cmd), j, 1) = "-" Then
        N
    ElseIf Mid$(Trim$(cmd), j, 1) = "[" Then
        S
    ElseIf Mid$(Trim$(cmd), j, 1) = "]" Then
        L
    End If
Next
End Function

