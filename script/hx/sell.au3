Global $main = WinActivate("���Ϲ�Ʊ����ϵͳ5.0")
sell($CmdLine[1], $CmdLine[2], $CmdLine[3])

Func sell($code, $price, $num)
   Send("{F6}")
   Sleep(100)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:4]", $code)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:5]", $price)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:6]", $num)
   Sleep(1000)
   ControlClick($main, "", "����[S]")

   Dim $confirm = WinWait("", "ί��ȷ��");
   ControlClick($confirm, "", "��(&Y)")
   Dim $tip = WinWait("", "��ʾ");
   Dim $text = WinGetText($tip)
   ControlClick($tip, "", "ȷ��")
   return $text
EndFunc