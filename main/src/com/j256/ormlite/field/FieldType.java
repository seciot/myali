package com.j256.ormlite.field;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.BaseForeignCollection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.EagerForeignCollection;
import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.dao.LazyForeignCollection;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.mapped.MappedQueryForId;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.TableInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

public class FieldType
{
  private static boolean DEFAULT_VALUE_BOOLEAN = false;
  private static byte DEFAULT_VALUE_BYTE = 0;
  private static char DEFAULT_VALUE_CHAR = '\000';
  private static double DEFAULT_VALUE_DOUBLE = 0.0D;
  private static float DEFAULT_VALUE_FLOAT = 0.0F;
  private static int DEFAULT_VALUE_INT = 0;
  private static long DEFAULT_VALUE_LONG = 0L;
  private static short DEFAULT_VALUE_SHORT = 0;
  public static final String FOREIGN_ID_FIELD_SUFFIX = "_id";
  private static final ThreadLocal<FieldType.LevelCounters> threadLevelCounters = new FieldType.1();
  private final String columnName;
  private final ConnectionSource connectionSource;
  private DataPersister dataPersister;
  private Object dataTypeConfigObj;
  private Object defaultValue;
  private final Field field;
  private final DatabaseFieldConfig fieldConfig;
  private FieldConverter fieldConverter;
  private final Method fieldGetMethod;
  private final Method fieldSetMethod;
  private Constructor<?> foreignConstructor;
  private Dao<?, ?> foreignDao;
  private FieldType foreignFieldType;
  private FieldType foreignIdField;
  private final String generatedIdSequence;
  private final boolean isGeneratedId;
  private final boolean isId;
  private MappedQueryForId<Object, Object> mappedQueryForId;
  private final String tableName;

