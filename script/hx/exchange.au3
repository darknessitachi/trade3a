Global $main = WinActivate("���Ϲ�Ʊ����ϵͳ5.0")
exchange($CmdLine[1], $CmdLine[2], $CmdLine[3], $CmdLine[4], $CmdLine[5], $CmdLine[6])

Func exchange($buyCode, $buyPrice, $buyNum, $sellCode, $sellPrice, $sellNum)
   Send("{F6}")
   Sleep(100)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:1]", $buyCode)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:2]", $buyPrice)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:3]", $buyNum)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:4]", $sellCode)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:5]", $sellPrice)
   ControlSetText($main, "", "[CLASS:Edit; INSTANCE:6]", $sellNum)
   Sleep(1000)
   ControlClick($main, "", "ͬʱ����")

   Dim $confirm = WinWait("", "ί��ȷ��");
   ControlClick($confirm, "", "��(&Y)")
   Dim $tip = WinWait("", "��ʾ");
   Dim $text = WinGetText($tip)
   ControlClick($tip, "", "ȷ��")
   return $text
EndFunc