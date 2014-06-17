package com.alipay.mobile.rome.longlinkservice.msg;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;

public final class a
{
  private static a a;

  public static a a()
  {
    try
    {
      if (a == null)
        a = new a();
      a locala = a;
      return locala;
    }
    finally
    {
    }
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse(paramString1), null, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() > 0))
    {
      localCursor.moveToFirst();
      paramString2 = localCursor.getString(0);
      localCursor.close();
    }
    return paramString2;
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 16384).flags;
      int j = i & 0x2;
      boolean bool = false;
      if (j != 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.msg.a
 * JD-Core Version:    0.6.2
 */