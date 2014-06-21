package com.alipay.android.setting.activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public abstract class BaseSettingActivity extends BaseActivity
{
  protected RequestContainer a;
  protected boolean b;
  protected BroadcastReceiver c = new a(this);

  private void a(int paramInt, String paramString)
  {
    View localView = LayoutInflater.from(this).inflate(R.layout.ak, null);
    EditText localEditText = (EditText)localView.findViewById(R.id.av);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    if (TextUtils.isEmpty(paramString))
      localBuilder.setTitle(paramInt);
    while (true)
    {
      localBuilder.setView(localView);
      localBuilder.setCancelable(false);
      localBuilder.setPositiveButton(R.string.W, new e(this, localEditText));
      localBuilder.setNegativeButton(R.string.L, new f(this));
      localBuilder.show();
      return;
      localBuilder.setTitle(paramString);
    }
  }

  protected final void a()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.android.setting.REQUEST_END");
    registerReceiver(this.c, localIntentFilter);
  }

  protected final void a(String paramString)
  {
    a(0, paramString);
  }

  protected abstract void a(String paramString, int paramInt);

  protected final void b()
  {
    unregisterReceiver(this.c);
  }

  protected final void b(String paramString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    View localView = LayoutInflater.from(this).inflate(R.layout.al, null);
    localBuilder.setTitle(getString(R.string.O));
    ((TextView)localView.findViewById(R.id.az)).setText(paramString);
    localBuilder.setView(localView);
    localBuilder.setCancelable(false);
    localBuilder.setNegativeButton(R.string.L, new b(this));
    APSixNumberPwdInputBox localAPSixNumberPwdInputBox = (APSixNumberPwdInputBox)localView.findViewById(R.id.DefaultThreadFactory);
    localBuilder.setPositiveButton(R.string.W, new c(this, localAPSixNumberPwdInputBox));
    AlertDialog localAlertDialog = localBuilder.create();
    localAPSixNumberPwdInputBox.setPwdInputListener(new d(this, localAlertDialog));
    localAlertDialog.show();
    localAlertDialog.getButton(-1).setEnabled(false);
  }

  protected final void c()
  {
    if (this.b)
    {
      b("请输入6位手机支付密码");
      return;
    }
    v(R.string.O, null);
  }

  protected void c(String paramString)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
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
 * Qualified Name:     com.alipay.android.setting.activity.BaseSettingActivity
 * JD-Core Version:    0.6.2
 */