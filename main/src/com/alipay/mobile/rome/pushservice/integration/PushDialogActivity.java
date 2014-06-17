package com.alipay.mobile.rome.pushservice.integration;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.reflect.Field;

public class PushDialogActivity extends Activity
{
  public static final String a = PushDialogActivity.class.getSimpleName();
  private Context b;
  private Intent c;

  private void a(Intent paramIntent)
  {
    this.c = paramIntent;
    String str1 = paramIntent.getAction();
    new StringBuilder("Handle intent: \r\n").append(paramIntent).toString();
    if ("alipayclient.action.SHOW_MESSAGE".equals(str1))
    {
      Bundle localBundle = paramIntent.getExtras();
      String str2 = localBundle.getString("push_show_title");
      String str3 = localBundle.getString("push_show_text");
      try
      {
        String str4 = getPackageName();
        Class localClass = Class.forName(str4 + ".R$id");
        ((ImageView)findViewById(((Integer)localClass.getField("push_dialog_title_app_image").get(null)).intValue())).setImageResource(getApplicationInfo().icon);
        ((TextView)findViewById(((Integer)localClass.getField("push_dialog_title_msg").get(null)).intValue())).setText(str2);
        ((TextView)findViewById(((Integer)localClass.getField("push_dialog_msg_text").get(null)).intValue())).setText(str3);
        ((Button)findViewById(((Integer)localClass.getField("push_dialog_btn_enter").get(null)).intValue())).setOnClickListener(new a(this));
        ((Button)findViewById(((Integer)localClass.getField("push_dialog_btn_close").get(null)).intValue())).setOnClickListener(new b(this));
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = this;
    try
    {
      String str = getPackageName();
      setContentView(((Integer)Class.forName(str + ".R$layout").getField("alipay_push_dialog").get(null)).intValue());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    a(paramIntent);
  }

  public void onStart()
  {
    super.onStart();
    a(getIntent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.integration.PushDialogActivity
 * JD-Core Version:    0.6.2
 */