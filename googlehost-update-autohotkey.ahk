whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/hosts")
whr.Send()
FileDelete, C:\WINDOWS\system32\drivers\etc\hosts
FileAppend, % whr.ResponseText, C:\WINDOWS\system32\drivers\etc\hosts
run, ipconfig /flushdns, , Hide
msgbox, hosts已经更新, 请使用 https://www.google.com/ncr 打开谷歌测试
run, https://www.google.com/ncr
