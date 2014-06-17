package com.alipay.mobile.rome.pushservice.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.alipay.mobile.rome.pushservice.c;
import com.alipay.mobile.rome.pushservice.d;
import org.json.JSONException;
import org.json.JSONObject;

public class AlipayPushUpgrade extends Activity
  implements View.OnClickListener
{
  public static final String a = AlipayPushUpgrade.class.getSimpleName();
  private Button b;
  private Button c;
  private TextView d;
  private String e;
  private String f;
  private String g;
  private JSONObject h;

  public Resources getResources()
  {
    return getApplicationContext().getResources();
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == com.alipay.mobile.rome.pushservice.b.a)
      if ((this.f != null) && (!"".equals(this.f)))
      {
        new StringBuilder("onClick: updateUrl=").append(this.f).toString();
        new b(this).a(this.f);
      }
    while (paramView.getId() != com.alipay.mobile.rome.pushservice.b.b)
    {
      return;
      finish();
      return;
    }
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(c.a);
    this.b = ((Button)findViewById(com.alipay.mobile.rome.pushservice.b.a));
    this.c = ((Button)findViewById(com.alipay.mobile.rome.pushservice.b.b));
    this.d = ((TextView)findViewById(com.alipay.mobile.rome.pushservice.b.c));
    this.e = getIntent().getStringExtra("upgrade_params");
    try
    {
      this.h = new JSONObject(this.e);
      this.f = this.h.optString("url");
      this.g = this.h.optString("tip");
      this.d.setText(this.g);
      new StringBuilder("onCreate: updateTip=").append(this.g).toString();
      label143: this.b.setText(d.i);
      this.c.setText(d.h);
      this.b.setOnClickListener(this);
      this.c.setOnClickListener(this);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label143;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.AlipayPushUpgrade
 * JD-Core Version:    0.6.2
 */