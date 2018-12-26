


插入命令
a # → 在光标所在字符后插入  
A # → 在光标所在字符尾插入  
i # → 在光标所在字符前插入  
I # → 在光标所在行行首插入  
o # → 在光标下插入新行  
O # → 在光标上插入新行  

删除命令

x   # → 删除光标所在处字符  
nx  # → 删除光标所在处n个字符  
dd  # → 删除光标所在行，
ndd # → 删除n行  
dG  # → 删除光标所在行到文件末尾内容  
D   # → 删除光标所在处到行尾内容  
:n1,n2d # → 删除指定范围的行 如：1,2d  

定位命令

:set number   #→ 设置行号 简写set nu  
:set nonu   #→ 取消行号  
gg  #→ 到第一行  
G   #→ 到最后一行  
nG  #→ 到第n行  
:n  #→ 到第n行  
0   #→ 移至行尾  
hjkl #→ 前下上后  

w   #→ 到下一个单词的开头  
b   #→ 与w相反  
e   #→ 到下一个单词的结尾。  
ge  #→ 与e相反  

0   #→ 到行头  
^   #→ 到本行的第一个非blank字符  
$   #→ 到行尾  
g_  #→ 到本行最后一个不是blank字符的位置。  
fa  #→ 到下一个为a的字符处，你也可以fs到下一个为s的字符。  
t,  #→ 到逗号前的第一个字符。逗号可以变成其它字符。  
3fa #→ 在当前行查找第三个出现的a。  
F 和 T → 和 f 和 t 一样，只不过是相反方向。  

zz # 将当前行置于屏幕中间（不是转载…）  
zt # 将当前行置于屏幕顶端（不是猪头~）  
zb # 底端啦~  

复制剪切

    yy 和 p 的组合键，或者 dd 和 p 的组合键

yy    # → 复制当前行  
;y    # → 复制到剪切板
y     # → 选中复制
nyy   # → n表示大于1的数字，复制n行
dd    # → 剪切当前行  
ndd   # → 剪切当前行以下n 行  
yw    # → 从光标处复制至一个单子/单词的末尾，包括空格
ye    # → 从光标处复制至一个单子/单词的末尾，不包括空格
y$    # → 从当前光标复制到行末
y0    # → 从当前光标位置（不包括光标位置）复制之行首
y3l   # → 从光标位置（包括光标位置）向右复制3个字符
y5G   # → 将当前行（包括当前行）至第5行（不包括它）复制
y3B   # → 从当前光标位置（不包括光标位置）反向复制3个单词
p、P  # → 粘贴在当前光标所在行或行上  
2dd   # → 删除2行  
3p    # → 粘贴文本3次  
.     # → 粘贴

多光标编辑

借助 vim-multiple-cursors 实现多光标编辑功能。首先选中一个单词，然后使用快捷键Shift+n，就会选中下一个一模一样的字符，Shift+k跳过选中，然后你可以进行编辑了。默认这个插件快捷键是Ctrl+n，可能会冲突，单在我这里没有冲突，操作Shift+n快捷键更舒服，你可以配置自己的快捷键

let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'

简单排版

:ce(nter)  # 居中显示光标所在行
:ri(ght)   # 靠右显示光标所在行
:le(ft)    # 靠左显示光标所在行
J          # 将光标所在下一行合并到光标所在行

>>         # 光标所在行增加缩进(一个tab)
<<         # 光标所在行减少缩进(一个tab)

n>>        # 光标所在行开始的n行增加缩进
n<<        # 光标所在行开始的n行减少缩进

刷新重载打开的文件

:e  # 刷新当前文件
:e! # 强制刷新当前文件

保存退出

:w new_filename     # → 保存为指定文件  
:w   # → 保存修改  
:wq  # → 保存修改并推出  
ZZ   # → 快捷键，保存修改并推出  
:q!  # → 不保存修改推出  
:wq! # → 保存修改并推出（文件所有者，root权限的用户）  

整页翻页

ctrl-f # 下一页 f 就是`forword` 
ctrl-b # 上一页 b 就是`backward`  