  // ERROR //
  public FieldType(ConnectionSource paramConnectionSource, String paramString, Field paramField, DatabaseFieldConfig paramDatabaseFieldConfig, Class<?> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 83	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aload_1
    //   6: putfield 85	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   9: aload_0
    //   10: aload_2
    //   11: putfield 87	com/j256/ormlite/field/FieldType:tableName	Ljava/lang/String;
    //   14: aload_1
    //   15: invokeinterface 93 1 0
    //   20: astore 6
    //   22: aload_0
    //   23: aload_3
    //   24: putfield 95	com/j256/ormlite/field/FieldType:field	Ljava/lang/reflect/Field;
    //   27: aload 4
    //   29: invokevirtual 100	com/j256/ormlite/field/DatabaseFieldConfig:postProcess	()V
    //   32: aload_3
    //   33: invokevirtual 106	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   36: astore 7
    //   38: aload 4
    //   40: invokevirtual 110	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   43: ifnonnull +288 -> 331
    //   46: aload 4
    //   48: invokevirtual 113	com/j256/ormlite/field/DatabaseFieldConfig:getPersisterClass	()Ljava/lang/Class;
    //   51: astore 16
    //   53: aload 16
    //   55: ifnull +10 -> 65
    //   58: aload 16
    //   60: ldc 115
    //   62: if_acmpne +97 -> 159
    //   65: aload_3
    //   66: invokestatic 121	com/j256/ormlite/field/DataPersisterManager:lookupForField	(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    //   69: astore 9
    //   71: aload 4
    //   73: invokevirtual 125	com/j256/ormlite/field/DatabaseFieldConfig:getForeignColumnName	()Ljava/lang/String;
    //   76: astore 10
    //   78: aload_3
    //   79: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   82: astore 11
    //   84: aload 4
    //   86: invokevirtual 132	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   89: ifne +16 -> 105
    //   92: aload 4
    //   94: invokevirtual 135	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   97: ifne +8 -> 105
    //   100: aload 10
    //   102: ifnull +413 -> 515
    //   105: aload 9
    //   107: ifnull +286 -> 393
    //   110: aload 9
    //   112: invokeinterface 140 1 0
    //   117: ifeq +276 -> 393
    //   120: new 142	java/lang/IllegalArgumentException
    //   123: dup
    //   124: new 144	java/lang/StringBuilder
    //   127: dup
    //   128: ldc 146
    //   130: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: ldc 155
    //   139: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload 7
    //   144: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   147: ldc 160
    //   149: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   158: athrow
    //   159: aload 16
    //   161: ldc 166
    //   163: iconst_0
    //   164: anewarray 168	java/lang/Class
    //   167: invokevirtual 172	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   170: astore 18
    //   172: aload 18
    //   174: aconst_null
    //   175: iconst_0
    //   176: anewarray 4	java/lang/Object
    //   179: invokevirtual 178	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   182: astore 21
    //   184: aload 21
    //   186: ifnonnull +106 -> 292
    //   189: new 180	java/sql/SQLException
    //   192: dup
    //   193: new 144	java/lang/StringBuilder
    //   196: dup
    //   197: ldc 182
    //   199: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   202: aload 16
    //   204: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   213: athrow
    //   214: astore 17
    //   216: new 144	java/lang/StringBuilder
    //   219: dup
    //   220: ldc 185
    //   222: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload 16
    //   227: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: aload 17
    //   235: invokestatic 191	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   238: athrow
    //   239: astore 20
    //   241: new 144	java/lang/StringBuilder
    //   244: dup
    //   245: ldc 193
    //   247: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: aload 16
    //   252: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   255: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: aload 20
    //   260: invokevirtual 197	java/lang/reflect/InvocationTargetException:getTargetException	()Ljava/lang/Throwable;
    //   263: invokestatic 191	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   266: athrow
    //   267: astore 19
    //   269: new 144	java/lang/StringBuilder
    //   272: dup
    //   273: ldc 193
    //   275: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   278: aload 16
    //   280: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   283: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   286: aload 19
    //   288: invokestatic 191	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   291: athrow
    //   292: aload 21
    //   294: checkcast 137	com/j256/ormlite/field/DataPersister
    //   297: astore 23
    //   299: aload 23
    //   301: astore 9
    //   303: goto -232 -> 71
    //   306: astore 22
    //   308: new 144	java/lang/StringBuilder
    //   311: dup
    //   312: ldc 199
    //   314: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   317: aload 16
    //   319: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: aload 22
    //   327: invokestatic 191	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   330: athrow
    //   331: aload 4
    //   333: invokevirtual 110	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   336: astore 8
    //   338: aload 8
    //   340: aload_3
    //   341: invokeinterface 203 2 0
    //   346: ifne +1216 -> 1562
    //   349: new 142	java/lang/IllegalArgumentException
    //   352: dup
    //   353: new 144	java/lang/StringBuilder
    //   356: dup
    //   357: ldc 205
    //   359: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   362: aload 7
    //   364: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   367: ldc 207
    //   369: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload_0
    //   373: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   376: ldc 209
    //   378: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: aload 8
    //   383: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   392: athrow
    //   393: aload 10
    //   395: ifnonnull +90 -> 485
    //   398: new 144	java/lang/StringBuilder
    //   401: dup
    //   402: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   405: aload 11
    //   407: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: ldc 30
    //   412: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: astore 12
    //   420: ldc 212
    //   422: aload 7
    //   424: invokevirtual 216	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   427: ifeq +255 -> 682
    //   430: new 180	java/sql/SQLException
    //   433: dup
    //   434: new 144	java/lang/StringBuilder
    //   437: dup
    //   438: ldc 218
    //   440: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   443: aload_3
    //   444: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   447: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: ldc 220
    //   452: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: aload 7
    //   457: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   460: ldc 222
    //   462: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: ldc 224
    //   467: invokevirtual 227	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   470: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: ldc 229
    //   475: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   481: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   484: athrow
    //   485: new 144	java/lang/StringBuilder
    //   488: dup
    //   489: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   492: aload 11
    //   494: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: ldc 231
    //   499: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   502: aload 10
    //   504: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   507: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   510: astore 12
    //   512: goto -92 -> 420
    //   515: aload 4
    //   517: invokevirtual 234	com/j256/ormlite/field/DatabaseFieldConfig:isForeignCollection	()Z
    //   520: ifeq +234 -> 754
    //   523: aload 7
    //   525: ldc 236
    //   527: if_acmpeq +58 -> 585
    //   530: ldc 212
    //   532: aload 7
    //   534: invokevirtual 216	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   537: ifne +48 -> 585
    //   540: new 180	java/sql/SQLException
    //   543: dup
    //   544: new 144	java/lang/StringBuilder
    //   547: dup
    //   548: ldc 238
    //   550: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   553: aload_3
    //   554: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   557: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: ldc 240
    //   562: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   565: ldc 212
    //   567: invokevirtual 227	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   570: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   573: ldc 242
    //   575: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   581: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   584: athrow
    //   585: aload_3
    //   586: invokevirtual 246	java/lang/reflect/Field:getGenericType	()Ljava/lang/reflect/Type;
    //   589: astore 15
    //   591: aload 15
    //   593: instanceof 248
    //   596: ifne +35 -> 631
    //   599: new 180	java/sql/SQLException
    //   602: dup
    //   603: new 144	java/lang/StringBuilder
    //   606: dup
    //   607: ldc 238
    //   609: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   612: aload_3
    //   613: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   616: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   619: ldc 250
    //   621: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   624: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   627: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   630: athrow
    //   631: aload 15
    //   633: checkcast 248	java/lang/reflect/ParameterizedType
    //   636: invokeinterface 254 1 0
    //   641: arraylength
    //   642: ifne +36 -> 678
    //   645: new 180	java/sql/SQLException
    //   648: dup
    //   649: new 144	java/lang/StringBuilder
    //   652: dup
    //   653: ldc 238
    //   655: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   658: aload_3
    //   659: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   662: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   665: ldc_w 256
    //   668: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   671: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   674: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   677: athrow
    //   678: aload 11
    //   680: astore 12
    //   682: aload 4
    //   684: invokevirtual 259	com/j256/ormlite/field/DatabaseFieldConfig:getColumnName	()Ljava/lang/String;
    //   687: ifnonnull +227 -> 914
    //   690: aload_0
    //   691: aload 12
    //   693: putfield 261	com/j256/ormlite/field/FieldType:columnName	Ljava/lang/String;
    //   696: aload_0
    //   697: aload 4
    //   699: putfield 263	com/j256/ormlite/field/FieldType:fieldConfig	Lcom/j256/ormlite/field/DatabaseFieldConfig;
    //   702: aload 4
    //   704: invokevirtual 265	com/j256/ormlite/field/DatabaseFieldConfig:isId	()Z
    //   707: ifeq +291 -> 998
    //   710: aload 4
    //   712: invokevirtual 267	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   715: ifne +11 -> 726
    //   718: aload 4
    //   720: invokevirtual 270	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   723: ifnull +203 -> 926
    //   726: new 142	java/lang/IllegalArgumentException
    //   729: dup
    //   730: new 144	java/lang/StringBuilder
    //   733: dup
    //   734: ldc_w 272
    //   737: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   740: aload_3
    //   741: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   744: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   753: athrow
    //   754: aload 9
    //   756: ifnonnull +799 -> 1555
    //   759: aload 4
    //   761: invokevirtual 234	com/j256/ormlite/field/DatabaseFieldConfig:isForeignCollection	()Z
    //   764: ifne +791 -> 1555
    //   767: ldc_w 274
    //   770: aload 7
    //   772: invokevirtual 216	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   775: ifeq +48 -> 823
    //   778: new 180	java/sql/SQLException
    //   781: dup
    //   782: new 144	java/lang/StringBuilder
    //   785: dup
    //   786: ldc_w 276
    //   789: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   792: aload 7
    //   794: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   797: ldc_w 278
    //   800: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   803: aload_3
    //   804: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   807: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   810: ldc_w 280
    //   813: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   816: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   819: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   822: athrow
    //   823: ldc_w 282
    //   826: aload 7
    //   828: invokevirtual 216	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   831: ifeq +48 -> 879
    //   834: new 180	java/sql/SQLException
    //   837: dup
    //   838: new 144	java/lang/StringBuilder
    //   841: dup
    //   842: ldc_w 276
    //   845: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   848: aload 7
    //   850: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   853: ldc_w 278
    //   856: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   859: aload_3
    //   860: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   863: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: ldc_w 284
    //   869: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   875: invokespecial 183	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   878: athrow
    //   879: new 142	java/lang/IllegalArgumentException
    //   882: dup
    //   883: new 144	java/lang/StringBuilder
    //   886: dup
    //   887: ldc_w 286
    //   890: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   893: aload 7
    //   895: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   898: ldc 207
    //   900: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   903: aload_0
    //   904: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   907: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   910: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   913: athrow
    //   914: aload_0
    //   915: aload 4
    //   917: invokevirtual 259	com/j256/ormlite/field/DatabaseFieldConfig:getColumnName	()Ljava/lang/String;
    //   920: putfield 261	com/j256/ormlite/field/FieldType:columnName	Ljava/lang/String;
    //   923: goto -227 -> 696
    //   926: aload_0
    //   927: iconst_1
    //   928: putfield 288	com/j256/ormlite/field/FieldType:isId	Z
    //   931: aload_0
    //   932: iconst_0
    //   933: putfield 290	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   936: aload_0
    //   937: aconst_null
    //   938: putfield 292	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   941: aload_0
    //   942: getfield 288	com/j256/ormlite/field/FieldType:isId	Z
    //   945: ifeq +210 -> 1155
    //   948: aload 4
    //   950: invokevirtual 132	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   953: ifne +11 -> 964
    //   956: aload 4
    //   958: invokevirtual 135	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   961: ifeq +194 -> 1155
    //   964: new 142	java/lang/IllegalArgumentException
    //   967: dup
    //   968: new 144	java/lang/StringBuilder
    //   971: dup
    //   972: ldc_w 294
    //   975: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   978: aload_3
    //   979: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   982: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: ldc_w 296
    //   988: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   991: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   994: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   997: athrow
    //   998: aload 4
    //   1000: invokevirtual 267	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   1003: ifeq +83 -> 1086
    //   1006: aload 4
    //   1008: invokevirtual 270	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1011: ifnull +31 -> 1042
    //   1014: new 142	java/lang/IllegalArgumentException
    //   1017: dup
    //   1018: new 144	java/lang/StringBuilder
    //   1021: dup
    //   1022: ldc_w 272
    //   1025: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1028: aload_3
    //   1029: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1032: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1035: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1038: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1041: athrow
    //   1042: aload_0
    //   1043: iconst_1
    //   1044: putfield 288	com/j256/ormlite/field/FieldType:isId	Z
    //   1047: aload_0
    //   1048: iconst_1
    //   1049: putfield 290	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1052: aload 6
    //   1054: invokeinterface 301 1 0
    //   1059: ifeq +19 -> 1078
    //   1062: aload_0
    //   1063: aload 6
    //   1065: aload_2
    //   1066: aload_0
    //   1067: invokeinterface 305 3 0
    //   1072: putfield 292	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1075: goto -134 -> 941
    //   1078: aload_0
    //   1079: aconst_null
    //   1080: putfield 292	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1083: goto -142 -> 941
    //   1086: aload 4
    //   1088: invokevirtual 270	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1091: ifnull +46 -> 1137
    //   1094: aload_0
    //   1095: iconst_1
    //   1096: putfield 288	com/j256/ormlite/field/FieldType:isId	Z
    //   1099: aload_0
    //   1100: iconst_1
    //   1101: putfield 290	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1104: aload 4
    //   1106: invokevirtual 270	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1109: astore 14
    //   1111: aload 6
    //   1113: invokeinterface 308 1 0
    //   1118: ifeq +10 -> 1128
    //   1121: aload 14
    //   1123: invokevirtual 313	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   1126: astore 14
    //   1128: aload_0
    //   1129: aload 14
    //   1131: putfield 292	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1134: goto -193 -> 941
    //   1137: aload_0
    //   1138: iconst_0
    //   1139: putfield 288	com/j256/ormlite/field/FieldType:isId	Z
    //   1142: aload_0
    //   1143: iconst_0
    //   1144: putfield 290	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1147: aload_0
    //   1148: aconst_null
    //   1149: putfield 292	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1152: goto -211 -> 941
    //   1155: aload 4
    //   1157: invokevirtual 316	com/j256/ormlite/field/DatabaseFieldConfig:isUseGetSet	()Z
    //   1160: ifeq +70 -> 1230
    //   1163: aload_0
    //   1164: aload_3
    //   1165: iconst_1
    //   1166: invokestatic 320	com/j256/ormlite/field/DatabaseFieldConfig:findGetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   1169: putfield 322	com/j256/ormlite/field/FieldType:fieldGetMethod	Ljava/lang/reflect/Method;
    //   1172: aload_0
    //   1173: aload_3
    //   1174: iconst_1
    //   1175: invokestatic 325	com/j256/ormlite/field/DatabaseFieldConfig:findSetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   1178: putfield 327	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   1181: aload 4
    //   1183: invokevirtual 330	com/j256/ormlite/field/DatabaseFieldConfig:isAllowGeneratedIdInsert	()Z
    //   1186: ifeq +108 -> 1294
    //   1189: aload 4
    //   1191: invokevirtual 267	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   1194: ifne +100 -> 1294
    //   1197: new 142	java/lang/IllegalArgumentException
    //   1200: dup
    //   1201: new 144	java/lang/StringBuilder
    //   1204: dup
    //   1205: ldc 146
    //   1207: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1210: aload_3
    //   1211: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1214: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1217: ldc_w 332
    //   1220: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1223: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1226: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1229: athrow
    //   1230: aload_3
    //   1231: invokevirtual 335	java/lang/reflect/Field:isAccessible	()Z
    //   1234: ifne +11 -> 1245
    //   1237: aload_0
    //   1238: getfield 95	com/j256/ormlite/field/FieldType:field	Ljava/lang/reflect/Field;
    //   1241: iconst_1
    //   1242: invokevirtual 339	java/lang/reflect/Field:setAccessible	(Z)V
    //   1245: aload_0
    //   1246: aconst_null
    //   1247: putfield 322	com/j256/ormlite/field/FieldType:fieldGetMethod	Ljava/lang/reflect/Method;
    //   1250: aload_0
    //   1251: aconst_null
    //   1252: putfield 327	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   1255: goto -74 -> 1181
    //   1258: astore 13
    //   1260: new 142	java/lang/IllegalArgumentException
    //   1263: dup
    //   1264: new 144	java/lang/StringBuilder
    //   1267: dup
    //   1268: ldc_w 341
    //   1271: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1274: aload_3
    //   1275: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1278: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1281: ldc_w 343
    //   1284: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1287: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1290: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1293: athrow
    //   1294: aload 4
    //   1296: invokevirtual 135	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   1299: ifeq +44 -> 1343
    //   1302: aload 4
    //   1304: invokevirtual 132	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1307: ifne +36 -> 1343
    //   1310: new 142	java/lang/IllegalArgumentException
    //   1313: dup
    //   1314: new 144	java/lang/StringBuilder
    //   1317: dup
    //   1318: ldc 146
    //   1320: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1323: aload_3
    //   1324: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1327: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1330: ldc_w 345
    //   1333: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1336: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1339: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1342: athrow
    //   1343: aload 4
    //   1345: invokevirtual 348	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoCreate	()Z
    //   1348: ifeq +44 -> 1392
    //   1351: aload 4
    //   1353: invokevirtual 132	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1356: ifne +36 -> 1392
    //   1359: new 142	java/lang/IllegalArgumentException
    //   1362: dup
    //   1363: new 144	java/lang/StringBuilder
    //   1366: dup
    //   1367: ldc 146
    //   1369: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1372: aload_3
    //   1373: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1376: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1379: ldc_w 350
    //   1382: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1385: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1388: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1391: athrow
    //   1392: aload 4
    //   1394: invokevirtual 125	com/j256/ormlite/field/DatabaseFieldConfig:getForeignColumnName	()Ljava/lang/String;
    //   1397: ifnull +44 -> 1441
    //   1400: aload 4
    //   1402: invokevirtual 132	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1405: ifne +36 -> 1441
    //   1408: new 142	java/lang/IllegalArgumentException
    //   1411: dup
    //   1412: new 144	java/lang/StringBuilder
    //   1415: dup
    //   1416: ldc 146
    //   1418: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1421: aload_3
    //   1422: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1425: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1428: ldc_w 352
    //   1431: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1434: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1437: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1440: athrow
    //   1441: aload 4
    //   1443: invokevirtual 355	com/j256/ormlite/field/DatabaseFieldConfig:isVersion	()Z
    //   1446: ifeq +51 -> 1497
    //   1449: aload 9
    //   1451: ifnull +13 -> 1464
    //   1454: aload 9
    //   1456: invokeinterface 358 1 0
    //   1461: ifne +36 -> 1497
    //   1464: new 142	java/lang/IllegalArgumentException
    //   1467: dup
    //   1468: new 144	java/lang/StringBuilder
    //   1471: dup
    //   1472: ldc 146
    //   1474: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1477: aload_3
    //   1478: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1481: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1484: ldc_w 360
    //   1487: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1490: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1493: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1496: athrow
    //   1497: aload 4
    //   1499: invokevirtual 364	com/j256/ormlite/field/DatabaseFieldConfig:getMaxForeignAutoRefreshLevel	()I
    //   1502: ifle +44 -> 1546
    //   1505: aload 4
    //   1507: invokevirtual 135	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   1510: ifne +36 -> 1546
    //   1513: new 142	java/lang/IllegalArgumentException
    //   1516: dup
    //   1517: new 144	java/lang/StringBuilder
    //   1520: dup
    //   1521: ldc 146
    //   1523: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1526: aload_3
    //   1527: invokevirtual 128	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1530: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1533: ldc_w 366
    //   1536: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1539: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1542: invokespecial 164	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1545: athrow
    //   1546: aload_0
    //   1547: aload 6
    //   1549: aload 9
    //   1551: invokespecial 370	com/j256/ormlite/field/FieldType:assignDataType	(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V
    //   1554: return
    //   1555: aload 11
    //   1557: astore 12
    //   1559: goto -877 -> 682
    //   1562: aload 8
    //   1564: astore 9
    //   1566: goto -1495 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   159	172	214	java/lang/Exception
    //   172	184	239	java/lang/reflect/InvocationTargetException
    //   172	184	267	java/lang/Exception
    //   292	299	306	java/lang/Exception
    //   1237	1245	1258	java/lang/SecurityException
  }

