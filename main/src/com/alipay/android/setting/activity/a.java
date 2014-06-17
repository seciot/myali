package com.alipay.android.setting.activity;

import android.content.BroadcastReceiver;

final class a extends BroadcastReceiver
{
  a(BaseSettingActivity paramBaseSettingActivity)
  {
  }

  // ERROR //
  public final void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_2
    //   3: invokevirtual 23	android/content/Intent:getAction	()Ljava/lang/String;
    //   6: ldc 25
    //   8: invokestatic 31	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   11: ifeq +46 -> 57
    //   14: aload_2
    //   15: ldc 33
    //   17: invokevirtual 37	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload 4
    //   24: invokestatic 41	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   27: ifeq +31 -> 58
    //   30: aload_0
    //   31: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   34: invokevirtual 46	com/alipay/android/setting/activity/BaseSettingActivity:dismissProgressDialog	()V
    //   37: aload_0
    //   38: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   41: getstatic 52	com/alipay/android/app/R$drawable:av	I
    //   44: getstatic 57	com/alipay/android/app/R$string:Q	I
    //   47: invokestatic 62	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   50: aload_0
    //   51: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   54: invokevirtual 65	com/alipay/android/setting/activity/BaseSettingActivity:finish	()V
    //   57: return
    //   58: aload_2
    //   59: ldc 67
    //   61: iconst_0
    //   62: invokevirtual 71	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   65: istore 5
    //   67: new 73	org/json/JSONObject
    //   70: dup
    //   71: aload 4
    //   73: invokespecial 76	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   76: ldc 78
    //   78: invokevirtual 82	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   81: astore 11
    //   83: aload 11
    //   85: ifnull +147 -> 232
    //   88: aload 11
    //   90: ldc 84
    //   92: iconst_0
    //   93: invokevirtual 87	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   96: sipush 1000
    //   99: if_icmpne +133 -> 232
    //   102: aload_0
    //   103: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   106: pop
    //   107: aload 11
    //   109: ldc 89
    //   111: invokevirtual 82	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   114: invokestatic 92	com/alipay/android/setting/activity/BaseSettingActivity:a	(Lorg/json/JSONObject;)V
    //   117: new 19	android/content/Intent
    //   120: dup
    //   121: aload_0
    //   122: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   125: ldc 94
    //   127: invokespecial 97	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   130: astore 20
    //   132: aload 20
    //   134: ldc 99
    //   136: bipush 6
    //   138: invokevirtual 103	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   141: pop
    //   142: aload_0
    //   143: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   146: aload 20
    //   148: invokevirtual 107	com/alipay/android/setting/activity/BaseSettingActivity:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   151: pop
    //   152: return
    //   153: astore 6
    //   155: aload 4
    //   157: astore 7
    //   159: aconst_null
    //   160: astore 8
    //   162: aload 6
    //   164: astore 9
    //   166: aload_0
    //   167: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   170: invokevirtual 46	com/alipay/android/setting/activity/BaseSettingActivity:dismissProgressDialog	()V
    //   173: aload_0
    //   174: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   177: getstatic 52	com/alipay/android/app/R$drawable:av	I
    //   180: getstatic 57	com/alipay/android/app/R$string:Q	I
    //   183: invokestatic 62	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   186: aload 9
    //   188: invokevirtual 110	java/lang/Exception:printStackTrace	()V
    //   191: aload_0
    //   192: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   195: invokevirtual 65	com/alipay/android/setting/activity/BaseSettingActivity:finish	()V
    //   198: aload_0
    //   199: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   202: invokevirtual 46	com/alipay/android/setting/activity/BaseSettingActivity:dismissProgressDialog	()V
    //   205: aload 7
    //   207: invokestatic 41	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   210: ifne +8 -> 218
    //   213: aload 8
    //   215: ifnonnull +104 -> 319
    //   218: aload_0
    //   219: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   222: getstatic 52	com/alipay/android/app/R$drawable:av	I
    //   225: getstatic 57	com/alipay/android/app/R$string:Q	I
    //   228: invokestatic 62	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   231: return
    //   232: aload 11
    //   234: ldc 89
    //   236: invokevirtual 82	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   239: astore 12
    //   241: aload 12
    //   243: ifnull +213 -> 456
    //   246: aload 12
    //   248: ldc 112
    //   250: ldc 114
    //   252: invokevirtual 118	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   255: astore 13
    //   257: invokestatic 123	com/alipay/android/app/sys/GlobalContext:h	()Ljava/lang/String;
    //   260: aload 13
    //   262: invokestatic 128	com/alipay/android/app/encrypt/TriDes:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   265: astore 14
    //   267: new 130	java/lang/StringBuilder
    //   270: dup
    //   271: ldc 132
    //   273: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   276: aload 14
    //   278: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   284: pop
    //   285: invokestatic 145	com/alipay/android/app/util/LogUtils:i	()V
    //   288: new 73	org/json/JSONObject
    //   291: dup
    //   292: aload 14
    //   294: invokespecial 76	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   297: astore 8
    //   299: aload 8
    //   301: ldc 147
    //   303: iconst_0
    //   304: invokevirtual 151	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   307: istore 18
    //   309: iload 18
    //   311: istore_3
    //   312: aload 14
    //   314: astore 7
    //   316: goto -118 -> 198
    //   319: iload_3
    //   320: ifne +81 -> 401
    //   323: aload 8
    //   325: ldc 153
    //   327: ldc 114
    //   329: invokevirtual 118	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   332: astore 10
    //   334: aload 8
    //   336: ldc 155
    //   338: ldc 114
    //   340: invokevirtual 118	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   343: ldc 157
    //   345: invokestatic 31	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   348: ifeq +23 -> 371
    //   351: aload_0
    //   352: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   355: getstatic 52	com/alipay/android/app/R$drawable:av	I
    //   358: aload 10
    //   360: invokestatic 160	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;ILjava/lang/String;)V
    //   363: aload_0
    //   364: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   367: invokevirtual 65	com/alipay/android/setting/activity/BaseSettingActivity:finish	()V
    //   370: return
    //   371: aload_0
    //   372: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   375: getfield 163	com/alipay/android/setting/activity/BaseSettingActivity:b	Z
    //   378: ifeq +13 -> 391
    //   381: aload_0
    //   382: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   385: aload 10
    //   387: invokevirtual 165	com/alipay/android/setting/activity/BaseSettingActivity:b	(Ljava/lang/String;)V
    //   390: return
    //   391: aload_0
    //   392: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   395: aload 10
    //   397: invokevirtual 167	com/alipay/android/setting/activity/BaseSettingActivity:a	(Ljava/lang/String;)V
    //   400: return
    //   401: aload_0
    //   402: getfield 10	com/alipay/android/setting/activity/a:a	Lcom/alipay/android/setting/activity/BaseSettingActivity;
    //   405: aload 7
    //   407: iload 5
    //   409: invokevirtual 170	com/alipay/android/setting/activity/BaseSettingActivity:a	(Ljava/lang/String;I)V
    //   412: return
    //   413: astore 9
    //   415: aload 4
    //   417: astore 7
    //   419: aload 12
    //   421: astore 8
    //   423: goto -257 -> 166
    //   426: astore 15
    //   428: aload 12
    //   430: astore 8
    //   432: aload 14
    //   434: astore 7
    //   436: aload 15
    //   438: astore 9
    //   440: goto -274 -> 166
    //   443: astore 17
    //   445: aload 14
    //   447: astore 7
    //   449: aload 17
    //   451: astore 9
    //   453: goto -287 -> 166
    //   456: aload 4
    //   458: astore 7
    //   460: aload 12
    //   462: astore 8
    //   464: iconst_0
    //   465: istore_3
    //   466: goto -268 -> 198
    //
    // Exception table:
    //   from	to	target	type
    //   67	83	153	java/lang/Exception
    //   88	152	153	java/lang/Exception
    //   232	241	153	java/lang/Exception
    //   246	267	413	java/lang/Exception
    //   267	299	426	java/lang/Exception
    //   299	309	443	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.a
 * JD-Core Version:    0.6.2
 */