package com.alipay.mobile.alipassapp.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;

@SuppressLint({"HandlerLeak"})
public class AlipassSchemeTransferActivity extends Activity
{
  String a = null;
  private final int b = 1;

  @SuppressLint({"HandlerLeak"})
  private Handler c = new cz(this);

  private void b()
  {
    if (this.a != null)
    {
      this.a = this.a.substring(7);
      String str = "alipays://platformapi/addalipass?appId=" + Uri.encode("09999987") + "&path=" + Uri.encode(this.a) + "&entry=files";
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addCategory("android.intent.category.DEFAULT");
      localIntent.setData(Uri.parse(str));
      startActivity(localIntent);
    }
  }

  protected final String a()
  {
    Cursor localCursor = getContentResolver().query(Uri.parse(this.a), null, null, null, null);
    if ((localCursor != null) && (localCursor.moveToNext()))
    {
      int i = localCursor.getColumnIndex("hint");
      if (i != -1)
        this.a = localCursor.getString(i);
    }
    return this.a;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.a = localIntent.getDataString();
      if ((localIntent.getType() != null) && (localIntent.getScheme().equalsIgnoreCase("content")))
        new cy(this).start();
    }
    else
    {
      return;
    }
    b();
  }

  protected void onResume()
  {
    super.onResume();
    finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassSchemeTransferActivity
 * JD-Core Version:    0.6.2
 */