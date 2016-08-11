set nu
set ts=4
set st=4
set ai
syntax on
set foldmethod=indent
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,bigg5.euc-jp,euc-kr,latin1
set langmenu=zh_CN.UTF-8
set fileencoding=utf-8
set termencoding=utf-8
language messages zh_CN.UTF-8

filetype plugin indent on
"光标遇到折叠,折叠就打开
set foldopen=all
"光标离开就关闭
set foldclose=all

"显示中文引号
set ambiwidth=double

"设置搜索高亮
set hlsearch
"NERD配置
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
auto VimEnter * if argc() == 0 && !exists("s:stdin") | NERDTree | endif

autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>
map <M-m> :TlistToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible= '▾'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"ctrlp配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"mru配置

"tags
set tags=tags
set autochdir
set exrc
set secure
"存储生成的tags到文件
let g:vim_tags_auto_generate = 1
"生成ctags
let g:vim_tags_gems_tags_command = "{CTAGS} -R {OPTIONS} `bundle show --paths` 2>/dev/null"
"异步调用系统命令
let g:vim_tags_use_vim_dispatch = 0
let g:vim_use_language_filed = 1
let g:vim_tags_ignore_files = ['.gitignore' , '.svgignore' , '.cvsignore']
"确定tags根目录
let g:vim_tags_directories = [".git" , ".hg" , ".svn" , ".bzr" , "_darcs" , "CVS"]
let g:vim_tags_main_file = 'tags'
let g:vim_tags_extension = '.tags'
let g:vim_tags_cache_dir = expand($HOME)


let g:enable_template = 1
let g:template_dir = "~/.vim/template"
" c template
autocmd BufNewFile *.c 0r ~/.vim/template/c.tlp

"window split 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"selected Ctrl+c
vmap <C-c> "+y

"tags
nnoremap <silent><F4> :TlistToggle<CR>
let Tlist_Show_One_File = 1 "show current file tag
let Tlist_Exit_OnlyWindow = 1 "exit vim if tag is the last window 
let TList_Use_Right_Window = 1 "right show the window
let TList_File_Fold_Auto_Close = 1 "auto fold
let TList_Auto_Open = 0
let TList_Auto_Update = 1
let TList_Hightlight_Tag_On_BufEnter = 1
let TList_Enable_Fold_Column = 0
let TList_Process_File_Always = 1
let TLIst_Display_Prototype = 0
let TLIst_Compat_Format = 1

if &term == "tty"
	set t_Co = 8
	set t_Sb = ^[[4%dm
	set t_Sf = ^[[333%dm
endif

"set cinoptions = {0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
