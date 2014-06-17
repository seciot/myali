package com.j256.ormlite.stmt;

public enum StatementBuilder$StatementType
{
  private final boolean a;
  private final boolean b;
  private final boolean c;
  private final boolean d;

  static
  {
    DELETE = new StatementType("DELETE", 4, true, false, true, false);
    EXECUTE = new StatementType("EXECUTE", 5, false, false, false, true);
    StatementType[] arrayOfStatementType = new StatementType[6];
    arrayOfStatementType[0] = SELECT;
    arrayOfStatementType[1] = SELECT_LONG;
    arrayOfStatementType[2] = SELECT_RAW;
    arrayOfStatementType[3] = UPDATE;
    arrayOfStatementType[4] = DELETE;
    arrayOfStatementType[5] = EXECUTE;
  }

  private StatementBuilder$StatementType(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramBoolean3;
    this.d = paramBoolean4;
  }

  public final boolean isOkForExecute()
  {
    return this.d;
  }

  public final boolean isOkForQuery()
  {
    return this.b;
  }

  public final boolean isOkForStatementBuilder()
  {
    return this.a;
  }

  public final boolean isOkForUpdate()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.StatementBuilder.StatementType
 * JD-Core Version:    0.6.2
 */