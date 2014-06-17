package com.alipay.android.setting.activity;

import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.android.setting.request.RequestService;
import com.alipay.android.setting.widgets.CustomToast;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EntranceActivity extends BaseSettingActivity
  implements View.OnClickListener
{
  private APTableView d;
  private View e;
  private TextView f;
  private boolean g;
  private String[] h;
  private int i;
  private boolean j = true;
  private boolean k;
  private boolean l;
  private String m;
  private boolean n;

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.d.setRightText(getString(R.string.T));
    while (true)
    {
      this.g = paramBoolean;
      return;
      this.d.setRightText(getString(R.string.M));
    }
  }

  public final void a(String paramString, int paramInt)
  {
    if (paramInt == 1)
    {
      try
      {
        JSONObject localJSONObject1 = new JSONObject(paramString);
        this.b = localJSONObject1.optBoolean("issimplepwd", false);
        this.j = localJSONObject1.optBoolean("needpwdfornopwdopen", true);
        this.k = localJSONObject1.optBoolean("needpwdfornopwdclose", false);
        this.m = localJSONObject1.optString("session", "");
        JSONArray localJSONArray1 = localJSONObject1.optJSONArray("switches");
        if (localJSONArray1 != null)
        {
          int i1 = localJSONArray1.length();
          for (int i2 = 0; i2 < i1; i2++)
          {
            JSONObject localJSONObject2 = localJSONArray1.getJSONObject(i2);
            String str = localJSONObject2.optString("code", null);
            boolean bool = localJSONObject2.optBoolean("on", false);
            if (TextUtils.equals(str, "nopwd"))
            {
              this.g = bool;
              this.i = Integer.parseInt(localJSONObject2.optString("value"));
              JSONArray localJSONArray2 = localJSONObject2.optJSONArray("choices");
              this.h = new String[localJSONArray2.length()];
              for (int i3 = 0; i3 < localJSONArray2.length(); i3++)
                this.h[i3] = localJSONArray2.optString(i3);
              this.l = localJSONObject2.optBoolean("shownopwdvalue", true);
              this.n = true;
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        CustomToast.a(this, R.drawable.ax, R.string.Q);
        a(this.g);
        if (!this.n)
          break label274;
      }
      this.d.setVisibility(0);
      this.f.setVisibility(0);
    }
    else
    {
      return;
    }
    label274: this.d.setVisibility(8);
    this.f.setVisibility(8);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramIntent != null)
      this.i = paramIntent.getIntExtra("value", 0);
    switch (paramInt2)
    {
    default:
      return;
    case 1:
      a(true);
      return;
    case 2:
    }
    a(false);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.ao)
    {
      LogAgent.f("SPSafePay");
      localBundle2 = new Bundle();
      this.a.j = this.g;
      if (this.i != 0)
        this.a.f = this.i;
      this.a.q = this.h;
      this.a.m = this.b;
      this.a.n = this.j;
      this.a.o = this.k;
      this.a.p = this.l;
      this.a.c = this.m;
      localBundle2.putParcelable("local_data", this.a);
      localBundle2.putInt("settingId", 1);
      AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "20000024", localBundle2);
    }
    while (paramView.getId() != R.id.ap)
    {
      Bundle localBundle2;
      return;
    }
    LogAgent.i("SPSafePay");
    Bundle localBundle1 = new Bundle();
    this.a.c = this.m;
    localBundle1.putParcelable("local_data", this.a);
    localBundle1.putInt("settingId", 2);
    AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "20000024", localBundle1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ah);
    Bundle localBundle;
    if (getIntent() != null)
    {
      showProgressDialog(null, false, null);
      localBundle = getIntent().getExtras();
      GlobalContext.a().a(getApplicationContext(), MspConfig.u());
    }
    try
    {
      InputStream localInputStream = getAssets().open("msp.properties");
      GlobalConstant.loadProperties(getApplicationContext(), localInputStream, true);
      localInputStream.close();
      GlobalConstant.convertProperties(getApplicationContext());
      String str1 = TidInfo.g().a();
      String str2 = localBundle.getString("extern_token");
      String str3 = localBundle.getString("loginId");
      String str4 = localBundle.getString("user_id");
      this.a = new RequestContainer();
      this.a.b = str1;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("app_name=\"alipay\"&extern_token=\"").append(str2).append("\"&logon_id=\"").append(str3).append("\"&biz_type=\"setting\"&user_id=\"").append(str4).append("\"");
      this.a.e = localStringBuilder.toString();
      this.a.d = str4;
      Intent localIntent = new Intent(this, RequestService.class);
      localIntent.putExtra("type", 1);
      localIntent.putExtra("local_data", this.a);
      startService(localIntent);
      this.d = ((APTableView)findViewById(R.id.ao));
      this.d.setOnClickListener(this);
      this.f = ((TextView)findViewById(R.id.aA));
      this.e = findViewById(R.id.ap);
      this.e.setOnClickListener(this);
      if (!GlobalContext.a().c().c());
    }
    catch (Exception localException1)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("titleBar:" + R.id.aC);
        int[] arrayOfInt1 = new int[1];
        arrayOfInt1[0] = R.id.aC;
        localHashMap.put("titleBar", arrayOfInt1);
        localStringBuffer.append(",setting_btn_payment_channel:" + R.id.ap);
        int[] arrayOfInt2 = new int[1];
        arrayOfInt2[0] = R.id.ap;
        localHashMap.put("setting_btn_payment_channel", arrayOfInt2);
        localStringBuffer.append(",setting_btn_no_pwd:" + R.id.ao);
        int[] arrayOfInt3 = new int[1];
        arrayOfInt3[0] = R.id.ao;
        localHashMap.put("setting_btn_no_pwd", arrayOfInt3);
        localStringBuffer.append(",setting_text_tips:" + R.id.aA);
        int[] arrayOfInt4 = new int[1];
        arrayOfInt4[0] = R.id.aA;
        localHashMap.put("setting_text_tips", arrayOfInt4);
        DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
        EventObject localEventObject = EventObject.OnResume;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = this;
        arrayOfObject[1] = getClass().getSimpleName();
        arrayOfObject[2] = localStringBuffer.toString();
        arrayOfObject[3] = localHashMap;
        localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
        return;
        localException1 = localException1;
        LogUtils.a(localException1);
      }
      catch (Exception localException2)
      {
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      LogAgent.e("SPSafePay");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onStart()
  {
    super.onStart();
    a();
  }

  protected void onStop()
  {
    dismissProgressDialog();
    super.onStop();
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.EntranceActivity
 * JD-Core Version:    0.6.2
 */