  private void assignDataType(DatabaseType paramDatabaseType, DataPersister paramDataPersister)
  {
    this.dataPersister = paramDataPersister;
    String str;
    if (paramDataPersister == null)
    {
      if ((!this.fieldConfig.isForeign()) && (!this.fieldConfig.isForeignCollection()))
        throw new SQLException("Data persister for field " + this + " is null but the field is not a foreign or foreignCollection");
    }
    else
    {
      this.fieldConverter = paramDatabaseType.getFieldConverter(paramDataPersister);
      if ((this.isGeneratedId) && (!paramDataPersister.isValidGeneratedType()))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Generated-id field '").append(this.field.getName());
        localStringBuilder.append("' in ").append(this.field.getDeclaringClass().getSimpleName());
        localStringBuilder.append(" can't be type ").append(this.dataPersister.getSqlType());
        localStringBuilder.append(".  Must be one of: ");
        for (DataType localDataType : DataType.values())
        {
          DataPersister localDataPersister = localDataType.getDataPersister();
          if ((localDataPersister != null) && (localDataPersister.isValidGeneratedType()))
            localStringBuilder.append(localDataType).append(' ');
        }
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      if ((this.fieldConfig.isThrowIfNull()) && (!paramDataPersister.isPrimitive()))
        throw new SQLException("Field " + this.field.getName() + " must be a primitive if set with throwIfNull");
      if ((this.isId) && (!paramDataPersister.isAppropriateId()))
        throw new SQLException("Field '" + this.field.getName() + "' is of data type " + paramDataPersister + " which cannot be the ID field");
      this.dataTypeConfigObj = paramDataPersister.makeConfigObject(this);
      str = this.fieldConfig.getDefaultValue();
      if ((str != null) && (!str.equals("")))
        break label404;
      this.defaultValue = null;
    }
    return;
    label404: if (this.isGeneratedId)
      throw new SQLException("Field '" + this.field.getName() + "' cannot be a generatedId and have a default value '" + str + "'");
    this.defaultValue = this.fieldConverter.parseDefaultString(this, str);
  }

