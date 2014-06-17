package com.alibaba.fastjson.parser;

import java.math.BigDecimal;
import java.util.Calendar;

public abstract interface JSONLexer
{
  public abstract byte[] bytesValue();

  public abstract void close();

  public abstract void config(Feature paramFeature, boolean paramBoolean);

  public abstract Number decimalValue(boolean paramBoolean);

  public abstract BigDecimal decimalValue();

  public abstract double doubleValue();

  public abstract float floatValue();

  public abstract int getBufferPosition();

  public abstract Calendar getCalendar();

  public abstract char getCurrent();

  public abstract void incrementBufferPosition();

  public abstract int intValue();

  public abstract Number integerValue();

  public abstract boolean isBlankInput();

  public abstract boolean isEOF();

  public abstract boolean isEnabled(Feature paramFeature);

  public abstract boolean isResetFlag();

  public abstract long longValue();

  public abstract void nextToken();

  public abstract void nextToken(int paramInt);

  public abstract void nextTokenWithColon(int paramInt);

  public abstract String numberString();

  public abstract int pos();

  public abstract void resetStringPosition();

  public abstract boolean scanISO8601DateIfMatch();

  public abstract void scanNumber();

  public abstract void scanString();

  public abstract String scanSymbol(SymbolTable paramSymbolTable);

  public abstract String scanSymbol(SymbolTable paramSymbolTable, char paramChar);

  public abstract String scanSymbolUnQuoted(SymbolTable paramSymbolTable);

  public abstract void setResetFlag(boolean paramBoolean);

  public abstract void skipWhitespace();

  public abstract String stringVal();

  public abstract String symbol(SymbolTable paramSymbolTable);

  public abstract int token();

  public abstract String tokenName();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.JSONLexer
 * JD-Core Version:    0.6.2
 */