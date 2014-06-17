package com.alipay.pushsdk.push.d;

import com.alipay.pushsdk.push.j;

public class b
  implements c
{
  private static final String a = com.alipay.pushsdk.c.a.c.a(b.class);
  private final j b;

  public b(j paramj)
  {
    this.b = paramj;
  }

  // ERROR //
  public final void a(com.alipay.pushsdk.push.c.a parama)
  {
    // Byte code:
    //   0: new 32	com/alipay/pushsdk/push/f
    //   3: dup
    //   4: iconst_4
    //   5: invokespecial 35	com/alipay/pushsdk/push/f:<init>	(I)V
    //   8: aload_1
    //   9: invokeinterface 40 2 0
    //   14: ifeq +300 -> 314
    //   17: invokestatic 46	java/lang/System:currentTimeMillis	()J
    //   20: invokestatic 51	com/alipay/pushsdk/push/a/o:a	(J)V
    //   23: aload_0
    //   24: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   27: invokestatic 46	java/lang/System:currentTimeMillis	()J
    //   30: invokevirtual 55	com/alipay/pushsdk/push/j:b	(J)V
    //   33: iconst_3
    //   34: getstatic 19	com/alipay/pushsdk/push/d/b:a	Ljava/lang/String;
    //   37: ldc 57
    //   39: invokestatic 60	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   42: new 62	com/alipay/pushsdk/c/b
    //   45: dup
    //   46: aload_0
    //   47: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   50: invokevirtual 65	com/alipay/pushsdk/push/j:a	()Landroid/content/Context;
    //   53: invokespecial 68	com/alipay/pushsdk/c/b:<init>	(Landroid/content/Context;)V
    //   56: astore_2
    //   57: aload_1
    //   58: invokevirtual 74	com/alipay/pushsdk/push/c/a:h	()Ljava/lang/String;
    //   61: astore_3
    //   62: aconst_null
    //   63: astore 4
    //   65: aload_3
    //   66: ifnull +65 -> 131
    //   69: aload_3
    //   70: invokevirtual 80	java/lang/String:length	()I
    //   73: istore 13
    //   75: aconst_null
    //   76: astore 4
    //   78: iload 13
    //   80: ifle +51 -> 131
    //   83: new 82	org/json/JSONObject
    //   86: dup
    //   87: aload_3
    //   88: invokespecial 85	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   91: iconst_0
    //   92: invokestatic 88	com/alipay/pushsdk/c/b:a	(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;
    //   95: astore 4
    //   97: aload_2
    //   98: aload 4
    //   100: new 90	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   107: aload_0
    //   108: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   111: invokevirtual 65	com/alipay/pushsdk/push/j:a	()Landroid/content/Context;
    //   114: invokevirtual 96	android/content/Context:getPackageName	()Ljava/lang/String;
    //   117: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc 102
    //   122: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokevirtual 108	com/alipay/pushsdk/c/b:a	(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    //   131: new 110	com/alipay/pushsdk/push/o
    //   134: dup
    //   135: aload_0
    //   136: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   139: invokevirtual 65	com/alipay/pushsdk/push/j:a	()Landroid/content/Context;
    //   142: invokespecial 111	com/alipay/pushsdk/push/o:<init>	(Landroid/content/Context;)V
    //   145: invokevirtual 114	com/alipay/pushsdk/push/o:a	()Z
    //   148: ifeq +166 -> 314
    //   151: aload_0
    //   152: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   155: invokevirtual 117	com/alipay/pushsdk/push/j:j	()I
    //   158: invokestatic 122	com/alipay/pushsdk/push/c/c:a	(I)Lcom/alipay/pushsdk/push/c/a;
    //   161: astore 6
    //   163: aload 6
    //   165: iconst_4
    //   166: invokevirtual 124	com/alipay/pushsdk/push/c/a:a	(I)V
    //   169: aload 6
    //   171: iconst_1
    //   172: invokevirtual 126	com/alipay/pushsdk/push/c/a:b	(I)V
    //   175: new 82	org/json/JSONObject
    //   178: dup
    //   179: invokespecial 127	org/json/JSONObject:<init>	()V
    //   182: astore 7
    //   184: aload 4
    //   186: invokevirtual 133	com/alipay/pushsdk/data/NotifierInfo:g	()Lcom/alipay/pushsdk/data/b;
    //   189: astore 9
    //   191: aload_0
    //   192: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   195: invokevirtual 136	com/alipay/pushsdk/push/j:e	()Ljava/lang/String;
    //   198: invokevirtual 80	java/lang/String:length	()I
    //   201: ifle +130 -> 331
    //   204: aload 7
    //   206: ldc 138
    //   208: aload_0
    //   209: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   212: invokevirtual 136	com/alipay/pushsdk/push/j:e	()Ljava/lang/String;
    //   215: invokevirtual 142	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   218: pop
    //   219: aload 7
    //   221: ldc 144
    //   223: aload 9
    //   225: invokevirtual 148	com/alipay/pushsdk/data/b:a	()Ljava/lang/String;
    //   228: invokevirtual 142	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   231: pop
    //   232: aload 6
    //   234: aload 7
    //   236: invokevirtual 149	org/json/JSONObject:toString	()Ljava/lang/String;
    //   239: invokevirtual 151	com/alipay/pushsdk/push/c/a:a	(Ljava/lang/String;)V
    //   242: iconst_3
    //   243: getstatic 19	com/alipay/pushsdk/push/d/b:a	Ljava/lang/String;
    //   246: new 90	java/lang/StringBuilder
    //   249: dup
    //   250: ldc 153
    //   252: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   255: aload 7
    //   257: invokevirtual 149	org/json/JSONObject:toString	()Ljava/lang/String;
    //   260: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokestatic 60	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   269: aload_0
    //   270: getfield 25	com/alipay/pushsdk/push/d/b:b	Lcom/alipay/pushsdk/push/j;
    //   273: invokevirtual 158	com/alipay/pushsdk/push/j:d	()Lcom/alipay/pushsdk/push/a/m;
    //   276: aload 6
    //   278: invokevirtual 162	com/alipay/pushsdk/push/a/m:a	(Lcom/alipay/pushsdk/push/c/a;)V
    //   281: getstatic 167	com/alipay/pushsdk/c/a/d:u	Ljava/lang/String;
    //   284: getstatic 170	com/alipay/pushsdk/c/a/d:E	Ljava/lang/String;
    //   287: invokestatic 46	java/lang/System:currentTimeMillis	()J
    //   290: getstatic 173	com/alipay/pushsdk/c/a/d:t	Ljava/lang/String;
    //   293: ldc2_w 174
    //   296: invokestatic 46	java/lang/System:currentTimeMillis	()J
    //   299: ladd
    //   300: ldc 177
    //   302: invokestatic 180	com/alipay/pushsdk/c/a/d:a	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    //   305: ldc 182
    //   307: ldc 184
    //   309: ldc 186
    //   311: invokestatic 191	com/alipay/pushsdk/c/a/e:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   314: return
    //   315: astore 14
    //   317: aload 14
    //   319: invokevirtual 194	org/json/JSONException:printStackTrace	()V
    //   322: return
    //   323: astore 5
    //   325: aload 5
    //   327: invokevirtual 195	java/lang/Exception:printStackTrace	()V
    //   330: return
    //   331: aload 7
    //   333: ldc 138
    //   335: ldc 197
    //   337: invokevirtual 142	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   340: pop
    //   341: goto -122 -> 219
    //   344: astore 8
    //   346: aload 8
    //   348: invokevirtual 195	java/lang/Exception:printStackTrace	()V
    //   351: goto -70 -> 281
    //
    // Exception table:
    //   from	to	target	type
    //   83	131	315	org/json/JSONException
    //   151	175	323	java/lang/Exception
    //   175	219	344	java/lang/Exception
    //   219	281	344	java/lang/Exception
    //   331	341	344	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d.b
 * JD-Core Version:    0.6.2
 */