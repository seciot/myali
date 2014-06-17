package com.taobao.android.sso.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.Signature;
import java.util.Arrays;
import java.util.List;

public final class b
{
  private final SharedPreferences a;
  private Signature[] b;

  public b(Context paramContext)
  {
    this.a = paramContext.getSharedPreferences(".sso.whitelist", 0);
    String str = this.a.getString("whitelist", null);
    if (str == null)
    {
      this.b = new Signature[0];
      return;
    }
    String[] arrayOfString = str.split(",");
    this.b = new Signature[arrayOfString.length];
    while (i < arrayOfString.length)
      try
      {
        this.b[i] = new Signature(arrayOfString[i]);
        i++;
      }
      catch (RuntimeException localRuntimeException)
      {
        while (true)
          new StringBuilder("Malformed signature: ").append(i).append(" - (hidden for security)").toString();
      }
  }

  final long a()
  {
    return this.a.getLong("timestamp", 0L);
  }

  public final boolean a(Signature[] paramArrayOfSignature)
  {
    int i;
    List localList;
    int j;
    if ((this.b == null) || (this.b.length == 0))
    {
      this.b = new Signature[d.b.length];
      i = 0;
      if (i < d.b.length);
    }
    else
    {
      localList = Arrays.asList(this.b);
      j = paramArrayOfSignature.length;
    }
    for (int k = 0; ; k++)
    {
      while (true)
        if (k >= j)
        {
          return false;
          try
          {
            this.b[i] = new Signature(d.b[i]);
            i++;
          }
          catch (RuntimeException localRuntimeException)
          {
            while (true)
              new StringBuilder("Malformed signature: ").append(i).append(" - (hidden for security)").toString();
          }
        }
      if (localList.contains(paramArrayOfSignature[k]))
        return true;
    }
  }

  public final boolean a(Signature[] paramArrayOfSignature, long paramLong)
  {
    int i = 0;
    if (paramArrayOfSignature.length == 0);
    do
    {
      return false;
      this.b = new Signature[paramArrayOfSignature.length];
      System.arraycopy(paramArrayOfSignature, 0, this.b, 0, paramArrayOfSignature.length);
    }
    while (paramLong <= this.a.getLong("timestamp", 0L));
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfSignature.length;
    while (true)
    {
      if (i >= j)
      {
        this.a.edit().putLong("timestamp", paramLong).putString("whitelist", localStringBuilder.substring(1)).commit();
        return true;
      }
      Signature localSignature = paramArrayOfSignature[i];
      localStringBuilder.append(',').append(localSignature.toCharsString());
      i++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.internal.b
 * JD-Core Version:    0.6.2
 */