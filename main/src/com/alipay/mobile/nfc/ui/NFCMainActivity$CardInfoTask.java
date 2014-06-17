package com.alipay.mobile.nfc.ui;

import android.content.Intent;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.alipay.nfc.card.pboc.PbocCard;
import com.alipay.nfc.model.CardInfo;

class NFCMainActivity$CardInfoTask extends AsyncTask<Intent, Void, Void>
{
  private long b;

  private NFCMainActivity$CardInfoTask(NFCMainActivity paramNFCMainActivity)
  {
  }

  private Void a(Intent[] paramArrayOfIntent)
  {
    NFCMainActivity.c();
    Intent localIntent = paramArrayOfIntent[0];
    try
    {
      Tag localTag = (Tag)localIntent.getParcelableExtra("android.nfc.extra.TAG");
      NFCMainActivity.a(this.a, IsoDep.get(localTag));
      NFCMainActivity.a(this.a, PbocCard.a(localIntent, this.a.getResources()));
      NFCMainActivity localNFCMainActivity = this.a;
      CardInfo localCardInfo = NFCMainActivity.d(this.a);
      if ((localCardInfo == null) || (localCardInfo.f() == null) || (TextUtils.isEmpty(localCardInfo.a())))
      {
        bool = true;
        NFCMainActivity.a(localNFCMainActivity, bool);
        l = System.currentTimeMillis();
        if (l - this.b >= 1000L);
      }
    }
    catch (Exception localException)
    {
      try
      {
        while (true)
        {
          long l;
          Thread.sleep(1000L - (l - this.b));
          return null;
          localException = localException;
          NFCMainActivity.c();
          new StringBuilder("pboc card load fail:").append(localException.getMessage()).toString();
        }
        boolean bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  protected void onPreExecute()
  {
    NFCMainActivity.c();
    NFCMainActivity.c(this.a);
    this.a.showProgressDialog("数据读取中...");
    this.b = System.currentTimeMillis();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCMainActivity.CardInfoTask
 * JD-Core Version:    0.6.2
 */