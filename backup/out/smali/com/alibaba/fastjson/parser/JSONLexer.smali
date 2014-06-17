.class public interface abstract Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bytesValue()[B
.end method

.method public abstract close()V
.end method

.method public abstract config(Lcom/alibaba/fastjson/parser/Feature;Z)V
.end method

.method public abstract decimalValue(Z)Ljava/lang/Number;
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract doubleValue()D
.end method

.method public abstract floatValue()F
.end method

.method public abstract getBufferPosition()I
.end method

.method public abstract getCalendar()Ljava/util/Calendar;
.end method

.method public abstract getCurrent()C
.end method

.method public abstract incrementBufferPosition()V
.end method

.method public abstract intValue()I
.end method

.method public abstract integerValue()Ljava/lang/Number;
.end method

.method public abstract isBlankInput()Z
.end method

.method public abstract isEOF()Z
.end method

.method public abstract isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
.end method

.method public abstract isResetFlag()Z
.end method

.method public abstract longValue()J
.end method

.method public abstract nextToken()V
.end method

.method public abstract nextToken(I)V
.end method

.method public abstract nextTokenWithColon(I)V
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public abstract pos()I
.end method

.method public abstract resetStringPosition()V
.end method

.method public abstract scanISO8601DateIfMatch()Z
.end method

.method public abstract scanNumber()V
.end method

.method public abstract scanString()V
.end method

.method public abstract scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
.end method

.method public abstract scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract setResetFlag(Z)V
.end method

.method public abstract skipWhitespace()V
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract symbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract token()I
.end method

.method public abstract tokenName()Ljava/lang/String;
.end method
