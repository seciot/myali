package com.alipay.mobile.deviceAuthorization.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class ScanErrorActivity extends BaseActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.an);
    String str1 = getIntent().getStringExtra("resultCode");
    String str2 = getIntent().getStringExtra("title");
    String str3 = getIntent().getStringExtra("message");
    APTextView localAPTextView = (APTextView)findViewById(R.id.bb);
    if ((str2 != null) && (!str2.equals("")))
      localAPTextView.setText(str2);
    localAPTextView.setVisibility(0);
    TextView localTextView = (TextView)findViewById(R.id.bc);
    if ((str3 != null) && (!str3.equals("")))
      localTextView.setText(str3);
    localTextView.setVisibility(0);
    ((APTitleBar)findViewById(R.id.gg)).setTitleText(str2);
    Button localButton1 = (Button)findViewById(R.id.du);
    localButton1.setOnClickListener(new aq(this));
    Button localButton2 = (Button)findViewById(R.id.ad);
    localButton2.setOnClickListener(new ar(this));
    if ((str1 != null) && (str1.equalsIgnoreCase("2001")))
    {
      localButton1.setVisibility(0);
      localButton2.setVisibility(8);
      return;
    }
    localButton1.setVisibility(8);
    localButton2.setVisibility(0);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ScanErrorActivity
 * JD-Core Version:    0.6.2
 */