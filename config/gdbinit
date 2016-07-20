source ~/tools/peda/peda.py
source ~/tools/Pwngdb/pwngdb.py
source ~/code/gggdb/gggdbinit

# my gdb function
define re
    if $argc == 0
        target remote localhost:4444
    else
        target remote localhost:$arg0
    end
end
document re
Syntax: re PORT
| remote debuggin, attach gdbserver
end

define esp
    x/10xw $esp
end
document esp
Syntax: esp
| dump 10 DWORD from esp

end

define rsp
    x/10xg $rsp
end
document rsp
Syntax: rsp
| dump 10 DWORD from rsp
end

