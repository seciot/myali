package com.alipay.mobile.nfc.ui;

import android.os.Bundle;
import android.widget.Button;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;

public class NFCFeedBackActivity extends BaseActivity
{
  private APTableView a;
  private APInputBox b;
  private Button c;
  private int d;
  private String[] e = { "银行卡", "公交一卡通" };
  private boolean f = false;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.i);
    this.a = ((APTableView)findViewById(R.id.J));
    this.a.setOnClickListener(new NFCFeedBackActivity.1(this));
    this.b = ((APInputBox)findViewById(R.id.i));
    this.c = ((Button)findViewById(R.id.d));
    this.c.setOnClickListener(new NFCFeedBackActivity.2(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCFeedBackActivity
 * JD-Core Version:    0.6.2
 */