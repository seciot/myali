package com.alipay.mobile.about.b;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import java.util.List;

public final class a
{
  private static final String[] a = { "bucket_id", "COUNT(_id) " };
  private static final String[] b = { "_id", "_data" };

  public static void a(Context paramContext, List<com.alipay.mobile.about.ui.b.a> paramList)
  {
    Uri localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    Cursor localCursor1 = paramContext.getContentResolver().query(localUri, a, "bucket_id!=0) GROUP BY (bucket_id ", null, "2 DESC");
    if (localCursor1 == null)
      return;
    paramList.clear();
    try
    {
      if (localCursor1.moveToFirst());
      while (true)
      {
        long l = localCursor1.getLong(0);
        int i = localCursor1.getInt(1);
        com.alipay.mobile.about.ui.b.a locala = new com.alipay.mobile.about.ui.b.a();
        locala.a = i;
        locala.b = l;
        ContentResolver localContentResolver = paramContext.getContentResolver();
        StringBuffer localStringBuffer = new StringBuffer("bucket_id in (");
        localStringBuffer.append(l);
        localStringBuffer.append(")");
        String str1 = localStringBuffer.toString();
        Cursor localCursor2 = localContentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, b, str1, null, "datetaken DESC");
        try
        {
          String[] arrayOfString;
          if (localCursor2.moveToFirst())
          {
            locala.c = localCursor2.getLong(0);
            String str2 = localCursor2.getString(1);
            locala.d = str2;
            if (!TextUtils.isEmpty(str2))
            {
              arrayOfString = str2.split("/");
              if (arrayOfString.length < 2)
                break label254;
            }
          }
          label254: for (locala.e = arrayOfString[(-2 + arrayOfString.length)]; ; locala.e = "")
          {
            localCursor2.close();
            paramList.add(locala);
            boolean bool = localCursor1.moveToNext();
            if (bool)
              break;
            return;
          }
        }
        finally
        {
        }
      }
    }
    finally
    {
      localCursor1.close();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.b.a
 * JD-Core Version:    0.6.2
 */