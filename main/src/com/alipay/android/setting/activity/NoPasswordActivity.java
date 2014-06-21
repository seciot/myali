package com.alipay.android.setting.activity;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.TextView;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.android.setting.request.RequestService;
import com.alipay.android.setting.widgets.CustomProgressBar;
import com.alipay.android.setting.widgets.CustomProgressBar.SelectionChangeListener;
import com.alipay.android.setting.widgets.CustomToast;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class NoPasswordActivity extends BaseSettingActivity
  implements View.OnClickListener, CustomProgressBar.SelectionChangeListener
{
  private CustomProgressBar d;
  private TextView e;
  private APRadioTableView f;
  private String g;
  private int h;

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c();
      return;
    }
    c(null);
  }

  private void d()
  {
    LogAgent.m("SPSafePay");
    if (this.f.getToggleButton().isChecked())
    {
      a(this.a.n);
      return;
    }
    a(this.a.o);
  }

  protected final void a(String paramString, int paramInt)
  {
    if (paramInt == 2)
    {
      JSONObject localJSONObject;
      try
      {
        localJSONObject = new JSONObject(paramString);
        if (localJSONObject.optBoolean("success", false))
        {
          CustomToast.e(this, R.drawable.ax, R.string.V);
          Intent localIntent = new Intent();
          localIntent.putExtra("value", this.h);
          if (this.f.getToggleButton().isChecked())
            setResult(1, localIntent);
          while (true)
          {
            finish();
            return;
            setResult(2, localIntent);
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      String str1 = localJSONObject.optString("msg", getResources().getString(R.string.U));
      String str2 = localJSONObject.optString("status", null);
      if ((TextUtils.equals(localJSONObject.optString("exit_status", null), "client_confirm")) || (TextUtils.equals(str2, "pop_type")))
      {
        String str3 = getString(R.string.S);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
        if (TextUtils.isEmpty(str3))
        {
          localBuilder.setTitle(0);
          if (!TextUtils.isEmpty(str1))
            break label234;
          localBuilder.setMessage(0);
        }
        while (true)
        {
          localBuilder.setPositiveButton(R.string.W, new g(this));
          localBuilder.show();
          return;
          localBuilder.setTitle(str3);
          break;
          label234: localBuilder.setMessage(str1);
        }
      }
      if (TextUtils.equals(str2, "not_pop_type"))
        a(str1);
    }
  }

  protected final void c(String paramString)
  {
    showProgressDialog(null, false, null);
    this.a.j = this.f.getToggleButton().isChecked();
    if (this.h != 0)
      this.a.f = this.h;
    this.a.g = paramString;
    this.a.m = this.b;
    Intent localIntent = new Intent(getApplicationContext(), RequestService.class);
    localIntent.putExtra("type", 2);
    localIntent.putExtra("local_data", this.a);
    startService(localIntent);
  }

  public final void d(String paramString)
  {
    this.h = Integer.parseInt(paramString);
    if (this.e != null)
    {
      this.g = getResources().getString(R.string.R, new Object[] { paramString });
      this.e.setText(this.g);
    }
  }

  public void finish()
  {
    super.finish();
  }

  public void onBackPressed()
  {
    if (this.a.j == this.f.getToggleButton().isChecked())
    {
      if ((this.h == 0) || (this.a.f == this.h))
      {
        LogAgent.l("SPSafePay");
        super.onBackPressed();
        return;
      }
      d();
      return;
    }
    d();
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.ao)
    {
      this.f.getToggleButton().toggle();
      if ((this.f.getToggleButton().isChecked()) && (this.a.p))
      {
        this.h = Integer.parseInt(this.d.getTextGroup()[0]);
        this.d.setVisibility(0);
        this.e.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    this.h = 0;
    this.d.setVisibility(8);
    this.e.setVisibility(8);
  }

  protected void onCreate(Bundle paramBundle)
  {
    getWindow().setLayout(-1, -1);
    super.onCreate(paramBundle);
    setContentView(R.layout.ai);
    this.a = ((RequestContainer)getIntent().getExtras().getParcelable("local_data"));
    this.f = ((APRadioTableView)findViewById(R.id.ao));
    this.f.setEnabled(false);
    this.f.setOnSwitchListener(new h(this));
    boolean bool = this.a.j;
    this.f.showToggleButton(bool);
    if (bool)
      this.f.setType(17);
    while (true)
    {
      this.d = ((CustomProgressBar)findViewById(R.id.aw));
      this.d.setOnSelectionChangeListener(this);
      this.d.setProgressTexts(this.a.q);
      this.h = this.a.f;
      this.d.setSelection(String.valueOf(this.a.f));
      if ((this.a.j) && (this.a.p))
        this.d.setVisibility(0);
      this.e = ((TextView)findViewById(R.id.ax));
      if (this.a.j)
        this.e.setVisibility(0);
      Resources localResources = getResources();
      int i = R.string.R;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.d.getCurrentSelectedLimit();
      this.g = localResources.getString(i, arrayOfObject1);
      this.e.setText(this.g);
      this.b = this.a.m;
      if (GlobalContext.a().c().c());
      try
      {
        HashMap localHashMap = new HashMap();
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("titleBar:" + R.id.aC);
        int[] arrayOfInt1 = new int[1];
        arrayOfInt1[0] = R.id.aC;
        localHashMap.put("titleBar", arrayOfInt1);
        localStringBuffer.append(",setting_btn_no_pwd:" + R.id.ao);
        int[] arrayOfInt2 = new int[1];
        arrayOfInt2[0] = R.id.ao;
        localHashMap.put("setting_btn_no_pwd", arrayOfInt2);
        localStringBuffer.append(",setting_no_pwd_progress:" + R.id.aw);
        int[] arrayOfInt3 = new int[1];
        arrayOfInt3[0] = R.id.aw;
        localHashMap.put("setting_no_pwd_progress", arrayOfInt3);
        localStringBuffer.append(",setting_no_pwd_tips2:" + R.id.ax);
        int[] arrayOfInt4 = new int[1];
        arrayOfInt4[0] = R.id.ax;
        localHashMap.put("setting_no_pwd_tips2", arrayOfInt4);
        DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
        EventObject localEventObject = EventObject.OnResume;
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = this;
        arrayOfObject2[1] = getClass().getSimpleName();
        arrayOfObject2[2] = localStringBuffer.toString();
        arrayOfObject2[3] = localHashMap;
        localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject2);
        return;
        this.f.setType(16);
      }
      catch (Exception localException)
      {
      }
    }
  }

  protected void onStart()
  {
    super.onStart();
    a();
  }

  protected void onStop()
  {
    super.onStop();
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.NoPasswordActivity
 * JD-Core Version:    0.6.2
 */