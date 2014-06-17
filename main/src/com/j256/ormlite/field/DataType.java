package com.j256.ormlite.field;

import com.j256.ormlite.field.types.BigDecimalNumericType;
import com.j256.ormlite.field.types.BigDecimalStringType;
import com.j256.ormlite.field.types.BigIntegerType;
import com.j256.ormlite.field.types.BooleanObjectType;
import com.j256.ormlite.field.types.BooleanType;
import com.j256.ormlite.field.types.ByteArrayType;
import com.j256.ormlite.field.types.ByteObjectType;
import com.j256.ormlite.field.types.ByteType;
import com.j256.ormlite.field.types.CharType;
import com.j256.ormlite.field.types.CharacterObjectType;
import com.j256.ormlite.field.types.DateLongType;
import com.j256.ormlite.field.types.DateStringType;
import com.j256.ormlite.field.types.DateTimeType;
import com.j256.ormlite.field.types.DateType;
import com.j256.ormlite.field.types.DoubleObjectType;
import com.j256.ormlite.field.types.DoubleType;
import com.j256.ormlite.field.types.EnumIntegerType;
import com.j256.ormlite.field.types.EnumStringType;
import com.j256.ormlite.field.types.FloatObjectType;
import com.j256.ormlite.field.types.FloatType;
import com.j256.ormlite.field.types.IntType;
import com.j256.ormlite.field.types.IntegerObjectType;
import com.j256.ormlite.field.types.LongObjectType;
import com.j256.ormlite.field.types.LongStringType;
import com.j256.ormlite.field.types.LongType;
import com.j256.ormlite.field.types.SerializableType;
import com.j256.ormlite.field.types.ShortObjectType;
import com.j256.ormlite.field.types.ShortType;
import com.j256.ormlite.field.types.SqlDateType;
import com.j256.ormlite.field.types.StringBytesType;
import com.j256.ormlite.field.types.StringType;
import com.j256.ormlite.field.types.TimeStampType;
import com.j256.ormlite.field.types.UuidType;

public enum DataType
{
  private final DataPersister dataPersister;

  static
  {
    LONG_STRING = new DataType("LONG_STRING", 1, LongStringType.getSingleton());
    STRING_BYTES = new DataType("STRING_BYTES", 2, StringBytesType.getSingleton());
    BOOLEAN = new DataType("BOOLEAN", 3, BooleanType.getSingleton());
    BOOLEAN_OBJ = new DataType("BOOLEAN_OBJ", 4, BooleanObjectType.getSingleton());
    DATE = new DataType("DATE", 5, DateType.getSingleton());
    DATE_LONG = new DataType("DATE_LONG", 6, DateLongType.getSingleton());
    DATE_STRING = new DataType("DATE_STRING", 7, DateStringType.getSingleton());
    CHAR = new DataType("CHAR", 8, CharType.getSingleton());
    CHAR_OBJ = new DataType("CHAR_OBJ", 9, CharacterObjectType.getSingleton());
    BYTE = new DataType("BYTE", 10, ByteType.getSingleton());
    BYTE_ARRAY = new DataType("BYTE_ARRAY", 11, ByteArrayType.getSingleton());
    BYTE_OBJ = new DataType("BYTE_OBJ", 12, ByteObjectType.getSingleton());
    SHORT = new DataType("SHORT", 13, ShortType.getSingleton());
    SHORT_OBJ = new DataType("SHORT_OBJ", 14, ShortObjectType.getSingleton());
    INTEGER = new DataType("INTEGER", 15, IntType.getSingleton());
    INTEGER_OBJ = new DataType("INTEGER_OBJ", 16, IntegerObjectType.getSingleton());
    LONG = new DataType("LONG", 17, LongType.getSingleton());
    LONG_OBJ = new DataType("LONG_OBJ", 18, LongObjectType.getSingleton());
    FLOAT = new DataType("FLOAT", 19, FloatType.getSingleton());
    FLOAT_OBJ = new DataType("FLOAT_OBJ", 20, FloatObjectType.getSingleton());
    DOUBLE = new DataType("DOUBLE", 21, DoubleType.getSingleton());
    DOUBLE_OBJ = new DataType("DOUBLE_OBJ", 22, DoubleObjectType.getSingleton());
    SERIALIZABLE = new DataType("SERIALIZABLE", 23, SerializableType.getSingleton());
    ENUM_STRING = new DataType("ENUM_STRING", 24, EnumStringType.getSingleton());
    ENUM_INTEGER = new DataType("ENUM_INTEGER", 25, EnumIntegerType.getSingleton());
    UUID = new DataType("UUID", 26, UuidType.getSingleton());
    BIG_INTEGER = new DataType("BIG_INTEGER", 27, BigIntegerType.getSingleton());
    BIG_DECIMAL = new DataType("BIG_DECIMAL", 28, BigDecimalStringType.getSingleton());
    BIG_DECIMAL_NUMERIC = new DataType("BIG_DECIMAL_NUMERIC", 29, BigDecimalNumericType.getSingleton());
    DATE_TIME = new DataType("DATE_TIME", 30, DateTimeType.getSingleton());
    SQL_DATE = new DataType("SQL_DATE", 31, SqlDateType.getSingleton());
    TIME_STAMP = new DataType("TIME_STAMP", 32, TimeStampType.getSingleton());
    UNKNOWN = new DataType("UNKNOWN", 33, null);
    DataType[] arrayOfDataType = new DataType[34];
    arrayOfDataType[0] = STRING;
    arrayOfDataType[1] = LONG_STRING;
    arrayOfDataType[2] = STRING_BYTES;
    arrayOfDataType[3] = BOOLEAN;
    arrayOfDataType[4] = BOOLEAN_OBJ;
    arrayOfDataType[5] = DATE;
    arrayOfDataType[6] = DATE_LONG;
    arrayOfDataType[7] = DATE_STRING;
    arrayOfDataType[8] = CHAR;
    arrayOfDataType[9] = CHAR_OBJ;
    arrayOfDataType[10] = BYTE;
    arrayOfDataType[11] = BYTE_ARRAY;
    arrayOfDataType[12] = BYTE_OBJ;
    arrayOfDataType[13] = SHORT;
    arrayOfDataType[14] = SHORT_OBJ;
    arrayOfDataType[15] = INTEGER;
    arrayOfDataType[16] = INTEGER_OBJ;
    arrayOfDataType[17] = LONG;
    arrayOfDataType[18] = LONG_OBJ;
    arrayOfDataType[19] = FLOAT;
    arrayOfDataType[20] = FLOAT_OBJ;
    arrayOfDataType[21] = DOUBLE;
    arrayOfDataType[22] = DOUBLE_OBJ;
    arrayOfDataType[23] = SERIALIZABLE;
    arrayOfDataType[24] = ENUM_STRING;
    arrayOfDataType[25] = ENUM_INTEGER;
    arrayOfDataType[26] = UUID;
    arrayOfDataType[27] = BIG_INTEGER;
    arrayOfDataType[28] = BIG_DECIMAL;
    arrayOfDataType[29] = BIG_DECIMAL_NUMERIC;
    arrayOfDataType[30] = DATE_TIME;
    arrayOfDataType[31] = SQL_DATE;
    arrayOfDataType[32] = TIME_STAMP;
    arrayOfDataType[33] = UNKNOWN;
  }

  private DataType(DataPersister paramDataPersister)
  {
    this.dataPersister = paramDataPersister;
  }

  public final DataPersister getDataPersister()
  {
    return this.dataPersister;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.DataType
 * JD-Core Version:    0.6.2
 */