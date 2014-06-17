package com.alipay.android.widget.security.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.commonui.widget.APWebView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.HashMap;

public class RobotXiaoBaoActivity extends BaseActivity
{
  private final String a = "http://cschannel.d2690.alipay.net/mobile/csrouter.htm?sceneCode=app_yuebao&params=eyJvc0luZm8iOiJhbmRyb2lkIiwic3JjIjoiYXBwIiwidXNlcklkIjoiMjA4ODEwMjEyMTk2NDczMiJ9#";
  private APWebView b;
  private WebSettings c;
  private UserInfo d;
  private final String e = "app_yuebao";
  private final String f = "app_baoling";
  private final String g = "app_membership_card";
  private final String h = "log_log";
  private final String i = "all_default";
  private String j = "app_yuebao";
  private String k = "http://cschannel.d2690.alipay.net/mobile/csrouter.htm?sceneCode=app_yuebao&params=eyJvc0luZm8iOiJhbmRyb2lkIiwic3JjIjoiYXBwIiwidXNlcklkIjoiMjA4ODEwMjEyMTk2NDczMiJ9#";
  private String l = "";
  private String m = "";
  private String n = "";
  private final String o = "url";
  private final String p = "scode";

  private void a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sceneCode=" + this.j);
    localStringBuilder.append("&params=" + b(paramString));
    this.b.postUrl(this.k, localStringBuilder.toString().getBytes());
    new StringBuilder("{[info=onCreate RobotUrlGenarator.getUrl], [msg=url:").append(localStringBuilder.toString()).append("]}").toString();
  }

  private static String b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("src", "app");
    if (TextUtils.isEmpty(paramString))
      paramString = "";
    localHashMap.put("userId", paramString);
    localHashMap.put("osInfo", "android");
    String str1 = JSONObject.toJSONString(localHashMap).toString();
    try
    {
      String str2 = Base64.encodeToString(str1.getBytes("utf-8"), 2);
      return str2;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return "";
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.bc);
    this.b = ((APWebView)findViewById(R.id.gs));
    this.c = this.b.getSettings();
    this.c.setJavaScriptEnabled(true);
    this.c.setDomStorageEnabled(true);
    String str1 = getApplicationContext().getDir("cache", 0).getPath();
    this.c.setAppCachePath(str1);
    this.c.setAllowFileAccess(true);
    this.c.setAppCacheEnabled(true);
    this.c.setCacheMode(-1);
    this.c.setBuiltInZoomControls(false);
    if (Build.VERSION.SDK_INT >= 7);
    try
    {
      Class localClass = this.b.getSettings().getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getMethod("setDomStorageEnabled", arrayOfClass);
      if (localMethod != null)
      {
        WebSettings localWebSettings = this.b.getSettings();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(true);
        localMethod.invoke(localWebSettings, arrayOfObject);
      }
      label189: this.b.setWebViewClient(new RobotXiaoBaoActivity.1(this));
      this.l = getIntent().getStringExtra("url");
      this.n = getIntent().getStringExtra("scode");
      if ((this.l != null) && (this.l.length() > 0))
      {
        this.b.loadUrl(this.l);
        return;
      }
      this.k = ReadSettingServerUrl.getRobotUrl(this.mMicroApplicationContext.getApplicationContext());
      AuthService localAuthService;
      if ((this.n != null) && (this.n.length() > 0))
      {
        this.j = this.n;
        localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
        if ((localAuthService.isLogin()) && (localAuthService.getUserInfo() != null))
          break label510;
      }
      while (true)
      {
        try
        {
          a("");
          new StringBuilder("{[info=onCreate RobotUrlGenarator.getUrl], [msg=url:").append(this.k).append("  ").append(this.mApp.getSourceId()).append("]}").toString();
          return;
          if (this.mApp.getSourceId() == "20000032")
          {
            this.j = "app_yuebao";
            break;
          }
          if (this.mApp.getSourceId() == "10000008")
          {
            this.j = "app_baoling";
            break;
          }
          if (this.mApp.getSourceId() == "20000062")
          {
            this.j = "app_membership_card";
            break;
          }
          if (this.mApp.getSourceId() == "20000055")
          {
            this.j = "log_log";
            break;
          }
          this.j = "all_default";
        }
        catch (Exception localException1)
        {
          new StringBuilder("{[info=onCreate RobotUrlGenarator.getUrl], [msg=").append(localException1).append("]}").toString();
          continue;
        }
        label510: this.d = localAuthService.getUserInfo();
        String str2 = this.d.getUserId();
        this.d.getUserName();
        a(str2);
      }
    }
    catch (Exception localException2)
    {
      break label189;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default:
    case 4:
    }
    while (true)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      this.b.loadUrl("javascript:offline()");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.RobotXiaoBaoActivity
 * JD-Core Version:    0.6.2
 */