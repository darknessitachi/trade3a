Global $main = WinActivate("���Ϲ�Ʊ����ϵͳ5.0")
buy($CmdLine[1], $CmdLine[2], $CmdLine[3])

Func buy($code, $price, $num)
   Send("{F6}")
   Sleep(100)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:1]", $code)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:2]", $price)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:3]", $num)
   Sleep(1000)
   ControlClick($main, "", "����[B]")

   Dim $confirm = WinWait("", "ί��ȷ��");
   ControlClick($confirm, "", "��(&Y)")
   Dim $tip = WinWait("", "��ʾ");
   Dim $text = WinGetText($tip)
   ControlClick($tip, "", "ȷ��")
   return $text
EndFunc
