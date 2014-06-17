package com.alipay.mobile.common.logagent;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class StorageManager
{
  private static ExecutorService f = Executors.newFixedThreadPool(10);
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private final String g = ",%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s";
  private final String h = ",%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s";
  private final String i = "e,%s,%s,%s,1,%s,,%s,%s,%s,%s,%s,%s,%s,%s$$";
  private StorageStateInfo j = StorageStateInfo.getInstance();
  private BehaviourIdEnum k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private String[] t;
  private String u;
  private String v;

  public StorageManager(Context paramContext, BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String[] paramArrayOfString)
  {
    if ((!this.j.isRegisted()) && (paramContext != null))
      AlipayLogAgent.initClient(paramContext);
    this.a = paramContext;
    this.k = paramBehaviourIdEnum;
    this.l = paramString1;
    this.m = paramString2;
    this.c = paramString3;
    this.n = paramString4;
    this.b = paramString5;
    this.o = paramString6;
    this.p = paramString7;
    this.q = paramString8;
    this.r = paramString9;
    this.s = paramString10;
    this.t = paramArrayOfString;
  }

  public StorageManager(Context paramContext, BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    this(paramContext, paramBehaviourIdEnum, paramString1, paramString2, paramString3, paramString4, null, null, null, null, null, null, null);
    if ((paramArrayOfString != null) && (paramArrayOfString.length >= 6))
    {
      this.b = paramArrayOfString[0];
      this.o = paramArrayOfString[1];
      this.p = paramArrayOfString[2];
      this.q = paramArrayOfString[3];
      this.r = paramArrayOfString[4];
      this.s = paramArrayOfString[5];
      if (paramArrayOfString.length > 6)
      {
        this.t = new String[-6 + paramArrayOfString.length];
        for (int i1 = 0; i1 < this.t.length; i1++)
          this.t[i1] = paramArrayOfString[(i1 + 6)];
      }
    }
  }

  StorageManager(Context paramContext, String paramString1, BehaviourIdEnum paramBehaviourIdEnum, String paramString2)
  {
    if ((!this.j.isRegisted()) && (paramContext != null))
      AlipayLogAgent.initClient(paramContext);
    this.a = paramContext;
    this.u = paramString1;
    this.k = paramBehaviourIdEnum;
    this.v = paramString2;
  }

  StorageManager(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, String[] paramArrayOfString)
  {
    this(paramContext, null, null, null, null, null, null, null, null, null, null, null, paramArrayOfString);
    a(paramString1, paramString2, paramInt, paramArrayOfString);
  }

  StorageManager(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String[] paramArrayOfString)
  {
    this(paramContext, null, null, null, paramString4, null, null, null, null, null, null, null, paramArrayOfString);
    a(paramString1, paramString2, paramInt, paramArrayOfString);
  }

  private void a(String paramString1, String paramString2, int paramInt, String[] paramArrayOfString)
  {
    switch (paramInt)
    {
    default:
      this.k = BehaviourIdEnum.NONE;
      return;
    case 4:
      this.e = paramString2;
      this.m = paramString1;
      this.k = BehaviourIdEnum.EXCEPTION;
      return;
    case 3:
      this.k = BehaviourIdEnum.CLICKED;
      if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
        this.p = paramArrayOfString[0];
      this.l = paramString2;
      return;
    case 2:
    }
    this.k = BehaviourIdEnum.NONE;
    this.b = paramString1;
    this.o = paramString2;
  }

  public void writeLog()
  {
    f.execute(new StorageManager.WriteLogThread(this, null));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.StorageManager
 * JD-Core Version:    0.6.2
 */