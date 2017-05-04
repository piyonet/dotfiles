function isShowHeader() {
return 1;
}

function getFileName() {
return "/home/masa/dotfiles/README.md";
}

function getFileType() {
return "markdown";
}

function getLastModified() {
return "2017/05/05 (金) 06:25:13";
}

function getContent() {
return "\n# ■ Requirement:\n\n- NeoBundle:\n  - pluginのダウンロード:  \n  Windows：\n```Bash\nmkdir -p ~/.vim/bundle\ngit clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim\n```\n  Linux：\n```Bash\ncurl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh\nsh ./install.sh\nrm -rf install.sh\n```\n\n- CTags:\n  - 外部ツールのインストール:  \n```Bash\n$ sudo apt-get install exuberant-ctags\n```\n\n# ■ Markdown memo:\n\n### ・ 見出し/箇条書き/番号付きリスト\n  * 記号のあとは半角スペースを空ける.\n```\n # 見出し\n - 箇条書き\n 1. 番号付きリスト\n```\n\n### ・ code表記\n  * バッククォートで括る.\n```\nこれが `表記例` です\n```\n表示例:\n> これが `表記例` です\n\n### ・ pre表記\n  - 下記のいずれか\n    - 前後を三連バッククオート` ``` ` で囲う.\n    - 行頭に4つ以上の半角スペースをつける.\n    -  行頭に1つ以上のタブをつける.\n  - ` ```python` のように書いてシンタックスハイライトの書式を指定できる.\n  - Bash, C#(cs), C++(cpp), CSS, Diff, HTML, XML, Ini, Java, Javascript, PHP, Perl, Python, Ruby, SQL, 1C, AVR Assembler(avrasm), Apache, Axapta, CMake, DOS .bat(dos), Delphi, Django, Erlang, Erlang, REPL, Go, Haskell, Lisp, Lua, MEL, Nginx, Objective C(objectivec), Parser3, Python, profile, Scala, Smalltalk, TeX, VBScript, VHDL, Vala\n\n <pre>\n```python\ndef sum(x, y):\n    return x + y\n```\n</pre>\n\n 表示例:\n```python\ndef sum(x, y):\n    return x + y\n```\n\n### ・ 強調表記\n  - アスタリスクとチルダを使う.\n```\nこれが*イタリック*です\nこれが**太字**です\nこれが ~~取り消し線~~ です\n```\n表示例:\n> これが*イタリック*です  \n> これが**太字**です  \n> これが ~~取り消し線~~ です \n\n### ・ 水平線\n  - アスタリスク、アンダーバー,ハイフンを3つ並べる.\n```\n ***\n ___\n ----\n```\n\n### ・ GFM:表組み\n記述例\n```\n|header1|header2|header3|\n|:--|--:|:--:|\n|align left|align right|align center|\n|a|b|c|\n```\n\n - htmlでも記述可能\n\n    ```html\n    <table border=4 width=250 align=center>\n      <caption>【テーブルの例】</caption>\n      <tr align=center>\n       <th><br></th>\n       <th>列-A</th>\n       <th>列-B</th>\n      </tr>\n      <tr align=center>\n       <td>行-1</td>\n       <td>A1</td>\n       <td>B1</td>\n      </tr>\n    </table>\n    ```\n\n 表示例:\n<table border=4 width=250 align=center>\n <caption>【テーブルの例】</caption>\n <tr align=center>\n  <th><br></th>\n  <th>列-A</th>\n  <th>列-B</th>\n </tr>\n <tr align=center>\n  <td>行-1</td>\n  <td>A1</td>\n  <td>B1</td>\n </tr>\n</table>\n\n### ・ リンク\n  - `[表示文字](リンクURL)`形式でリンクを記述する.\n```\n[Google先生](https://www.google.co.jp/)\n```\n  表示例:\n> [Google先生](https://www.google.co.jp/)\n\n### ・ 定義参照リンク\n  - 同じリンクの参照を何度も利用する場合は、リンク先への参照を定義することができる.\n  - `[ID]:URL` で定義し、`[ラベル][ID]` で参照する.  \n  - リンクの定義は`[ID]: URL \"リンクのツールチップ文字列\"` という書式も可能.\n\n```\n[こっちからgoogle][google]  \nその他の文章  \n[こっちからもgoogle][google]  \n\n[google]:http://www.google.com/ \"aiueo\"\n```\n\n  表示例:\n> [こっちからgoogle][google]  \nその他の文章  \n[こっちからもgoogle][google]  \n\n[google]:http://www.google.com/\n\n\n\n# ■ Vim basic memo:\n\n## Jump point\nCtrl+i : next\nCtrl+o : prev\n\n\n## key mapping command\n\n|モード|再割当無し|再割当有り|\n|:-----------|------------:|:------------:|\n|ノーマルモード＋ビジュアルモード|noremap|map|\n|コマンドラインモード＋インサートモード|noremap!|map!|\n|ノーマルモード|nnoremap|nmap|\n|ビジュアル(選択)モード|vnoremap|vmap|\n|コマンドラインモード|cnoremap|cmap|\n|インサート(挿入)モード|inoremap|imap|\n\nEND OF FILE";
}
