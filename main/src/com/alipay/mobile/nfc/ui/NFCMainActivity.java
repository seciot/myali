package com.alipay.mobile.nfc.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.tech.IsoDep;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.app.LogAgent;
import com.alipay.mobile.nfc.app.NfcApp;
import com.alipay.mobile.nfc.strategy.AlipayAction;
import com.alipay.mobile.nfc.strategy.NfcStrategy;
import com.alipay.mobile.nfc.ui.frgment.StartupFragment;
import com.alipay.nfc.model.CardInfo;

public class NFCMainActivity extends BaseFragmentActivity
{
  private static String a = "NFC/Main";
  private CardInfo b = null;
  private AlertDialog c;
  private boolean d = false;
  private NFCMainActivity.CardInfoTask e;
  private IsoDep f;
  private AlipayAction g;

  private boolean a(Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT >= 10)
      try
      {
        Parcelable[] arrayOfParcelable = paramIntent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES");
        new StringBuilder("NDEF_DISCOVERED - msgs:").append(arrayOfParcelable).toString();
        if ((arrayOfParcelable != null) && (arrayOfParcelable.length != 0))
        {
          NdefRecord[] arrayOfNdefRecord = ((NdefMessage)arrayOfParcelable[0]).getRecords();
          if ((arrayOfNdefRecord != null) && (arrayOfNdefRecord.length != 0))
          {
            byte[] arrayOfByte = arrayOfNdefRecord[0].getPayload();
            if ((arrayOfByte != null) && (arrayOfByte.length > 1))
            {
              new StringBuilder("payload[0]=").append(arrayOfByte[0]).toString();
              if (arrayOfByte[0] == 0)
              {
                String str2 = new String(arrayOfByte);
                new StringBuilder("parseNdefMessage url:").append(str2).toString();
                this.g.a(str2);
                break label237;
              }
              String str1 = new String(arrayOfByte);
              if (str1.contains("alipays-beam"))
              {
                Intent localIntent = new Intent(this, NFCBeamActivity.class);
                localIntent.putExtra("Key_beam_content", str1);
                startActivity(localIntent);
                finish();
                break label237;
              }
              break label237;
            }
          }
          return false;
          label237: return true;
        }
      }
      catch (Exception localException)
      {
      }
    return false;
  }

  private void d()
  {
    if (!NfcStrategy.b())
      return;
    if (this.c == null)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage("该卡暂时无法识别，是否愿意上报卡类型信息，以支持我们后续优化?").setCancelable(false).setPositiveButton("确定", new NFCMainActivity.2(this)).setNegativeButton("取消", new NFCMainActivity.1(this));
      this.c = localBuilder.create();
    }
    this.c.show();
  }

  private void e()
  {
    if (this.c != null)
      this.c.dismiss();
  }

  public final CardInfo a()
  {
    return this.b;
  }

  public final void a(Class<?> paramClass, boolean paramBoolean)
  {
    try
    {
      Fragment localFragment = (Fragment)Class.forName(paramClass.getName()).newInstance();
      localFragment.setArguments(getIntent().getExtras());
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      new StringBuilder("addNewFragment:").append(paramClass.getName()).toString();
      if (paramBoolean)
        getSupportFragmentManager().popBackStack(null, 1);
      localFragmentTransaction.add(R.id.E, localFragment);
      localFragmentTransaction.addToBackStack(null);
      localFragmentTransaction.commitAllowingStateLoss();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void b()
  {
    if (this.f != null);
    try
    {
      this.f.close();
      label14: this.f = null;
      return;
    }
    catch (Exception localException)
    {
      break label14;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder("onCreate:").append(this).toString();
    new StringBuilder("savedInstanceState:").append(paramBundle).toString();
    this.mMicroApplicationContext.updateActivity(this);
    this.g = new AlipayAction(this.mMicroApplicationContext);
    setContentView(R.layout.m);
    LogAgent.a(getApplicationContext());
    a(StartupFragment.class, true);
    onNewIntent(getIntent());
  }

  protected void onDestroy()
  {
    new StringBuilder("onDestroy:").append(this).toString();
    if ((this.e != null) && (!this.e.isCancelled()))
      this.e.cancel(true);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      if (getSupportFragmentManager().getBackStackEntryCount() > 1)
      {
        getSupportFragmentManager().popBackStack();
        return true;
      }
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    new StringBuilder("onNewIntent: ").append(paramIntent).toString();
    this.mApp.setIsPrevent(false);
    if ((this.mApp instanceof NfcApp))
    {
      Intent localIntent = new Intent();
      Bundle localBundle = ((NfcApp)this.mApp).getParam();
      if (localBundle != null)
      {
        localIntent.setAction(localBundle.getString("action"));
        localIntent.putExtra("android.nfc.extra.TAG", localBundle.getParcelable("android.nfc.extra.TAG"));
        if (!a(localIntent))
        {
          if ((this.e != null) && (!this.e.isCancelled()))
            this.e.cancel(true);
          this.e = new NFCMainActivity.CardInfoTask(this, (byte)0);
          this.e.execute(new Intent[] { localIntent });
        }
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCMainActivity
 * JD-Core Version:    0.6.2
 */