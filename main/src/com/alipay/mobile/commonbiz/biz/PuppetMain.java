package com.alipay.mobile.commonbiz.biz;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class PuppetMain extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent().getBooleanExtra("fromAlipayLogin", false))
    {
      finish();
      return;
    }
    startActivity(new Intent(this, LaunchRouter.class));
    finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.PuppetMain
 * JD-Core Version:    0.6.2
 */