  public static FieldType createFieldType(ConnectionSource paramConnectionSource, String paramString, Field paramField, Class<?> paramClass)
  {
    DatabaseFieldConfig localDatabaseFieldConfig = DatabaseFieldConfig.fromField(paramConnectionSource.getDatabaseType(), paramString, paramField);
    if (localDatabaseFieldConfig == null)
      return null;
    return new FieldType(paramConnectionSource, paramString, paramField, localDatabaseFieldConfig, paramClass);
  }

  private FieldType findForeignFieldType(Class<?> paramClass1, Class<?> paramClass2, BaseDaoImpl<?, ?> paramBaseDaoImpl)
  {
    String str = this.fieldConfig.getForeignCollectionForeignFieldName();
    FieldType localFieldType;
    for (localFieldType : paramBaseDaoImpl.getTableInfo().getFieldTypes())
      if ((localFieldType.getType() == paramClass2) && ((str == null) || (localFieldType.getField().getName().equals(str))))
      {
        if ((localFieldType.fieldConfig.isForeign()) || (localFieldType.fieldConfig.isForeignAutoRefresh()))
          break label258;
        throw new SQLException("Foreign collection object " + paramClass1 + " for field '" + this.field.getName() + "' contains a field of class " + paramClass2 + " but it's not foreign");
      }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Foreign collection class ").append(paramClass1.getName());
    localStringBuilder.append(" for field '").append(this.field.getName()).append("' column-name does not contain a foreign field");
    if (str != null)
      localStringBuilder.append(" named '").append(str).append('\'');
    localStringBuilder.append(" of class ").append(paramClass2.getName());
    throw new SQLException(localStringBuilder.toString());
    label258: return localFieldType;
  }

