package com.alipay.mobile.android.avatar.process;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class EditAvatarModActivity extends BaseActivity
  implements View.OnClickListener
{
  Bundle a = null;
  private APButton b = null;
  private APButton c = null;
  private APButton d = null;

  private void a()
  {
    if (getIntent().getExtras().getBoolean("extInvoke"))
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.alipay.ext.editavatar");
      localIntent.putExtra("operateType", "cancel");
      LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
    }
  }

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
    if (i == R.id.aw)
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        Intent localIntent2 = new Intent(this, EditAvatarActivity_.class);
        localIntent2.putExtra("input-type", 0);
        if (this.a != null)
          localIntent2.putExtras(this.a);
        this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent2, 0);
      }
    do
    {
      return;
      Toast.makeText(this, getString(R.string.aj), 1).show();
      finish();
      return;
      if (i == R.id.ay)
      {
        Intent localIntent1 = new Intent(this, EditAvatarActivity_.class);
        localIntent1.putExtra("input-type", 1);
        if (this.a != null)
          localIntent1.putExtras(this.a);
        this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent1, 0);
        return;
      }
    }
    while (i != R.id.ax);
    a();
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.Q);
    this.a = getIntent().getExtras();
    this.b = ((APButton)findViewById(R.id.aw));
    this.c = ((APButton)findViewById(R.id.ay));
    this.d = ((APButton)findViewById(R.id.ax));
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      a();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.process.EditAvatarModActivity
 * JD-Core Version:    0.6.2
 */