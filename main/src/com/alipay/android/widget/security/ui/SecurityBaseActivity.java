package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import com.alipay.mobile.framework.service.common.ImageLoaderService;

public class SecurityBaseActivity extends BaseActivity
{
  Object a;
  String b;
  protected String c = "";
  private String d = "";

  private String a()
  {
    String str = getClass().getName();
    return str + "param";
  }

  public static void a(boolean paramBoolean)
  {
    try
    {
      Intent localIntent = new Intent("com.alipay.security.namecertified");
      localIntent.putExtra("isCertified", paramBoolean);
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext()).sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void a(Intent paramIntent)
  {
    this.mMicroApplicationContext.startActivityForResult(this.mApp, paramIntent, -1);
  }

  public final void a(String paramString, ImageLoaderListener paramImageLoaderListener)
  {
    String str = ImageLoaderService.class.getName();
    ((ImageLoaderService)this.mApp.getServiceByInterface(str)).startLoad("securityapp", "security", paramString, paramImageLoaderListener, 48, 48);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (paramBundle.containsKey(a())))
      this.b = paramBundle.getString(a());
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      if (StringUtils.equals(this.c, "certifiedApp"))
        a(false);
      finish();
      bool = true;
    }
    return bool;
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    if (paramBundle.containsKey(a()))
      this.b = paramBundle.getString(a());
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.a != null)
      paramBundle.putString(a(), JSON.toJSONString(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityBaseActivity
 * JD-Core Version:    0.6.2
 */