
# ■ Requirement:

- NeoBundle:
  - pluginのダウンロード:  
  Windows：
```Bash
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
  Linux：
```Bash
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm -rf install.sh
```

- CTags:
  - 外部ツールのインストール:  
```Bash
$ sudo apt-get install exuberant-ctags
```

# ■ Markdown memo:

### ・ 見出し/箇条書き/番号付きリスト
  * 記号のあとは半角スペースを空ける.
```
 # 見出し
 - 箇条書き
 1. 番号付きリスト
```

### ・ code表記
  * バッククォートで括る.
```
これが `表記例` です
```
表示例:
> これが `表記例` です

### ・ pre表記
  - 下記のいずれか
    - 前後を三連バッククオート` ``` ` で囲う.
    - 行頭に4つ以上の半角スペースをつける.
    -  行頭に1つ以上のタブをつける.
  - ` ```python` のように書いてシンタックスハイライトの書式を指定できる.
  - Bash, C#(cs), C++(cpp), CSS, Diff, HTML, XML, Ini, Java, Javascript, PHP, Perl, Python, Ruby, SQL, 1C, AVR Assembler(avrasm), Apache, Axapta, CMake, DOS .bat(dos), Delphi, Django, Erlang, Erlang, REPL, Go, Haskell, Lisp, Lua, MEL, Nginx, Objective C(objectivec), Parser3, Python, profile, Scala, Smalltalk, TeX, VBScript, VHDL, Vala

 <pre>
```python
def sum(x, y):
    return x + y
```
</pre>

 表示例:
```python
def sum(x, y):
    return x + y
```

### ・ 強調表記
  - アスタリスクとチルダを使う.
```
これが*イタリック*です
これが**太字**です
これが ~~取り消し線~~ です
```
表示例:
> これが*イタリック*です  
> これが**太字**です  
> これが ~~取り消し線~~ です 

### ・ 水平線
  - アスタリスク、アンダーバー,ハイフンを3つ並べる.
```
 ***
 ___
 ----
```

### ・ GFM:表組み
記述例
```
|header1|header2|header3|
|:--|--:|:--:|
|align left|align right|align center|
|a|b|c|
```

 - htmlでも記述可能

    ```html
    <table border=4 width=250 align=center>
      <caption>【テーブルの例】</caption>
      <tr align=center>
       <th><br></th>
       <th>列-A</th>
       <th>列-B</th>
      </tr>
      <tr align=center>
       <td>行-1</td>
       <td>A1</td>
       <td>B1</td>
      </tr>
    </table>
    ```

 表示例:
<table border=4 width=250 align=center>
 <caption>【テーブルの例】</caption>
 <tr align=center>
  <th><br></th>
  <th>列-A</th>
  <th>列-B</th>
 </tr>
 <tr align=center>
  <td>行-1</td>
  <td>A1</td>
  <td>B1</td>
 </tr>
</table>

### ・ リンク
  - `[表示文字](リンクURL)`形式でリンクを記述する.
```
[Google先生](https://www.google.co.jp/)
```
  表示例:
> [Google先生](https://www.google.co.jp/)

### ・ 定義参照リンク
  - 同じリンクの参照を何度も利用する場合は、リンク先への参照を定義することができる.
  - `[ID]:URL` で定義し、`[ラベル][ID]` で参照する.  
  - リンクの定義は`[ID]: URL "リンクのツールチップ文字列"` という書式も可能.

```
[こっちからgoogle][google]  
その他の文章  
[こっちからもgoogle][google]  

[google]:http://www.google.com/ "aiueo"
```

  表示例:
> [こっちからgoogle][google]  
その他の文章  
[こっちからもgoogle][google]  

[google]:http://www.google.com/



# ■ Vim basic memo:

## Jump point
Ctrl+i : next
Ctrl+o : prev


## key mapping command

|モード|再割当無し|再割当有り|
|:-----------|------------:|:------------:|
|ノーマルモード＋ビジュアルモード|noremap|map|
|コマンドラインモード＋インサートモード|noremap!|map!|
|ノーマルモード|nnoremap|nmap|
|ビジュアル(選択)モード|vnoremap|vmap|
|コマンドラインモード|cnoremap|cmap|
|インサート(挿入)モード|inoremap|imap|

END OF FILE
