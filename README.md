EventLogTextCollector (DumpEventLog.vbs 日本語対応版)
--

### このプロジェクトの目的

Jason Fossen氏が作られた「DumpEventLog.vbs」は、WindowsイベントログをCSV形式で  
保存する素晴らしいスクリプトです。

[オリジナルへのリンク](https://cyber-defense.sans.org/blog/2009/06/30/dump-windows-event-logs-to-csv-text-vbscript#)

しかし、このスクリプト（Ver. 3.0.1）を日本語環境で使用すると、以下のような問題が発生します。
* Messageに含まれる日本語が全て削除されてしまう
* Date、Time情報が全てUTCになっており、地域の時間へと別途変換が必要

上記の問題を解決した日本語対応版の「DumpEventLog.vbs」を作成するとともに、  
バッチスクリプトも用意してWindowsイベントログをCSV形式で簡単に収集できるようにします。

実はWindowsの標準機能でCSV出力するとExcelで開いた時に表形式が崩れるようなイベントログ内容の場合にも、  
このスクリプトで収集したCSVだとExcelでちゃんと表形式を維持できるみたいです。

### ライセンスについて

Jason Fossen氏が作られたオリジナル同様、Public Domainです。  
内容を自由に改変いただけますし、どこに使っていただいても大丈夫です。  
その代わり、何か問題が起きても責任は負いかねます。  
という、よくあるフリー素材的なやつです。
