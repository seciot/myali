package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class ShareSavePicThireBtnActivity extends BaseActivity
  implements View.OnClickListener
{
  private APButton a = null;
  private APButton b = null;
  private APButton c = null;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
      switch (paramInt1)
      {
      default:
      case 0:
      }
    while (true)
    {
      finish();
      return;
      Intent localIntent = new Intent();
      localIntent.setAction("com.alipay.mobile.android.main.avatar.action.changed");
      LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
    }
  }

  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if (i == R.id.dt)
      setResult(3);
    while (true)
    {
      finish();
      return;
      if (i == R.id.fE)
        setResult(1);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(R.layout.R);
    this.a = ((APButton)findViewById(R.id.dt));
    this.b = ((APButton)findViewById(R.id.fE));
    this.c = ((APButton)findViewById(R.id.af));
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.ShareSavePicThireBtnActivity
 * JD-Core Version:    0.6.2
 */