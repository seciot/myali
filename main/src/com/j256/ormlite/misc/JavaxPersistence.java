package com.j256.ormlite.misc;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public class JavaxPersistence
{
  // ERROR //
  public static com.j256.ormlite.field.DatabaseFieldConfig createFieldConfig(com.j256.ormlite.db.DatabaseType paramDatabaseType, java.lang.reflect.Field paramField)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: aconst_null
    //   8: astore 5
    //   10: aconst_null
    //   11: astore 6
    //   13: aconst_null
    //   14: astore 7
    //   16: aconst_null
    //   17: astore 8
    //   19: aconst_null
    //   20: astore 9
    //   22: aload_1
    //   23: invokevirtual 18	java/lang/reflect/Field:getAnnotations	()[Ljava/lang/annotation/Annotation;
    //   26: astore 10
    //   28: aload 10
    //   30: arraylength
    //   31: istore 11
    //   33: iconst_0
    //   34: istore 12
    //   36: iload 12
    //   38: iload 11
    //   40: if_icmpge +159 -> 199
    //   43: aload 10
    //   45: iload 12
    //   47: aaload
    //   48: astore 30
    //   50: aload 30
    //   52: invokeinterface 24 1 0
    //   57: astore 31
    //   59: aload 31
    //   61: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   64: ldc 32
    //   66: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +6 -> 75
    //   72: aload 30
    //   74: astore_2
    //   75: aload 31
    //   77: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   80: ldc 40
    //   82: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   85: ifeq +6 -> 91
    //   88: aload 30
    //   90: astore_3
    //   91: aload 31
    //   93: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   96: ldc 42
    //   98: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   101: ifeq +7 -> 108
    //   104: aload 30
    //   106: astore 4
    //   108: aload 31
    //   110: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   113: ldc 44
    //   115: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   118: ifeq +7 -> 125
    //   121: aload 30
    //   123: astore 5
    //   125: aload 31
    //   127: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   130: ldc 46
    //   132: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifeq +7 -> 142
    //   138: aload 30
    //   140: astore 6
    //   142: aload 31
    //   144: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   147: ldc 48
    //   149: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   152: ifeq +7 -> 159
    //   155: aload 30
    //   157: astore 7
    //   159: aload 31
    //   161: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   164: ldc 50
    //   166: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   169: ifeq +7 -> 176
    //   172: aload 30
    //   174: astore 8
    //   176: aload 31
    //   178: invokevirtual 30	java/lang/Class:getName	()Ljava/lang/String;
    //   181: ldc 52
    //   183: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   186: ifeq +831 -> 1017
    //   189: iinc 12 1
    //   192: aload 30
    //   194: astore 9
    //   196: goto -160 -> 36
    //   199: aload_2
    //   200: ifnonnull +29 -> 229
    //   203: aload_3
    //   204: ifnonnull +25 -> 229
    //   207: aload 5
    //   209: ifnonnull +20 -> 229
    //   212: aload 6
    //   214: ifnonnull +15 -> 229
    //   217: aload 8
    //   219: ifnonnull +10 -> 229
    //   222: aload 9
    //   224: ifnonnull +5 -> 229
    //   227: aconst_null
    //   228: areturn
    //   229: new 54	com/j256/ormlite/field/DatabaseFieldConfig
    //   232: dup
    //   233: invokespecial 55	com/j256/ormlite/field/DatabaseFieldConfig:<init>	()V
    //   236: astore 13
    //   238: aload_1
    //   239: invokevirtual 56	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   242: astore 14
    //   244: aload_0
    //   245: invokeinterface 62 1 0
    //   250: ifeq +10 -> 260
    //   253: aload 14
    //   255: invokevirtual 65	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   258: astore 14
    //   260: aload 13
    //   262: aload 14
    //   264: invokevirtual 69	com/j256/ormlite/field/DatabaseFieldConfig:setFieldName	(Ljava/lang/String;)V
    //   267: aload_2
    //   268: ifnull +209 -> 477
    //   271: aload_2
    //   272: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   275: ldc 74
    //   277: iconst_0
    //   278: anewarray 26	java/lang/Class
    //   281: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   284: aload_2
    //   285: iconst_0
    //   286: anewarray 4	java/lang/Object
    //   289: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   292: checkcast 34	java/lang/String
    //   295: astore 26
    //   297: aload 26
    //   299: ifnull +18 -> 317
    //   302: aload 26
    //   304: invokevirtual 88	java/lang/String:length	()I
    //   307: ifle +10 -> 317
    //   310: aload 13
    //   312: aload 26
    //   314: invokevirtual 91	com/j256/ormlite/field/DatabaseFieldConfig:setColumnName	(Ljava/lang/String;)V
    //   317: aload_2
    //   318: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   321: ldc 93
    //   323: iconst_0
    //   324: anewarray 26	java/lang/Class
    //   327: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   330: aload_2
    //   331: iconst_0
    //   332: anewarray 4	java/lang/Object
    //   335: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   338: checkcast 34	java/lang/String
    //   341: astore 27
    //   343: aload 27
    //   345: ifnull +18 -> 363
    //   348: aload 27
    //   350: invokevirtual 88	java/lang/String:length	()I
    //   353: ifle +10 -> 363
    //   356: aload 13
    //   358: aload 27
    //   360: invokevirtual 96	com/j256/ormlite/field/DatabaseFieldConfig:setColumnDefinition	(Ljava/lang/String;)V
    //   363: aload 13
    //   365: aload_2
    //   366: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   369: ldc 97
    //   371: iconst_0
    //   372: anewarray 26	java/lang/Class
    //   375: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   378: aload_2
    //   379: iconst_0
    //   380: anewarray 4	java/lang/Object
    //   383: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   386: checkcast 99	java/lang/Integer
    //   389: invokevirtual 102	java/lang/Integer:intValue	()I
    //   392: invokevirtual 106	com/j256/ormlite/field/DatabaseFieldConfig:setWidth	(I)V
    //   395: aload_2
    //   396: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   399: ldc 108
    //   401: iconst_0
    //   402: anewarray 26	java/lang/Class
    //   405: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   408: aload_2
    //   409: iconst_0
    //   410: anewarray 4	java/lang/Object
    //   413: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   416: checkcast 110	java/lang/Boolean
    //   419: astore 28
    //   421: aload 28
    //   423: ifnull +13 -> 436
    //   426: aload 13
    //   428: aload 28
    //   430: invokevirtual 113	java/lang/Boolean:booleanValue	()Z
    //   433: invokevirtual 117	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   436: aload_2
    //   437: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   440: ldc 119
    //   442: iconst_0
    //   443: anewarray 26	java/lang/Class
    //   446: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   449: aload_2
    //   450: iconst_0
    //   451: anewarray 4	java/lang/Object
    //   454: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   457: checkcast 110	java/lang/Boolean
    //   460: astore 29
    //   462: aload 29
    //   464: ifnull +13 -> 477
    //   467: aload 13
    //   469: aload 29
    //   471: invokevirtual 113	java/lang/Boolean:booleanValue	()Z
    //   474: invokevirtual 122	com/j256/ormlite/field/DatabaseFieldConfig:setUnique	(Z)V
    //   477: aload_3
    //   478: ifnull +14 -> 492
    //   481: aload 4
    //   483: ifnonnull +288 -> 771
    //   486: aload 13
    //   488: iconst_1
    //   489: invokevirtual 125	com/j256/ormlite/field/DatabaseFieldConfig:setId	(Z)V
    //   492: aload 5
    //   494: ifnonnull +8 -> 502
    //   497: aload 6
    //   499: ifnull +135 -> 634
    //   502: ldc 127
    //   504: aload_1
    //   505: invokevirtual 130	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   508: invokevirtual 134	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   511: ifne +15 -> 526
    //   514: ldc 136
    //   516: aload_1
    //   517: invokevirtual 130	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   520: invokevirtual 134	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   523: ifeq +281 -> 804
    //   526: aload 13
    //   528: iconst_1
    //   529: invokevirtual 139	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollection	(Z)V
    //   532: aload 7
    //   534: ifnull +100 -> 634
    //   537: aload 7
    //   539: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   542: ldc 74
    //   544: iconst_0
    //   545: anewarray 26	java/lang/Class
    //   548: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   551: aload 7
    //   553: iconst_0
    //   554: anewarray 4	java/lang/Object
    //   557: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   560: checkcast 34	java/lang/String
    //   563: astore 19
    //   565: aload 19
    //   567: ifnull +18 -> 585
    //   570: aload 19
    //   572: invokevirtual 88	java/lang/String:length	()I
    //   575: ifle +10 -> 585
    //   578: aload 13
    //   580: aload 19
    //   582: invokevirtual 142	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollectionColumnName	(Ljava/lang/String;)V
    //   585: aload 7
    //   587: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   590: ldc 144
    //   592: iconst_0
    //   593: anewarray 26	java/lang/Class
    //   596: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   599: aload 7
    //   601: iconst_0
    //   602: anewarray 4	java/lang/Object
    //   605: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   608: astore 20
    //   610: aload 20
    //   612: ifnull +22 -> 634
    //   615: aload 20
    //   617: invokevirtual 147	java/lang/Object:toString	()Ljava/lang/String;
    //   620: ldc 149
    //   622: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   625: ifeq +9 -> 634
    //   628: aload 13
    //   630: iconst_1
    //   631: invokevirtual 152	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollectionEager	(Z)V
    //   634: aload 8
    //   636: ifnull +54 -> 690
    //   639: aload 8
    //   641: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   644: ldc 154
    //   646: iconst_0
    //   647: anewarray 26	java/lang/Class
    //   650: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   653: aload 8
    //   655: iconst_0
    //   656: anewarray 4	java/lang/Object
    //   659: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   662: astore 17
    //   664: aload 17
    //   666: ifnull +310 -> 976
    //   669: aload 17
    //   671: invokevirtual 147	java/lang/Object:toString	()Ljava/lang/String;
    //   674: ldc 156
    //   676: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   679: ifeq +297 -> 976
    //   682: aload 13
    //   684: getstatic 162	com/j256/ormlite/field/DataType:ENUM_STRING	Lcom/j256/ormlite/field/DataType;
    //   687: invokevirtual 166	com/j256/ormlite/field/DatabaseFieldConfig:setDataType	(Lcom/j256/ormlite/field/DataType;)V
    //   690: aload 9
    //   692: ifnull +9 -> 701
    //   695: aload 13
    //   697: iconst_1
    //   698: invokevirtual 169	com/j256/ormlite/field/DatabaseFieldConfig:setVersion	(Z)V
    //   701: aload 13
    //   703: invokevirtual 173	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   706: ifnonnull +12 -> 718
    //   709: aload 13
    //   711: aload_1
    //   712: invokestatic 179	com/j256/ormlite/field/DataPersisterManager:lookupForField	(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    //   715: invokevirtual 183	com/j256/ormlite/field/DatabaseFieldConfig:setDataPersister	(Lcom/j256/ormlite/field/DataPersister;)V
    //   718: aload_1
    //   719: iconst_0
    //   720: invokestatic 187	com/j256/ormlite/field/DatabaseFieldConfig:findGetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   723: ifnull +288 -> 1011
    //   726: aload_1
    //   727: iconst_0
    //   728: invokestatic 190	com/j256/ormlite/field/DatabaseFieldConfig:findSetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   731: ifnull +280 -> 1011
    //   734: iconst_1
    //   735: istore 15
    //   737: aload 13
    //   739: iload 15
    //   741: invokevirtual 193	com/j256/ormlite/field/DatabaseFieldConfig:setUseGetSet	(Z)V
    //   744: aload 13
    //   746: areturn
    //   747: astore 25
    //   749: new 195	java/lang/StringBuilder
    //   752: dup
    //   753: ldc 197
    //   755: invokespecial 199	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   758: aload_1
    //   759: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   762: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   765: aload 25
    //   767: invokestatic 210	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   770: athrow
    //   771: aload 13
    //   773: iconst_1
    //   774: invokevirtual 213	com/j256/ormlite/field/DatabaseFieldConfig:setGeneratedId	(Z)V
    //   777: goto -285 -> 492
    //   780: astore 18
    //   782: new 195	java/lang/StringBuilder
    //   785: dup
    //   786: ldc 215
    //   788: invokespecial 199	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   791: aload_1
    //   792: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   795: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   798: aload 18
    //   800: invokestatic 210	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   803: athrow
    //   804: aload 13
    //   806: iconst_1
    //   807: invokevirtual 218	com/j256/ormlite/field/DatabaseFieldConfig:setForeign	(Z)V
    //   810: aload 7
    //   812: ifnull -178 -> 634
    //   815: aload 7
    //   817: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   820: ldc 74
    //   822: iconst_0
    //   823: anewarray 26	java/lang/Class
    //   826: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   829: aload 7
    //   831: iconst_0
    //   832: anewarray 4	java/lang/Object
    //   835: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   838: checkcast 34	java/lang/String
    //   841: astore 22
    //   843: aload 22
    //   845: ifnull +18 -> 863
    //   848: aload 22
    //   850: invokevirtual 88	java/lang/String:length	()I
    //   853: ifle +10 -> 863
    //   856: aload 13
    //   858: aload 22
    //   860: invokevirtual 91	com/j256/ormlite/field/DatabaseFieldConfig:setColumnName	(Ljava/lang/String;)V
    //   863: aload 7
    //   865: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   868: ldc 108
    //   870: iconst_0
    //   871: anewarray 26	java/lang/Class
    //   874: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   877: aload 7
    //   879: iconst_0
    //   880: anewarray 4	java/lang/Object
    //   883: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   886: checkcast 110	java/lang/Boolean
    //   889: astore 23
    //   891: aload 23
    //   893: ifnull +13 -> 906
    //   896: aload 13
    //   898: aload 23
    //   900: invokevirtual 113	java/lang/Boolean:booleanValue	()Z
    //   903: invokevirtual 117	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   906: aload 7
    //   908: invokevirtual 72	java/lang/Object:getClass	()Ljava/lang/Class;
    //   911: ldc 119
    //   913: iconst_0
    //   914: anewarray 26	java/lang/Class
    //   917: invokevirtual 78	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   920: aload 7
    //   922: iconst_0
    //   923: anewarray 4	java/lang/Object
    //   926: invokevirtual 84	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   929: checkcast 110	java/lang/Boolean
    //   932: astore 24
    //   934: aload 24
    //   936: ifnull -302 -> 634
    //   939: aload 13
    //   941: aload 24
    //   943: invokevirtual 113	java/lang/Boolean:booleanValue	()Z
    //   946: invokevirtual 122	com/j256/ormlite/field/DatabaseFieldConfig:setUnique	(Z)V
    //   949: goto -315 -> 634
    //   952: astore 21
    //   954: new 195	java/lang/StringBuilder
    //   957: dup
    //   958: ldc 215
    //   960: invokespecial 199	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   963: aload_1
    //   964: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   967: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   970: aload 21
    //   972: invokestatic 210	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   975: athrow
    //   976: aload 13
    //   978: getstatic 221	com/j256/ormlite/field/DataType:ENUM_INTEGER	Lcom/j256/ormlite/field/DataType;
    //   981: invokevirtual 166	com/j256/ormlite/field/DatabaseFieldConfig:setDataType	(Lcom/j256/ormlite/field/DataType;)V
    //   984: goto -294 -> 690
    //   987: astore 16
    //   989: new 195	java/lang/StringBuilder
    //   992: dup
    //   993: ldc 223
    //   995: invokespecial 199	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   998: aload_1
    //   999: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1002: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1005: aload 16
    //   1007: invokestatic 210	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   1010: athrow
    //   1011: iconst_0
    //   1012: istore 15
    //   1014: goto -277 -> 737
    //   1017: aload 9
    //   1019: astore 30
    //   1021: goto -832 -> 189
    //
    // Exception table:
    //   from	to	target	type
    //   271	297	747	java/lang/Exception
    //   302	317	747	java/lang/Exception
    //   317	343	747	java/lang/Exception
    //   348	363	747	java/lang/Exception
    //   363	421	747	java/lang/Exception
    //   426	436	747	java/lang/Exception
    //   436	462	747	java/lang/Exception
    //   467	477	747	java/lang/Exception
    //   537	565	780	java/lang/Exception
    //   570	585	780	java/lang/Exception
    //   585	610	780	java/lang/Exception
    //   615	634	780	java/lang/Exception
    //   815	843	952	java/lang/Exception
    //   848	863	952	java/lang/Exception
    //   863	891	952	java/lang/Exception
    //   896	906	952	java/lang/Exception
    //   906	934	952	java/lang/Exception
    //   939	949	952	java/lang/Exception
    //   639	664	987	java/lang/Exception
    //   669	690	987	java/lang/Exception
    //   976	984	987	java/lang/Exception
  }

  public static String getEntityName(Class<?> paramClass)
  {
    Annotation[] arrayOfAnnotation = paramClass.getAnnotations();
    int i = arrayOfAnnotation.length;
    int j = 0;
    Object localObject1 = null;
    Object localObject2;
    if (j < i)
    {
      localObject2 = arrayOfAnnotation[j];
      if (!((Annotation)localObject2).annotationType().getName().equals("javax.persistence.Entity"))
        break label137;
    }
    while (true)
    {
      j++;
      localObject1 = localObject2;
      break;
      String str;
      if (localObject1 == null)
        str = null;
      while (true)
      {
        return str;
        try
        {
          str = (String)localObject1.getClass().getMethod("name", new Class[0]).invoke(localObject1, new Object[0]);
          if (str != null)
          {
            int k = str.length();
            if (k > 0);
          }
          else
          {
            return null;
          }
        }
        catch (Exception localException)
        {
          throw new IllegalStateException("Could not get entity name from class " + paramClass, localException);
        }
      }
      label137: localObject2 = localObject1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.misc.JavaxPersistence
 * JD-Core Version:    0.6.2
 */