package com.alipay.mobile.alipassnfcapp.ui;

import android.os.AsyncTask;

public final class i extends AsyncTask<String, Object, Object>
{
  public String a;
  boolean b = true;

  private i(h paramh, String paramString)
  {
    this.a = paramString;
  }

  public i(h paramh, String paramString, byte paramByte)
  {
    this(paramh, paramString);
    this.b = false;
  }

  protected final void onPostExecute(Object paramObject)
  {
    super.onPostExecute(paramObject);
    this.c.onPostExecute(this.a, paramObject);
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    if (!this.b)
      this.c.onPreDoInbackgroud(this.a);
  }

  protected final void onProgressUpdate(Object[] paramArrayOfObject)
  {
    this.c.onUIUpdate(paramArrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.i
 * JD-Core Version:    0.6.2
 */