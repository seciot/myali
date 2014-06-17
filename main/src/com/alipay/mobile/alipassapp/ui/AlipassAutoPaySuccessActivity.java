package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class AlipassAutoPaySuccessActivity extends BaseActivity
{
  APTextView a;
  APTitleBar b;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.alipass_payment_success);
    String str = getIntent().getExtras().getString("message");
    this.a = ((APTextView)findViewById(R.id.autopay_success_message));
    this.a.setText(str);
    this.b = ((APTitleBar)findViewById(R.id.titleBar));
    this.b.setGenericButtonVisiable(true);
    this.b.setGenericButtonText(getResources().getString(R.string.completed));
    this.b.setGenericButtonListener(new a(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassAutoPaySuccessActivity
 * JD-Core Version:    0.6.2
 */