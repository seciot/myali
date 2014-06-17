package com.alipay.mobile.nfc.ui;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.common.utils.SecurityUtil;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.nfc.R.drawable;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.R.string;
import com.alipay.mobile.nfc.app.LogAgent;
import com.alipay.mobile.nfc.app.NfcApp;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;
import com.alipay.mobile.nfc.strategy.BusinessJumper;
import com.alipay.mobile.nfc.strategy.NfcStrategy;
import com.androidquery.AQuery;
import org.json.JSONObject;

public class NFCBeamActivity extends BaseActivity
  implements View.OnClickListener
{
  private String a;
  private String b;
  private String c;
  private LinearLayout d;
  private BusinessJumpable e;
  private NFCBeamActivity.HomeKeyReceiver f;

  public void onClick(View paramView)
  {
    if ((paramView instanceof Button))
    {
      BusinessJumper localBusinessJumper = BusinessJumper.a(this.mMicroApplicationContext);
      localBusinessJumper.a(this.e);
      localBusinessJumper.a();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.l);
    LogAgent.c(getApplicationContext());
    this.d = ((LinearLayout)findViewById(R.id.n));
    if (NfcStrategy.b())
    {
      this.e = new NFCBeamActivity.1(this);
      String str = getResources().getString(R.string.i);
      LayoutInflater.from(this).inflate(R.layout.h, this.d, true);
      Button localButton = (Button)this.d.getChildAt(-1 + this.d.getChildCount());
      localButton.setOnClickListener(this);
      localButton.setText(str);
      localButton.setTextColor(getResources().getColor(R.drawable.c));
      localButton.setBackgroundResource(R.drawable.b);
    }
    this.f = new NFCBeamActivity.HomeKeyReceiver(this, (byte)0);
    registerReceiver(this.f, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    onNewIntent(getIntent());
  }

  protected void onDestroy()
  {
    unregisterReceiver(this.f);
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    new StringBuilder("onNewIntent: ").append(paramIntent).toString();
    String str;
    if ((this.mApp instanceof NfcApp))
    {
      Bundle localBundle = ((NfcApp)this.mApp).getParam();
      if (localBundle != null)
        str = localBundle.getString("Key_beam_content");
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str).optJSONObject("alipays-beam");
      this.b = localJSONObject.optString("name");
      this.a = localJSONObject.optString("loginid");
      this.c = localJSONObject.optString("avatar");
      return;
    }
    catch (Exception localException)
    {
      finish();
    }
  }

  protected void onResume()
  {
    super.onResume();
    ((TextView)findViewById(R.id.M)).setText(this.b);
    ((TextView)findViewById(R.id.L)).setText(SecurityUtil.accountHide(this.a, "hideaccount"));
    AQuery localAQuery = new AQuery(this);
    if (TextUtils.isEmpty(this.c))
    {
      ((AQuery)localAQuery.id(R.id.k)).image(R.drawable.g);
      return;
    }
    ((AQuery)localAQuery.id(R.id.k)).image(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCBeamActivity
 * JD-Core Version:    0.6.2
 */