/*
=============================================
概　　要：世帯の所得割合計額から推定世帯年収を取得します。
参　　考：http://yodokikaku.sakura.ne.jp/?p=4600
引　　数：@所得割 世帯の所得割額
戻 り 値：推定世帯年収
=============================================
*/
CREATE FUNCTION [dbo].[F_推定世帯年収] 
(
@所得割 INT
)
RETURNS NVARCHAR(MAX)
AS
BEGIN

       IF @所得割 BETWEEN      0 AND  48599  BEGIN RETURN '～330万円';          END
  ELSE IF @所得割 BETWEEN  48600 AND  60699  BEGIN RETURN '331万円～360万円';   END
  ELSE IF @所得割 BETWEEN  60700 AND  66999  BEGIN RETURN '361万円～380万円';   END
  ELSE IF @所得割 BETWEEN  67000 AND  76999  BEGIN RETURN '381万円～410万円';   END
  ELSE IF @所得割 BETWEEN  77000 AND  86999  BEGIN RETURN '411万円～440万円';   END
  ELSE IF @所得割 BETWEEN  87000 AND  96999  BEGIN RETURN '441万円～470万円';   END
  ELSE IF @所得割 BETWEEN  97000 AND 114999  BEGIN RETURN '471万円～510万円';   END
  ELSE IF @所得割 BETWEEN 115000 AND 120999  BEGIN RETURN '511万円～530万円';   END
  ELSE IF @所得割 BETWEEN 121000 AND 132999  BEGIN RETURN '531万円～550万円';   END
  ELSE IF @所得割 BETWEEN 133000 AND 168999  BEGIN RETURN '551万円～640万円';   END
  ELSE IF @所得割 BETWEEN 169000 AND 188999  BEGIN RETURN '641万円～690万円';   END
  ELSE IF @所得割 BETWEEN 189000 AND 198999  BEGIN RETURN '691万円～710万円';   END
  ELSE IF @所得割 BETWEEN 199000 AND 210999  BEGIN RETURN '711万円～740万円';   END
  ELSE IF @所得割 BETWEEN 211000 AND 246999  BEGIN RETURN '741万円～820万円';   END
  ELSE IF @所得割 BETWEEN 247000 AND 300999  BEGIN RETURN '821万円～930万円';   END
  ELSE IF @所得割 BETWEEN 301000 AND 338999  BEGIN RETURN '931万円～1010万円';  END
  ELSE IF @所得割 BETWEEN 339000 AND 348999  BEGIN RETURN '1011万円～1030万円'; END
  ELSE IF @所得割 BETWEEN 349000 AND 396999  BEGIN RETURN '1031万円～1130万円'; END
  ELSE IF @所得割 >=      397000             BEGIN RETURN '1130万円～';         END

  RETURN '';

END

GO

