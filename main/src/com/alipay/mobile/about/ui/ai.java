package com.alipay.mobile.about.ui;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.MediaStore.Images.Media;
import com.alipay.mobile.about.ui.b.b;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class ai
  implements Runnable
{
  ai(MultiPictureSelectorActivity paramMultiPictureSelectorActivity)
  {
  }

  public final void run()
  {
    ContentResolver localContentResolver = this.a.getContentResolver();
    Uri localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    String[] arrayOfString = MultiPictureSelectorActivity.a();
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString, "bucket_id = ?", MultiPictureSelectorActivity.getBundle(String.valueOf(MultiPictureSelectorActivity.getBundle(this.a))), "datetaken DESC");
    if (localCursor != null)
    {
      ArrayList localArrayList = new ArrayList();
      while (localCursor.moveToNext())
      {
        long l = localCursor.getLong(0);
        String str = localCursor.getString(1);
        if (new File(str).exists())
          localArrayList.add(new b(l, str));
      }
      localCursor.close();
      MultiPictureSelectorActivity.removeBundle(this.a).post(new aj(this, localArrayList));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ai
 * JD-Core Version:    0.6.2
 */