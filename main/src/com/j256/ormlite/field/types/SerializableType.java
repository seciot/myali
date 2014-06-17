package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.SQLException;

public class SerializableType extends BaseDataType
{
  private static final SerializableType singleTon = new SerializableType();

  private SerializableType()
  {
    super(SqlType.SERIALIZABLE, new Class[0]);
  }

  protected SerializableType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static SerializableType getSingleton()
  {
    return singleTon;
  }

  public boolean isAppropriateId()
  {
    return false;
  }

  public boolean isArgumentHolderRequired()
  {
    return true;
  }

  public boolean isComparable()
  {
    return false;
  }

  public boolean isStreamType()
  {
    return true;
  }

  public boolean isValidForField(Field paramField)
  {
    return Serializable.class.isAssignableFrom(paramField.getType());
  }

  // ERROR //
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 53	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 54	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore 4
    //   11: new 56	java/io/ObjectOutputStream
    //   14: dup
    //   15: aload 4
    //   17: invokespecial 59	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   20: astore 5
    //   22: aload 5
    //   24: aload_2
    //   25: invokevirtual 63	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   28: aload 5
    //   30: invokevirtual 66	java/io/ObjectOutputStream:close	()V
    //   33: aload 4
    //   35: invokevirtual 70	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   38: astore 9
    //   40: aload 9
    //   42: areturn
    //   43: astore 6
    //   45: new 72	java/lang/StringBuilder
    //   48: dup
    //   49: ldc 74
    //   51: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: aload_2
    //   55: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: aload 6
    //   63: invokestatic 91	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   66: athrow
    //   67: astore 7
    //   69: aload_3
    //   70: ifnull +7 -> 77
    //   73: aload_3
    //   74: invokevirtual 66	java/io/ObjectOutputStream:close	()V
    //   77: aload 7
    //   79: athrow
    //   80: astore 8
    //   82: goto -5 -> 77
    //   85: astore 7
    //   87: aload 5
    //   89: astore_3
    //   90: goto -21 -> 69
    //   93: astore 6
    //   95: aload 5
    //   97: astore_3
    //   98: goto -53 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   2	22	43	java/lang/Exception
    //   33	40	43	java/lang/Exception
    //   2	22	67	finally
    //   33	40	67	finally
    //   45	67	67	finally
    //   73	77	80	java/io/IOException
    //   22	33	85	finally
    //   22	33	93	java/lang/Exception
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    throw new SQLException("Default values for serializable types are not supported");
  }

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    throw new SQLException("Serializable type cannot be converted from string to Java");
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getBytes(paramInt);
  }

  // ERROR //
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 114	[B
    //   4: astore 4
    //   6: new 116	java/io/ObjectInputStream
    //   9: dup
    //   10: new 118	java/io/ByteArrayInputStream
    //   13: dup
    //   14: aload 4
    //   16: invokespecial 121	java/io/ByteArrayInputStream:<init>	([B)V
    //   19: invokespecial 124	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: astore 5
    //   24: aload 5
    //   26: invokevirtual 128	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   29: astore 9
    //   31: aload 5
    //   33: invokevirtual 129	java/io/ObjectInputStream:close	()V
    //   36: aload 9
    //   38: areturn
    //   39: astore 6
    //   41: aconst_null
    //   42: astore 5
    //   44: new 72	java/lang/StringBuilder
    //   47: dup
    //   48: ldc 131
    //   50: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload 4
    //   55: invokestatic 136	java/util/Arrays:toString	([B)Ljava/lang/String;
    //   58: invokevirtual 139	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc 141
    //   63: invokevirtual 139	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload 4
    //   68: arraylength
    //   69: invokevirtual 144	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   72: ldc 146
    //   74: invokevirtual 139	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: aload 6
    //   82: invokestatic 91	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   85: athrow
    //   86: astore 7
    //   88: aload 5
    //   90: ifnull +8 -> 98
    //   93: aload 5
    //   95: invokevirtual 129	java/io/ObjectInputStream:close	()V
    //   98: aload 7
    //   100: athrow
    //   101: astore 10
    //   103: aload 9
    //   105: areturn
    //   106: astore 8
    //   108: goto -10 -> 98
    //   111: astore 7
    //   113: aconst_null
    //   114: astore 5
    //   116: goto -28 -> 88
    //   119: astore 6
    //   121: goto -77 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   6	24	39	java/lang/Exception
    //   24	31	86	finally
    //   44	86	86	finally
    //   31	36	101	java/io/IOException
    //   93	98	106	java/io/IOException
    //   6	24	111	finally
    //   24	31	119	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.SerializableType
 * JD-Core Version:    0.6.2
 */