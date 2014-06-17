package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class TravelUserGuideActivity extends BaseActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.main_travel_user_guide);
    findViewById(R.id.user_guide).setOnClickListener(new fi(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.TravelUserGuideActivity
 * JD-Core Version:    0.6.2
 */