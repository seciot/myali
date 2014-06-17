package com.androidquery.util;

import android.os.AsyncTask;

class AQUtility$2 extends AsyncTask<Void, Void, String>
{
  AQUtility$2(Runnable paramRunnable)
  {
  }

  protected String doInBackground(Void[] paramArrayOfVoid)
  {
    try
    {
      this.a.run();
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        AQUtility.report(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.AQUtility.2
 * JD-Core Version:    0.6.2
 */