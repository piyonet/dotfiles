
# $B"#(B Requirement:

- NeoBundle:
  - plugin$B$N%@%&%s%m!<%I(B:  
  Windows$B!'(B
```Bash
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
  Linux$B!'(B
```Bash
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm -rf install.sh
```

- CTags:
  - $B30It%D!<%k$N%$%s%9%H!<%k(B:  
```Bash
$ sudo apt-get install exuberant-ctags
```

# $B"#(B Markdown memo:

### $B!&(B $B8+=P$7(B/$B2U>r=q$-(B/$BHV9fIU$-%j%9%H(B
  * $B5-9f$N$"$H$OH>3Q%9%Z!<%9$r6u$1$k(B.
```
 # $B8+=P$7(B
 - $B2U>r=q$-(B
 1. $BHV9fIU$-%j%9%H(B
```

### $B!&(B code$BI=5-(B
  * $B%P%C%/%/%)!<%H$G3g$k(B.
```
$B$3$l$,(B `$BI=5-Nc(B` $B$G$9(B
```
$BI=<(Nc(B:
> $B$3$l$,(B `$BI=5-Nc(B` $B$G$9(B

### $B!&(B pre$BI=5-(B
  - $B2<5-$N$$$:$l$+(B
    - $BA08e$r;0O"%P%C%/%/%*!<%H(B` ``` ` $B$G0O$&(B.
    - $B9TF,$K(B4$B$D0J>e$NH>3Q%9%Z!<%9$r$D$1$k(B.
    -  $B9TF,$K(B1$B$D0J>e$N%?%V$r$D$1$k(B.
  - ` ```python` $B$N$h$&$K=q$$$F%7%s%?%C%/%9%O%$%i%$%H$N=q<0$r;XDj$G$-$k(B.
  - Bash, C#(cs), C++(cpp), CSS, Diff, HTML, XML, Ini, Java, Javascript, PHP, Perl, Python, Ruby, SQL, 1C, AVR Assembler(avrasm), Apache, Axapta, CMake, DOS .bat(dos), Delphi, Django, Erlang, Erlang, REPL, Go, Haskell, Lisp, Lua, MEL, Nginx, Objective C(objectivec), Parser3, Python, profile, Scala, Smalltalk, TeX, VBScript, VHDL, Vala

 <pre>
```python
def sum(x, y):
    return x + y
```
</pre>

 $BI=<(Nc(B:
```python
def sum(x, y):
    return x + y
```

### $B!&(B $B6/D4I=5-(B
  - $B%"%9%?%j%9%/$H%A%k%@$r;H$&(B.
```
$B$3$l$,(B*$B%$%?%j%C%/(B*$B$G$9(B
$B$3$l$,(B**$BB@;z(B**$B$G$9(B
$B$3$l$,(B ~~$B<h$j>C$7@~(B~~ $B$G$9(B
```
$BI=<(Nc(B:
> $B$3$l$,(B*$B%$%?%j%C%/(B*$B$G$9(B  
> $B$3$l$,(B**$BB@;z(B**$B$G$9(B  
> $B$3$l$,(B ~~$B<h$j>C$7@~(B~~ $B$G$9(B 

### $B!&(B $B?eJ?@~(B
  - $B%"%9%?%j%9%/!"%"%s%@!<%P!<(B,$B%O%$%U%s$r(B3$B$DJB$Y$k(B.
```
 ***
 ___
 ----
```

### $B!&(B GFM:$BI=AH$_(B
$B5-=RNc(B
```
|header1|header2|header3|
|:--|--:|:--:|
|align left|align right|align center|
|a|b|c|
```

 - html$B$G$b5-=R2DG=(B

    ```html
    <table border=4 width=250 align=center>
      <caption>$B!Z%F!<%V%k$NNc![(B</caption>
      <tr align=center>
       <th><br></th>
       <th>$BNs(B-A</th>
       <th>$BNs(B-B</th>
      </tr>
      <tr align=center>
       <td>$B9T(B-1</td>
       <td>A1</td>
       <td>B1</td>
      </tr>
    </table>
    ```

 $BI=<(Nc(B:
<table border=4 width=250 align=center>
 <caption>$B!Z%F!<%V%k$NNc![(B</caption>
 <tr align=center>
  <th><br></th>
  <th>$BNs(B-A</th>
  <th>$BNs(B-B</th>
 </tr>
 <tr align=center>
  <td>$B9T(B-1</td>
  <td>A1</td>
  <td>B1</td>
 </tr>
</table>

### $B!&(B $B%j%s%/(B
  - `[$BI=<(J8;z(B]($B%j%s%/(BURL)`$B7A<0$G%j%s%/$r5-=R$9$k(B.
```
[Google$B@h@8(B](https://www.google.co.jp/)
```
  $BI=<(Nc(B:
> [Google$B@h@8(B](https://www.google.co.jp/)

### $B!&(B $BDj5A;2>H%j%s%/(B
  - $BF1$8%j%s%/$N;2>H$r2?EY$bMxMQ$9$k>l9g$O!"%j%s%/@h$X$N;2>H$rDj5A$9$k$3$H$,$G$-$k(B.
  - `[ID]:URL` $B$GDj5A$7!"(B`[$B%i%Y%k(B][ID]` $B$G;2>H$9$k(B.  
  - $B%j%s%/$NDj5A$O(B`[ID]: URL "$B%j%s%/$N%D!<%k%A%C%WJ8;zNs(B"` $B$H$$$&=q<0$b2DG=(B.

```
[$B$3$C$A$+$i(Bgoogle][google]  
$B$=$NB>$NJ8>O(B  
[$B$3$C$A$+$i$b(Bgoogle][google]  

[google]:http://www.google.com/ "aiueo"
```

  $BI=<(Nc(B:
> [$B$3$C$A$+$i(Bgoogle][google]  
$B$=$NB>$NJ8>O(B  
[$B$3$C$A$+$i$b(Bgoogle][google]  

[google]:http://www.google.com/



# $B"#(B Vim basic memo:

## Jump point
Ctrl+i : next
Ctrl+o : prev


## key mapping command

|$B%b!<%I(B|$B:F3dEvL5$7(B|$B:F3dEvM-$j(B|
|:-----------|------------:|:------------:|
|$B%N!<%^%k%b!<%I!\%S%8%e%"%k%b!<%I(B|noremap|map|
|$B%3%^%s%I%i%$%s%b!<%I!\%$%s%5!<%H%b!<%I(B|noremap!|map!|
|$B%N!<%^%k%b!<%I(B|nnoremap|nmap|
|$B%S%8%e%"%k(B($BA*Br(B)$B%b!<%I(B|vnoremap|vmap|
|$B%3%^%s%I%i%$%s%b!<%I(B|cnoremap|cmap|
|$B%$%s%5!<%H(B($BA^F~(B)$B%b!<%I(B|inoremap|imap|

END OF FILE
