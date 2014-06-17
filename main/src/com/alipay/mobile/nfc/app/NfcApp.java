package com.alipay.mobile.nfc.app;

import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.nfc.strategy.AlipayAction;
import com.alipay.mobile.nfc.ui.NFCBeamActivity;
import com.alipay.mobile.nfc.ui.NFCMainActivity;

public class NfcApp extends ActivityApplication
{
  public static final String NFC_APP_ID = "20000071";
  private Bundle a;
  private AlipayAction b;
  private boolean c = true;

  private boolean a()
  {
    if (Build.VERSION.SDK_INT >= 10)
      try
      {
        Parcelable[] arrayOfParcelable = this.a.getParcelableArray("android.nfc.extra.NDEF_MESSAGES");
        if ((arrayOfParcelable != null) && (arrayOfParcelable.length != 0))
        {
          NdefRecord[] arrayOfNdefRecord = ((NdefMessage)arrayOfParcelable[0]).getRecords();
          if ((arrayOfNdefRecord == null) || (arrayOfNdefRecord.length == 0))
            break label149;
          byte[] arrayOfByte = arrayOfNdefRecord[0].getPayload();
          if ((arrayOfByte == null) || (arrayOfByte.length <= 1))
            break label149;
          if (arrayOfByte[0] == 0)
          {
            String str1 = new String(arrayOfByte);
            this.b.a(str1);
          }
          else
          {
            String str2 = new String(arrayOfByte);
            if (str2.contains("alipays-beam"))
            {
              this.a.putString("Key_beam_content", str2);
              getMicroApplicationContext().startActivity(this, NFCBeamActivity.class.getName());
            }
          }
        }
      }
      catch (Exception localException)
      {
      }
    else
      return false;
    label149: return false;
    return true;
  }

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getParam()
  {
    return this.a;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
    this.b = new AlipayAction(getMicroApplicationContext());
    if (getMicroApplicationContext().findTopRunningApp() == null);
    for (boolean bool = true; ; bool = false)
    {
      this.c = bool;
      return;
    }
  }

  protected void onDestroy(Bundle paramBundle)
  {
    if (this.c)
      getMicroApplicationContext().exit();
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.a = paramBundle;
    if (!a())
      getMicroApplicationContext().startActivity(this, NFCMainActivity.class.getName());
  }

  protected void onStart()
  {
    if (!a())
      getMicroApplicationContext().startActivity(this, NFCMainActivity.class.getName());
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.app.NfcApp
 * JD-Core Version:    0.6.2
 */