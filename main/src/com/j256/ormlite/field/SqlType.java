package com.j256.ormlite.field;

public enum SqlType
{
  static
  {
    LONG_STRING = new SqlType("LONG_STRING", 1);
    DATE = new SqlType("DATE", 2);
    BOOLEAN = new SqlType("BOOLEAN", 3);
    CHAR = new SqlType("CHAR", 4);
    BYTE = new SqlType("BYTE", 5);
    BYTE_ARRAY = new SqlType("BYTE_ARRAY", 6);
    SHORT = new SqlType("SHORT", 7);
    INTEGER = new SqlType("INTEGER", 8);
    LONG = new SqlType("LONG", 9);
    FLOAT = new SqlType("FLOAT", 10);
    DOUBLE = new SqlType("DOUBLE", 11);
    SERIALIZABLE = new SqlType("SERIALIZABLE", 12);
    BLOB = new SqlType("BLOB", 13);
    BIG_DECIMAL = new SqlType("BIG_DECIMAL", 14);
    UNKNOWN = new SqlType("UNKNOWN", 15);
    SqlType[] arrayOfSqlType = new SqlType[16];
    arrayOfSqlType[0] = STRING;
    arrayOfSqlType[1] = LONG_STRING;
    arrayOfSqlType[2] = DATE;
    arrayOfSqlType[3] = BOOLEAN;
    arrayOfSqlType[4] = CHAR;
    arrayOfSqlType[5] = BYTE;
    arrayOfSqlType[6] = BYTE_ARRAY;
    arrayOfSqlType[7] = SHORT;
    arrayOfSqlType[8] = INTEGER;
    arrayOfSqlType[9] = LONG;
    arrayOfSqlType[10] = FLOAT;
    arrayOfSqlType[11] = DOUBLE;
    arrayOfSqlType[12] = SERIALIZABLE;
    arrayOfSqlType[13] = BLOB;
    arrayOfSqlType[14] = BIG_DECIMAL;
    arrayOfSqlType[15] = UNKNOWN;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.SqlType
 * JD-Core Version:    0.6.2
 */