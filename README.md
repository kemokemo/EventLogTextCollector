EventLogTextCollector (DumpEventLog 日本語対応版)
--

### このプロジェクトの目的

Jason Fossen氏が作られた「DumpEventLog.vbs」は、イベントログをテキストで
保存する素晴らしいスクリプトです。

[オリジナルへのリンク](https://cyber-defense.sans.org/blog/2009/06/30/dump-windows-event-logs-to-csv-text-vbscript#)

このスクリプトのVer. 3.0.1を日本語環境で使用すると、以下のような問題が発生します。
* Messageに含まれる日本語が全て削除されてしまう
* Date、Time情報が全てUTCになっており、地域の時間へと別途変換が必要

「DumpEventLog.vbs」を改造し、日本語環境での上記の問題を解決することが本プロジェクトの目的です。
