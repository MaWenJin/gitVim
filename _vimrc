set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

source $VIM/vimfiles/bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" ����leaderΪ,
let mapleader=","
let g:mapleader=","

" �ر� vi ����ģʽ
set nocompatible
" �Զ��﷨����
syntax on
" ����ļ�����
filetype on
" ����ļ����Ͳ��
filetype plugin on
" ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" ��ʾ�к�
set number
" ���¿�������
set scrolloff=6
" �趨 tab ����Ϊ 4
set tabstop=4
" ���ð�BackSpace��ʱ�����һ��ɾ����4���ո�
set softtabstop=4
set expandtab
" �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set shiftwidth=4
set smarttab
set history=1024
" ��ͻ����ʾ��ǰ��
set nocursorline
" �����ļ�ʱ������
set nobackup
" �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir
" ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
set ignorecase
set smartcase
" �������ļ�����ʱ����������
set nowrapscan
" ʵʱ����
set incsearch
" ����ʱ������ʾ���ҵ����ı�
set hlsearch
" �رմ�������
set noerrorbells
set novisualbell
set t_vb=

" ���Զ�����
"set nowrap
"How many tenths of a second to blink
set mat=2
" ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�
set hidden
" �����Զ�����
set smartindent
" �趨�����е�����Ϊ 1
set cmdheight=1
" ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
set laststatus=2
"��ʾ����������
set showmatch

" ����Զ����и�ʽ��, ��߶�������֮�󳬹����ڸ߶Ƚ����һ�п�����������
set display=lastline
" �趨��ɫ����
syntax enable
set background=dark
colorscheme solarized

" ������״̬����ʾ����Ϣ
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)

" ��ʾTab��
"set list
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"����ʱ����ʾ ������ʾ
"set shortmess=atl

"blank      �հ�
"buffers    ������
"curdir     ��ǰĿ¼
"folds      �۵�
"help       ����
"options    ѡ��
"tabpages   ѡ�
"winsize    ���ڴ�С
"slash      ת���ļ�·���е�\Ϊ/��ʹsession�ļ�����unix
"unix       ����session�ļ��еĻ���ģʽΪunix
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize

" Alt-W�л��Զ�����
noremap <a-w> :exe &wrap==1 ? 'set nowrap' : 'set wrap'<cr>

" ѡ��ģʽ Ctrl+c ����ѡ�е��ı�
vnoremap <c-c> "+y
" ��ͨģʽ�� Ctrl+c �����ļ�·��
nnoremap <c-c> :let @+ = expand('%:p')<cr>

" Shift + Insert ����ϵͳ���а��е�����
noremap <S-Insert> "+p
vnoremap <S-Insert> d"+P
inoremap <S-Insert> <esc>"+pa
inoremap <C-S-Insert> <esc>pa

"���ô����۵���ʽΪ �ֹ�  indent
"set foldmethod=indent
"���ô�����۵�����ʾ������
set foldexpr=1

set langmenu=zh_CN.utf8
set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=mononoki:h18


" ɾ��������δβ�ո�
nnoremap <f12> :%s/[ \t\r]\+$//g<cr>

" �����л�
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Buffers/Tab������ݷ�ʽ!
nnoremap <s-h> :bprevious<cr>
nnoremap <s-l> :bnext<cr>
nnoremap <s-j> :tabnext<cr>
nnoremap <s-k> :tabprev<cr>

" ����ģʽ�����������ƶ����
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <c-o>gj
inoremap <c-k> <c-o>gk

"ӳ��ת���﷨
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetype=php<cr>

"�Զ���ȫ
filetype plugin on
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"minibuffer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

let g:bufExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne=0

"nerdtree 
let g:NERDTree_title="[Directroy Tree]"
let g:winManagerWindowLayout = "NERDTree"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" winmanager
nmap wm :WMToggle<CR>

"taglist
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

nmap <F4> :TlistToggle<CR>

