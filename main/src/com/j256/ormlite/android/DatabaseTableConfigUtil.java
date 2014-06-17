package com.j256.ormlite.android;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

public class DatabaseTableConfigUtil
{
  private static Class<?> a;
  private static Field b;
  private static Class<?> c;
  private static Field d;
  private static Field e;
  private static int f = 0;
  private static final int[] g = a();

  private static DatabaseFieldConfig a(DatabaseType paramDatabaseType, String paramString, Field paramField)
  {
    if (g == null)
      return DatabaseFieldConfig.fromField(paramDatabaseType, paramString, paramField);
    DatabaseField localDatabaseField = (DatabaseField)paramField.getAnnotation(DatabaseField.class);
    if (localDatabaseField != null);
    while (true)
    {
      int i;
      try
      {
        InvocationHandler localInvocationHandler = Proxy.getInvocationHandler(localDatabaseField);
        Class localClass1 = localInvocationHandler.getClass();
        Class localClass2 = a;
        if (localClass1 != localClass2)
        {
          localObject1 = null;
          if (localObject1 == null)
            return DatabaseFieldConfig.fromField(paramDatabaseType, paramString, paramField);
        }
        else
        {
          Object localObject2 = b.get(localInvocationHandler);
          if (localObject2 == null)
          {
            localObject1 = null;
            continue;
          }
          DatabaseFieldConfig localDatabaseFieldConfig = new DatabaseFieldConfig(paramField.getName());
          Object[] arrayOfObject = (Object[])localObject2;
          i = 0;
          if (i < g.length)
          {
            Object localObject3 = e.get(arrayOfObject[i]);
            if (localObject3 == null)
              break label786;
            int j = g[i];
            switch (j)
            {
            default:
              throw new IllegalStateException("Could not find support for DatabaseField number " + j);
            case 1:
              localDatabaseFieldConfig.setColumnName(a((String)localObject3));
              break;
            case 2:
              localDatabaseFieldConfig.setDataType((DataType)localObject3);
              break;
            case 3:
              String str = (String)localObject3;
              if ((str == null) || (str.equals("__ormlite__ no default value string was specified")))
                break;
              localDatabaseFieldConfig.setDefaultValue(str);
              break;
            case 4:
              localDatabaseFieldConfig.setWidth(((Integer)localObject3).intValue());
              break;
            case 5:
              localDatabaseFieldConfig.setCanBeNull(((Boolean)localObject3).booleanValue());
              break;
            case 6:
              localDatabaseFieldConfig.setId(((Boolean)localObject3).booleanValue());
              break;
            case 7:
              localDatabaseFieldConfig.setGeneratedId(((Boolean)localObject3).booleanValue());
              break;
            case 8:
              localDatabaseFieldConfig.setGeneratedIdSequence(a((String)localObject3));
              break;
            case 9:
              localDatabaseFieldConfig.setForeign(((Boolean)localObject3).booleanValue());
              break;
            case 10:
              localDatabaseFieldConfig.setUseGetSet(((Boolean)localObject3).booleanValue());
              break;
            case 11:
              localDatabaseFieldConfig.setUnknownEnumValue(DatabaseFieldConfig.findMatchingEnumVal(paramField, (String)localObject3));
              break;
            case 12:
              localDatabaseFieldConfig.setThrowIfNull(((Boolean)localObject3).booleanValue());
              break;
            case 13:
              localDatabaseFieldConfig.setPersisted(((Boolean)localObject3).booleanValue());
              break;
            case 14:
              localDatabaseFieldConfig.setFormat(a((String)localObject3));
              break;
            case 15:
              localDatabaseFieldConfig.setUnique(((Boolean)localObject3).booleanValue());
              break;
            case 16:
              localDatabaseFieldConfig.setUniqueCombo(((Boolean)localObject3).booleanValue());
              break;
            case 17:
              localDatabaseFieldConfig.setIndex(((Boolean)localObject3).booleanValue());
              break;
            case 18:
              localDatabaseFieldConfig.setUniqueIndex(((Boolean)localObject3).booleanValue());
              break;
            case 19:
              localDatabaseFieldConfig.setIndexName(a((String)localObject3));
              break;
            case 20:
              localDatabaseFieldConfig.setUniqueIndexName(a((String)localObject3));
              break;
            case 21:
              localDatabaseFieldConfig.setForeignAutoRefresh(((Boolean)localObject3).booleanValue());
              break;
            case 22:
              localDatabaseFieldConfig.setMaxForeignAutoRefreshLevel(((Integer)localObject3).intValue());
              break;
            case 23:
              localDatabaseFieldConfig.setPersisterClass((Class)localObject3);
              break;
            case 24:
              localDatabaseFieldConfig.setAllowGeneratedIdInsert(((Boolean)localObject3).booleanValue());
              break;
            case 25:
              localDatabaseFieldConfig.setColumnDefinition(a((String)localObject3));
              break;
            case 26:
              localDatabaseFieldConfig.setForeignAutoCreate(((Boolean)localObject3).booleanValue());
              break;
            case 27:
              localDatabaseFieldConfig.setVersion(((Boolean)localObject3).booleanValue());
              break;
            case 28:
              localDatabaseFieldConfig.setForeignColumnName(a((String)localObject3));
              break;
            }
          }
          localObject1 = localDatabaseFieldConfig;
          continue;
        }
        f = 1 + f;
        return localObject1;
      }
      catch (Exception localException)
      {
      }
      Object localObject1 = null;
      continue;
      label786: i++;
    }
  }

