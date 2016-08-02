set nu
set ts=4
set st=4
set ai
syntax on
set foldmethod=indent
set encoding=utf-8
set fileencoding=utf-8

"NERD配置
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
auto VimEnter * if argc() == 0 && !exists("s:stdin") | NERDTree | endif

autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>

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