  private boolean isFieldValueDefault(Object paramObject)
  {
    if (paramObject == null)
      return true;
    return paramObject.equals(getJavaDefaultValueDefault());
  }

  public void assignField(Object paramObject1, Object paramObject2, boolean paramBoolean, ObjectCache paramObjectCache)
  {
    FieldType.LevelCounters localLevelCounters;
    Object localObject5;
    if ((this.foreignIdField != null) && (paramObject2 != null))
    {
      Object localObject1 = extractJavaFieldValue(paramObject1);
      if ((localObject1 != null) && (localObject1.equals(paramObject2)))
        return;
      if (!paramBoolean)
      {
        localLevelCounters = (FieldType.LevelCounters)threadLevelCounters.get();
        if (localLevelCounters.autoRefreshLevel == 0)
          localLevelCounters.autoRefreshLevelMax = this.fieldConfig.getMaxForeignAutoRefreshLevel();
        if (localLevelCounters.autoRefreshLevel < localLevelCounters.autoRefreshLevelMax)
          break label162;
        localObject5 = TableInfo.createObject(this.foreignConstructor, this.foreignDao);
        this.foreignIdField.assignField(localObject5, paramObject2, false, paramObjectCache);
      }
    }
    while (true)
    {
      paramObject2 = localObject5;
      if (this.fieldSetMethod == null)
        try
        {
          this.field.set(paramObject1, paramObject2);
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw SqlExceptionUtil.create("Could not assign object '" + paramObject2 + "' to field " + this, localIllegalArgumentException);
          if (this.mappedQueryForId == null)
            this.mappedQueryForId = MappedQueryForId.build(this.connectionSource.getDatabaseType(), ((BaseDaoImpl)this.foreignDao).getTableInfo(), this.foreignIdField);
          localLevelCounters.autoRefreshLevel = (1 + localLevelCounters.autoRefreshLevel);
          try
          {
            localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
          }
          finally
          {
            try
            {
              Object localObject4 = this.mappedQueryForId.execute(localDatabaseConnection, paramObject2, paramObjectCache);
              this.connectionSource.releaseConnection(localDatabaseConnection);
              localLevelCounters.autoRefreshLevel = (-1 + localLevelCounters.autoRefreshLevel);
              localObject5 = localObject4;
            }
            finally
            {
              DatabaseConnection localDatabaseConnection;
              this.connectionSource.releaseConnection(localDatabaseConnection);
            }
            localLevelCounters.autoRefreshLevel = (-1 + localLevelCounters.autoRefreshLevel);
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          label162: throw SqlExceptionUtil.create("Could not assign object '" + paramObject2 + "' to field " + this, localIllegalAccessException);
        }
    }
    try
    {
      this.fieldSetMethod.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (Exception localException)
    {
      throw SqlExceptionUtil.create("Could not call " + this.fieldSetMethod + " on object with '" + paramObject2 + "' for " + this, localException);
    }
  }

  public Object assignIdValue(Object paramObject, Number paramNumber, ObjectCache paramObjectCache)
  {
    Object localObject = this.dataPersister.convertIdNumber(paramNumber);
    if (localObject == null)
      throw new SQLException("Invalid class " + this.dataPersister + " for sequence-id " + this);
    assignField(paramObject, localObject, false, paramObjectCache);
    return localObject;
  }

  public <FT, FID> BaseForeignCollection<FT, FID> buildForeignCollection(FT paramFT, FID paramFID, boolean paramBoolean)
  {
    if (this.foreignFieldType == null)
      return null;
    Dao localDao = this.foreignDao;
    if ((!this.fieldConfig.isForeignCollectionEager()) && (!paramBoolean))
      return new LazyForeignCollection(localDao, paramFT, paramFID, this.foreignFieldType.columnName, this.fieldConfig.getForeignCollectionOrderColumnName());
    FieldType.LevelCounters localLevelCounters = (FieldType.LevelCounters)threadLevelCounters.get();
    if (localLevelCounters.foreignCollectionLevel == 0)
      localLevelCounters.foreignCollectionLevelMax = this.fieldConfig.getForeignCollectionMaxEagerLevel();
    if (localLevelCounters.foreignCollectionLevel >= localLevelCounters.foreignCollectionLevelMax)
      return new LazyForeignCollection(localDao, paramFT, paramFID, this.foreignFieldType.columnName, this.fieldConfig.getForeignCollectionOrderColumnName());
    localLevelCounters.foreignCollectionLevel = (1 + localLevelCounters.foreignCollectionLevel);
    try
    {
      EagerForeignCollection localEagerForeignCollection = new EagerForeignCollection(localDao, paramFT, paramFID, this.foreignFieldType.columnName, this.fieldConfig.getForeignCollectionOrderColumnName());
      return localEagerForeignCollection;
    }
    finally
    {
      localLevelCounters.foreignCollectionLevel = (-1 + localLevelCounters.foreignCollectionLevel);
    }
  }

  public void configDaoInformation(ConnectionSource paramConnectionSource, Class<?> paramClass)
  {
    Object localObject1 = null;
    Class localClass1 = this.field.getType();
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    String str = this.fieldConfig.getForeignColumnName();
    label230: Object localObject4;
    Object localObject5;
    Object localObject6;
    MappedQueryForId localMappedQueryForId2;
    if ((this.fieldConfig.isForeignAutoRefresh()) || (str != null))
    {
      DatabaseTableConfig localDatabaseTableConfig1 = this.fieldConfig.getForeignTableConfig();
      TableInfo localTableInfo2;
      Object localObject2;
      if (localDatabaseTableConfig1 == null)
      {
        BaseDaoImpl localBaseDaoImpl2 = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, localClass1);
        localTableInfo2 = ((BaseDaoImpl)localBaseDaoImpl2).getTableInfo();
        localObject2 = localBaseDaoImpl2;
      }
      TableInfo localTableInfo1;
      for (Object localObject3 = localTableInfo2; str == null; localObject3 = localTableInfo1)
      {
        localFieldType1 = ((TableInfo)localObject3).getIdField();
        if (localFieldType1 != null)
          break label230;
        throw new IllegalArgumentException("Foreign field " + localClass1 + " does not have id field");
        localDatabaseTableConfig1.extractFieldTypes(paramConnectionSource);
        BaseDaoImpl localBaseDaoImpl1 = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, localDatabaseTableConfig1);
        localTableInfo1 = ((BaseDaoImpl)localBaseDaoImpl1).getTableInfo();
        localObject2 = localBaseDaoImpl1;
      }
      FieldType localFieldType1 = ((TableInfo)localObject3).getFieldTypeByColumnName(str);
      if (localFieldType1 == null)
        throw new IllegalArgumentException("Foreign field " + localClass1 + " does not have field named '" + str + "'");
      MappedQueryForId localMappedQueryForId1 = MappedQueryForId.build(localDatabaseType, (TableInfo)localObject3, localFieldType1);
      localObject4 = ((TableInfo)localObject3).getConstructor();
      localObject5 = localObject2;
      localObject6 = localFieldType1;
      localMappedQueryForId2 = localMappedQueryForId1;
    }
    while (true)
    {
      this.mappedQueryForId = localMappedQueryForId2;
      this.foreignConstructor = ((Constructor)localObject4);
      this.foreignFieldType = localObject1;
      this.foreignDao = ((Dao)localObject5);
      this.foreignIdField = ((FieldType)localObject6);
      if (this.foreignIdField != null)
        assignDataType(localDatabaseType, this.foreignIdField.getDataPersister());
      return;
      if (this.fieldConfig.isForeign())
      {
        if ((this.dataPersister != null) && (this.dataPersister.isPrimitive()))
          throw new IllegalArgumentException("Field " + this + " is a primitive class " + localClass1 + " but marked as foreign");
        DatabaseTableConfig localDatabaseTableConfig3 = this.fieldConfig.getForeignTableConfig();
        if (localDatabaseTableConfig3 != null)
          localDatabaseTableConfig3.extractFieldTypes(paramConnectionSource);
        FieldType localFieldType3;
        Constructor localConstructor;
        for (localObject5 = DaoManager.createDao(paramConnectionSource, localDatabaseTableConfig3); ; localObject5 = DaoManager.createDao(paramConnectionSource, localClass1))
        {
          TableInfo localTableInfo3 = ((BaseDaoImpl)localObject5).getTableInfo();
          localFieldType3 = localTableInfo3.getIdField();
          localConstructor = localTableInfo3.getConstructor();
          if (localFieldType3 != null)
            break;
          throw new IllegalArgumentException("Foreign field " + localClass1 + " does not have id field");
        }
        if ((isForeignAutoCreate()) && (!localFieldType3.isGeneratedId()))
          throw new IllegalArgumentException("Field " + this.field.getName() + ", if foreignAutoCreate = true then class " + localClass1.getSimpleName() + " must have id field with generatedId = true");
        localObject4 = localConstructor;
        localObject6 = localFieldType3;
        localMappedQueryForId2 = null;
        localObject1 = null;
      }
      else
      {
        if (this.fieldConfig.isForeignCollection())
        {
          if ((localClass1 != Collection.class) && (!ForeignCollection.class.isAssignableFrom(localClass1)))
            throw new SQLException("Field class for '" + this.field.getName() + "' must be of class " + ForeignCollection.class.getSimpleName() + " or Collection.");
          Type localType = this.field.getGenericType();
          if (!(localType instanceof ParameterizedType))
            throw new SQLException("Field class for '" + this.field.getName() + "' must be a parameterized Collection.");
          Type[] arrayOfType = ((ParameterizedType)localType).getActualTypeArguments();
          if (arrayOfType.length == 0)
            throw new SQLException("Field class for '" + this.field.getName() + "' must be a parameterized Collection with at least 1 type.");
          Class localClass2 = (Class)arrayOfType[0];
          DatabaseTableConfig localDatabaseTableConfig2 = this.fieldConfig.getForeignTableConfig();
          if (localDatabaseTableConfig2 == null);
          for (Dao localDao = DaoManager.createDao(paramConnectionSource, localClass2); ; localDao = DaoManager.createDao(paramConnectionSource, localDatabaseTableConfig2))
          {
            FieldType localFieldType2 = findForeignFieldType(localClass2, paramClass, (BaseDaoImpl)localDao);
            localObject5 = localDao;
            localObject1 = localFieldType2;
            localMappedQueryForId2 = null;
            localObject6 = null;
            localObject4 = null;
            break;
          }
        }
        localMappedQueryForId2 = null;
        localObject5 = null;
        localObject6 = null;
        localObject1 = null;
        localObject4 = null;
      }
    }
  }