  private static String a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      paramString = null;
    return paramString;
  }

  // ERROR //
  private static int[] a()
  {
    // Byte code:
    //   0: ldc 221
    //   2: invokestatic 225	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: putstatic 56	com/j256/ormlite/android/DatabaseTableConfigUtil:a	Ljava/lang/Class;
    //   8: ldc 227
    //   10: invokestatic 225	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: putstatic 229	com/j256/ormlite/android/DatabaseTableConfigUtil:c	Ljava/lang/Class;
    //   16: ldc 231
    //   18: invokestatic 225	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   21: astore_1
    //   22: ldc 227
    //   24: invokestatic 225	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   27: putstatic 229	com/j256/ormlite/android/DatabaseTableConfigUtil:c	Ljava/lang/Class;
    //   30: getstatic 56	com/j256/ormlite/android/DatabaseTableConfigUtil:a	Ljava/lang/Class;
    //   33: ldc 233
    //   35: invokevirtual 237	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   38: astore 4
    //   40: aload 4
    //   42: putstatic 58	com/j256/ormlite/android/DatabaseTableConfigUtil:b	Ljava/lang/reflect/Field;
    //   45: aload 4
    //   47: iconst_1
    //   48: invokevirtual 240	java/lang/reflect/Field:setAccessible	(Z)V
    //   51: getstatic 229	com/j256/ormlite/android/DatabaseTableConfigUtil:c	Ljava/lang/Class;
    //   54: ldc 242
    //   56: invokevirtual 237	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   59: astore 5
    //   61: aload 5
    //   63: putstatic 244	com/j256/ormlite/android/DatabaseTableConfigUtil:d	Ljava/lang/reflect/Field;
    //   66: aload 5
    //   68: iconst_1
    //   69: invokevirtual 240	java/lang/reflect/Field:setAccessible	(Z)V
    //   72: getstatic 229	com/j256/ormlite/android/DatabaseTableConfigUtil:c	Ljava/lang/Class;
    //   75: ldc 246
    //   77: invokevirtual 237	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   80: astore 6
    //   82: aload 6
    //   84: putstatic 73	com/j256/ormlite/android/DatabaseTableConfigUtil:e	Ljava/lang/reflect/Field;
    //   87: aload 6
    //   89: iconst_1
    //   90: invokevirtual 240	java/lang/reflect/Field:setAccessible	(Z)V
    //   93: ldc 248
    //   95: ldc 250
    //   97: invokevirtual 237	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   100: astore 7
    //   102: aload 7
    //   104: ldc 38
    //   106: invokevirtual 44	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   109: checkcast 38	com/j256/ormlite/field/DatabaseField
    //   112: invokestatic 50	java/lang/reflect/Proxy:getInvocationHandler	(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    //   115: astore 8
    //   117: aload 8
    //   119: invokevirtual 54	java/lang/Object:getClass	()Ljava/lang/Class;
    //   122: getstatic 56	com/j256/ormlite/android/DatabaseTableConfigUtil:a	Ljava/lang/Class;
    //   125: if_acmpeq +14 -> 139
    //   128: aconst_null
    //   129: areturn
    //   130: astore_0
    //   131: aconst_null
    //   132: areturn
    //   133: astore_3
    //   134: aconst_null
    //   135: areturn
    //   136: astore_2
    //   137: aconst_null
    //   138: areturn
    //   139: getstatic 58	com/j256/ormlite/android/DatabaseTableConfigUtil:b	Ljava/lang/reflect/Field;
    //   142: aload 8
    //   144: invokevirtual 62	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   147: astore 10
    //   149: aload 10
    //   151: ifnull +596 -> 747
    //   154: aload 10
    //   156: invokevirtual 54	java/lang/Object:getClass	()Ljava/lang/Class;
    //   159: aload_1
    //   160: if_acmpeq +6 -> 166
    //   163: goto +584 -> 747
    //   166: aload 10
    //   168: checkcast 71	[Ljava/lang/Object;
    //   171: astore 11
    //   173: aload 11
    //   175: arraylength
    //   176: newarray int
    //   178: astore 12
    //   180: iconst_0
    //   181: istore 13
    //   183: iload 13
    //   185: aload 11
    //   187: arraylength
    //   188: if_icmpge +556 -> 744
    //   191: getstatic 244	com/j256/ormlite/android/DatabaseTableConfigUtil:d	Ljava/lang/reflect/Field;
    //   194: aload 11
    //   196: iload 13
    //   198: aaload
    //   199: invokevirtual 62	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   202: checkcast 90	java/lang/String
    //   205: astore 14
    //   207: aload 14
    //   209: ldc 252
    //   211: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   214: ifeq +19 -> 233
    //   217: iconst_1
    //   218: istore 15
    //   220: aload 12
    //   222: iload 13
    //   224: iload 15
    //   226: iastore
    //   227: iinc 13 1
    //   230: goto -47 -> 183
    //   233: aload 14
    //   235: ldc 254
    //   237: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   240: ifeq +9 -> 249
    //   243: iconst_2
    //   244: istore 15
    //   246: goto -26 -> 220
    //   249: aload 14
    //   251: ldc_w 256
    //   254: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   257: ifeq +9 -> 266
    //   260: iconst_3
    //   261: istore 15
    //   263: goto -43 -> 220
    //   266: aload 14
    //   268: ldc_w 258
    //   271: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   274: ifeq +9 -> 283
    //   277: iconst_4
    //   278: istore 15
    //   280: goto -60 -> 220
    //   283: aload 14
    //   285: ldc_w 260
    //   288: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   291: ifeq +9 -> 300
    //   294: iconst_5
    //   295: istore 15
    //   297: goto -77 -> 220
    //   300: aload 14
    //   302: ldc_w 262
    //   305: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   308: ifeq +10 -> 318
    //   311: bipush 6
    //   313: istore 15
    //   315: goto -95 -> 220
    //   318: aload 14
    //   320: ldc_w 264
    //   323: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   326: ifeq +10 -> 336
    //   329: bipush 7
    //   331: istore 15
    //   333: goto -113 -> 220
    //   336: aload 14
    //   338: ldc_w 266
    //   341: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   344: ifeq +10 -> 354
    //   347: bipush 8
    //   349: istore 15
    //   351: goto -131 -> 220
    //   354: aload 14
    //   356: ldc_w 268
    //   359: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   362: ifeq +10 -> 372
    //   365: bipush 9
    //   367: istore 15
    //   369: goto -149 -> 220
    //   372: aload 14
    //   374: ldc_w 270
    //   377: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   380: ifeq +10 -> 390
    //   383: bipush 10
    //   385: istore 15
    //   387: goto -167 -> 220
    //   390: aload 14
    //   392: ldc_w 272
    //   395: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   398: ifeq +10 -> 408
    //   401: bipush 11
    //   403: istore 15
    //   405: goto -185 -> 220
    //   408: aload 14
    //   410: ldc_w 274
    //   413: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   416: ifeq +10 -> 426
    //   419: bipush 12
    //   421: istore 15
    //   423: goto -203 -> 220
    //   426: aload 14
    //   428: ldc_w 276
    //   431: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   434: ifeq +10 -> 444
    //   437: bipush 13
    //   439: istore 15
    //   441: goto -221 -> 220
    //   444: aload 14
    //   446: ldc_w 278
    //   449: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   452: ifeq +10 -> 462
    //   455: bipush 14
    //   457: istore 15
    //   459: goto -239 -> 220
    //   462: aload 14
    //   464: ldc_w 280
    //   467: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   470: ifeq +10 -> 480
    //   473: bipush 15
    //   475: istore 15
    //   477: goto -257 -> 220
    //   480: aload 14
    //   482: ldc_w 282
    //   485: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   488: ifeq +10 -> 498
    //   491: bipush 16
    //   493: istore 15
    //   495: goto -275 -> 220
    //   498: aload 14
    //   500: ldc_w 284
    //   503: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   506: ifeq +10 -> 516
    //   509: bipush 17
    //   511: istore 15
    //   513: goto -293 -> 220
    //   516: aload 14
    //   518: ldc_w 286
    //   521: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   524: ifeq +10 -> 534
    //   527: bipush 18
    //   529: istore 15
    //   531: goto -311 -> 220
    //   534: aload 14
    //   536: ldc_w 288
    //   539: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   542: ifeq +10 -> 552
    //   545: bipush 19
    //   547: istore 15
    //   549: goto -329 -> 220
    //   552: aload 14
    //   554: ldc_w 290
    //   557: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   560: ifeq +10 -> 570
    //   563: bipush 20
    //   565: istore 15
    //   567: goto -347 -> 220
    //   570: aload 14
    //   572: ldc_w 292
    //   575: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   578: ifeq +10 -> 588
    //   581: bipush 21
    //   583: istore 15
    //   585: goto -365 -> 220
    //   588: aload 14
    //   590: ldc_w 294
    //   593: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   596: ifeq +10 -> 606
    //   599: bipush 22
    //   601: istore 15
    //   603: goto -383 -> 220
    //   606: aload 14
    //   608: ldc_w 296
    //   611: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   614: ifeq +10 -> 624
    //   617: bipush 23
    //   619: istore 15
    //   621: goto -401 -> 220
    //   624: aload 14
    //   626: ldc_w 298
    //   629: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   632: ifeq +10 -> 642
    //   635: bipush 24
    //   637: istore 15
    //   639: goto -419 -> 220
    //   642: aload 14
    //   644: ldc_w 300
    //   647: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   650: ifeq +10 -> 660
    //   653: bipush 25
    //   655: istore 15
    //   657: goto -437 -> 220
    //   660: aload 14
    //   662: ldc_w 302
    //   665: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   668: ifeq +10 -> 678
    //   671: bipush 26
    //   673: istore 15
    //   675: goto -455 -> 220
    //   678: aload 14
    //   680: ldc_w 304
    //   683: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   686: ifeq +10 -> 696
    //   689: bipush 27
    //   691: istore 15
    //   693: goto -473 -> 220
    //   696: aload 14
    //   698: ldc_w 306
    //   701: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   704: ifeq +10 -> 714
    //   707: bipush 28
    //   709: istore 15
    //   711: goto -491 -> 220
    //   714: new 75	java/lang/IllegalStateException
    //   717: dup
    //   718: new 77	java/lang/StringBuilder
    //   721: dup
    //   722: ldc_w 308
    //   725: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   728: aload 14
    //   730: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   733: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   736: invokespecial 88	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   739: athrow
    //   740: astore 9
    //   742: aconst_null
    //   743: areturn
    //   744: aload 12
    //   746: areturn
    //   747: aconst_null
    //   748: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	30	130	java/lang/ClassNotFoundException
    //   30	102	133	java/lang/SecurityException
    //   30	102	136	java/lang/NoSuchFieldException
    //   139	149	740	java/lang/IllegalAccessException
    //   154	163	740	java/lang/IllegalAccessException
    //   166	180	740	java/lang/IllegalAccessException
    //   183	217	740	java/lang/IllegalAccessException
    //   220	227	740	java/lang/IllegalAccessException
    //   233	243	740	java/lang/IllegalAccessException
    //   249	260	740	java/lang/IllegalAccessException
    //   266	277	740	java/lang/IllegalAccessException
    //   283	294	740	java/lang/IllegalAccessException
    //   300	311	740	java/lang/IllegalAccessException
    //   318	329	740	java/lang/IllegalAccessException
    //   336	347	740	java/lang/IllegalAccessException
    //   354	365	740	java/lang/IllegalAccessException
    //   372	383	740	java/lang/IllegalAccessException
    //   390	401	740	java/lang/IllegalAccessException
    //   408	419	740	java/lang/IllegalAccessException
    //   426	437	740	java/lang/IllegalAccessException
    //   444	455	740	java/lang/IllegalAccessException
    //   462	473	740	java/lang/IllegalAccessException
    //   480	491	740	java/lang/IllegalAccessException
    //   498	509	740	java/lang/IllegalAccessException
    //   516	527	740	java/lang/IllegalAccessException
    //   534	545	740	java/lang/IllegalAccessException
    //   552	563	740	java/lang/IllegalAccessException
    //   570	581	740	java/lang/IllegalAccessException
    //   588	599	740	java/lang/IllegalAccessException
    //   606	617	740	java/lang/IllegalAccessException
    //   624	635	740	java/lang/IllegalAccessException
    //   642	653	740	java/lang/IllegalAccessException
    //   660	671	740	java/lang/IllegalAccessException
    //   678	689	740	java/lang/IllegalAccessException
    //   696	707	740	java/lang/IllegalAccessException
    //   714	740	740	java/lang/IllegalAccessException
  }

  public static <T> DatabaseTableConfig<T> fromClass(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    String str = DatabaseTableConfig.extractTableName(paramClass);
    ArrayList localArrayList = new ArrayList();
    for (Object localObject = paramClass; localObject != null; localObject = ((Class)localObject).getSuperclass())
    {
      Field[] arrayOfField = ((Class)localObject).getDeclaredFields();
      int i = arrayOfField.length;
      for (int j = 0; j < i; j++)
      {
        DatabaseFieldConfig localDatabaseFieldConfig = a(localDatabaseType, str, arrayOfField[j]);
        if ((localDatabaseFieldConfig != null) && (localDatabaseFieldConfig.isPersisted()))
          localArrayList.add(localDatabaseFieldConfig);
      }
    }
    if (localArrayList.size() == 0)
      return null;
    return new DatabaseTableConfig(paramClass, str, localArrayList);
  }

  public static int getWorkedC()
  {
    return f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.DatabaseTableConfigUtil
 * JD-Core Version:    0.6.2
 */