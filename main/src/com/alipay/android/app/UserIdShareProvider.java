package com.alipay.android.app;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.tid.TidInfo;

public final class UserIdShareProvider extends ContentProvider
{
  public final int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    if (paramUri.getAuthority().equals("com.alipay.android.app.share"))
    {
      TidInfo.h();
      return 1;
    }
    return 0;
  }

  public final String getType(Uri paramUri)
  {
    return null;
  }

  public final Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public final boolean onCreate()
  {
    return true;
  }

  public final Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if ((paramArrayOfString1 == null) || (paramArrayOfString1.length == 0));
    TidInfo localTidInfo;
    MatrixCursor localMatrixCursor;
    String[] arrayOfString;
    do
    {
      return null;
      MspConfig.u();
      localTidInfo = TidInfo.g();
      localMatrixCursor = new MatrixCursor(paramArrayOfString1);
      arrayOfString = new String[paramArrayOfString1.length];
    }
    while (TidInfo.f());
    for (int i = 0; i < paramArrayOfString1.length; i++)
    {
      if ("tid".equals(paramArrayOfString1[i]))
        arrayOfString[i] = localTidInfo.a();
      if ("key".equals(paramArrayOfString1[i]))
        arrayOfString[i] = localTidInfo.b();
      if ("timestamp".equals(paramArrayOfString1[i]))
        arrayOfString[i] = String.valueOf(localTidInfo.c());
      if ("virtualImei".equals(paramArrayOfString1[i]))
        arrayOfString[i] = MspConfig.v();
      if ("virtualImsi".equals(paramArrayOfString1[i]))
        arrayOfString[i] = MspConfig.w();
    }
    localMatrixCursor.addRow(arrayOfString);
    return localMatrixCursor;
  }

  public final int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.UserIdShareProvider
 * JD-Core Version:    0.6.2
 */