  public Object convertJavaFieldToSqlArgValue(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return this.fieldConverter.javaToSqlArg(this, paramObject);
  }

  public Object convertStringToJavaField(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    return this.fieldConverter.resultStringToJava(this, paramString, paramInt);
  }

  public <T> int createWithForeignDao(T paramT)
  {
    return this.foreignDao.create(paramT);
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (paramObject.getClass() != getClass()))
      return false;
    FieldType localFieldType = (FieldType)paramObject;
    return this.field.equals(localFieldType.field);
  }

  public Object extractJavaFieldToSqlArgValue(Object paramObject)
  {
    return convertJavaFieldToSqlArgValue(extractJavaFieldValue(paramObject));
  }

  public Object extractJavaFieldValue(Object paramObject)
  {
    Object localObject = extractRawJavaFieldValue(paramObject);
    if ((this.foreignIdField != null) && (localObject != null))
      localObject = this.foreignIdField.extractRawJavaFieldValue(localObject);
    return localObject;
  }

  public <FV> FV extractRawJavaFieldValue(Object paramObject)
  {
    if (this.fieldGetMethod == null)
      try
      {
        Object localObject2 = this.field.get(paramObject);
        return localObject2;
      }
      catch (Exception localException2)
      {
        throw SqlExceptionUtil.create("Could not get field value for " + this, localException2);
      }
    try
    {
      Object localObject1 = this.fieldGetMethod.invoke(paramObject, new Object[0]);
      return localObject1;
    }
    catch (Exception localException1)
    {
      throw SqlExceptionUtil.create("Could not call " + this.fieldGetMethod + " for " + this, localException1);
    }
  }

  public Object generateId()
  {
    return this.dataPersister.generateId();
  }

  public String getColumnDefinition()
  {
    return this.fieldConfig.getColumnDefinition();
  }

  public String getColumnName()
  {
    return this.columnName;
  }

  public DataPersister getDataPersister()
  {
    return this.dataPersister;
  }

  public Object getDataTypeConfigObj()
  {
    return this.dataTypeConfigObj;
  }

  public Object getDefaultValue()
  {
    return this.defaultValue;
  }

  public Field getField()
  {
    return this.field;
  }

  public String getFieldName()
  {
    return this.field.getName();
  }

  public <FV> FV getFieldValueIfNotDefault(Object paramObject)
  {
    Object localObject = extractJavaFieldValue(paramObject);
    if (isFieldValueDefault(localObject))
      localObject = null;
    return localObject;
  }

  public FieldType getForeignIdField()
  {
    return this.foreignIdField;
  }

  public String getFormat()
  {
    return this.fieldConfig.getFormat();
  }

  public String getGeneratedIdSequence()
  {
    return this.generatedIdSequence;
  }

  public String getIndexName()
  {
    return this.fieldConfig.getIndexName(this.tableName);
  }

  public Object getJavaDefaultValueDefault()
  {
    if (this.field.getType() == Boolean.TYPE)
      return Boolean.valueOf(DEFAULT_VALUE_BOOLEAN);
    if ((this.field.getType() == Byte.TYPE) || (this.field.getType() == Byte.class))
      return Byte.valueOf(DEFAULT_VALUE_BYTE);
    if ((this.field.getType() == Character.TYPE) || (this.field.getType() == Character.class))
      return Character.valueOf(DEFAULT_VALUE_CHAR);
    if ((this.field.getType() == Short.TYPE) || (this.field.getType() == Short.class))
      return Short.valueOf(DEFAULT_VALUE_SHORT);
    if ((this.field.getType() == Integer.TYPE) || (this.field.getType() == Integer.class))
      return Integer.valueOf(DEFAULT_VALUE_INT);
    if ((this.field.getType() == Long.TYPE) || (this.field.getType() == Long.class))
      return Long.valueOf(DEFAULT_VALUE_LONG);
    if ((this.field.getType() == Float.TYPE) || (this.field.getType() == Float.class))
      return Float.valueOf(DEFAULT_VALUE_FLOAT);
    if ((this.field.getType() == Double.TYPE) || (this.field.getType() == Double.class))
      return Double.valueOf(DEFAULT_VALUE_DOUBLE);
    return null;
  }

  public SqlType getSqlType()
  {
    return this.fieldConverter.getSqlType();
  }

  public String getTableName()
  {
    return this.tableName;
  }

  public Class<?> getType()
  {
    return this.field.getType();
  }

  public String getUniqueIndexName()
  {
    return this.fieldConfig.getUniqueIndexName(this.tableName);
  }

  public Enum<?> getUnknownEnumVal()
  {
    return this.fieldConfig.getUnknownEnumValue();
  }

  public int getWidth()
  {
    return this.fieldConfig.getWidth();
  }

  public int hashCode()
  {
    return this.field.hashCode();
  }

  public boolean isAllowGeneratedIdInsert()
  {
    return this.fieldConfig.isAllowGeneratedIdInsert();
  }

  public boolean isArgumentHolderRequired()
  {
    return this.dataPersister.isArgumentHolderRequired();
  }

  public boolean isCanBeNull()
  {
    return this.fieldConfig.isCanBeNull();
  }

  public boolean isComparable()
  {
    if (this.fieldConfig.isForeignCollection())
      return false;
    if (this.dataPersister == null)
      throw new SQLException("Internal error.  Data-persister is not configured for field.  Please post _full_ exception with associated data objects to mailing list: " + this);
    return this.dataPersister.isComparable();
  }

  public boolean isEscapedDefaultValue()
  {
    return this.dataPersister.isEscapedDefaultValue();
  }

  public boolean isEscapedValue()
  {
    return this.dataPersister.isEscapedValue();
  }

  public boolean isForeign()
  {
    return this.fieldConfig.isForeign();
  }

  public boolean isForeignAutoCreate()
  {
    return this.fieldConfig.isForeignAutoCreate();
  }

  public boolean isForeignCollection()
  {
    return this.fieldConfig.isForeignCollection();
  }

  public boolean isGeneratedId()
  {
    return this.isGeneratedId;
  }

  public boolean isGeneratedIdSequence()
  {
    return this.generatedIdSequence != null;
  }

  public boolean isId()
  {
    return this.isId;
  }

  public boolean isObjectsFieldValueDefault(Object paramObject)
  {
    return isFieldValueDefault(extractJavaFieldValue(paramObject));
  }

  public boolean isSelfGeneratedId()
  {
    return this.dataPersister.isSelfGeneratedId();
  }

  public boolean isUnique()
  {
    return this.fieldConfig.isUnique();
  }

  public boolean isUniqueCombo()
  {
    return this.fieldConfig.isUniqueCombo();
  }

  public boolean isVersion()
  {
    return this.fieldConfig.isVersion();
  }

  public Object moveToNextValue(Object paramObject)
  {
    if (this.dataPersister == null)
      return null;
    return this.dataPersister.moveToNextValue(paramObject);
  }

  public <T> T resultToJava(DatabaseResults paramDatabaseResults, Map<String, Integer> paramMap)
  {
    Integer localInteger = (Integer)paramMap.get(this.columnName);
    if (localInteger == null)
    {
      localInteger = Integer.valueOf(paramDatabaseResults.findColumn(this.columnName));
      paramMap.put(this.columnName, localInteger);
    }
    Object localObject = this.fieldConverter.resultToJava(this, paramDatabaseResults, localInteger.intValue());
    if (this.fieldConfig.isForeign())
    {
      if (paramDatabaseResults.wasNull(localInteger.intValue()))
        return null;
    }
    else if (this.dataPersister.isPrimitive())
    {
      if ((this.fieldConfig.isThrowIfNull()) && (paramDatabaseResults.wasNull(localInteger.intValue())))
        throw new SQLException("Results value for primitive field '" + this.field.getName() + "' was an invalid null value");
    }
    else if ((!this.fieldConverter.isStreamType()) && (paramDatabaseResults.wasNull(localInteger.intValue())))
      return null;
    return localObject;
  }

  public String toString()
  {
    return getClass().getSimpleName() + ":name=" + this.field.getName() + ",class=" + this.field.getDeclaringClass().getSimpleName();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.FieldType
 * JD-Core Version:    0.6.2
 */