package com.alipay.mobile.deviceAuthorization.app;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.deviceAuthorization.ui.AuthAdminActivity;
import com.alipay.mobile.deviceAuthorization.ui.AuthorizeLogsActivity_;
import com.alipay.mobile.deviceAuthorization.ui.LoginLogsActivity_;
import com.alipay.mobile.deviceAuthorization.ui.LoginLogsWelcomeActivity_;
import com.alipay.mobile.deviceAuthorization.ui.PermAuthActivity_;
import com.alipay.mobile.deviceAuthorization.ui.ScanErrorActivity;
import com.alipay.mobile.deviceAuthorization.ui.TempAuthActivity_;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobilesecurity.biz.gw.service.auth.AuthServiceFacade;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthBaseResult;

public class AuthorizationApp extends ActivityApplication
{
  private AuthServiceFacade a;
  private DeviceService b;

  private void a(Bundle paramBundle)
  {
    if (paramBundle == null);
    try
    {
      getMicroApplicationContext().finishApp(null, "20000055", null);
      return;
      if ("manage".equalsIgnoreCase(paramBundle.getString("launchType")))
      {
        getMicroApplicationContext().startActivity(this, AuthAdminActivity.class.getName());
        return;
      }
    }
    catch (Exception localException)
    {
      getMicroApplicationContext().finishApp(null, "20000055", null);
      return;
    }
    if ("authorizeLogs".equalsIgnoreCase(paramBundle.getString("launchType")))
    {
      getMicroApplicationContext().startActivity(this, AuthorizeLogsActivity_.class.getName());
      return;
    }
    if ("loginLogs".equalsIgnoreCase(paramBundle.getString("launchType")))
    {
      getMicroApplicationContext().startActivity(this, LoginLogsActivity_.class.getName());
      return;
    }
    if ("loginLogsWelcome".equalsIgnoreCase(paramBundle.getString("launchType")))
    {
      getMicroApplicationContext().startActivity(this, LoginLogsWelcomeActivity_.class.getName());
      return;
    }
    String str1 = paramBundle.getString("bizData");
    JSONObject localJSONObject;
    String str2;
    String str3;
    String str4;
    String str5;
    String str6;
    String str7;
    String str8;
    String str9;
    String str10;
    String str11;
    String str16;
    String str12;
    String str17;
    Object localObject;
    String str14;
    String str13;
    String str15;
    if (str1 != null)
    {
      localJSONObject = (JSONObject)JSON.parse(str1);
      new StringBuilder("bizDataJson:").append(localJSONObject).toString();
      str2 = (String)localJSONObject.get("aPage");
      str3 = (String)localJSONObject.get("aId");
      str4 = (String)localJSONObject.get("aType");
      str5 = (String)localJSONObject.get("targetId");
      str6 = (String)localJSONObject.get("targetType");
      str7 = (String)localJSONObject.get("partnerId");
      str8 = (String)localJSONObject.get("resultCode");
      str9 = (String)localJSONObject.get("title");
      str10 = (String)localJSONObject.get("message");
      if ((str2 != null) && (str3 != null) && (str4 != null))
        break label978;
      str11 = (String)localJSONObject.get("launchType");
      if (str11.equalsIgnoreCase("authorize"))
      {
        String str20 = (String)localJSONObject.get("authId");
        str16 = null;
        str12 = "003";
        str17 = null;
        localObject = str20;
        str14 = null;
        str13 = "P";
        str15 = null;
      }
    }
    while (true)
      if (str13 == null)
      {
        new StringBuilder("page不能为空:page=").append(str13).toString();
        getMicroApplicationContext().finishApp(null, "20000055", null);
        return;
        if (str11.equalsIgnoreCase("authorizeLogin"))
        {
          String str19 = (String)localJSONObject.get("securityId");
          str12 = "001";
          localObject = str19;
          str13 = "T";
          str14 = null;
          str15 = null;
          str16 = null;
          str17 = null;
        }
        else if (str11.equalsIgnoreCase("authorizePassword"))
        {
          String str18 = (String)localJSONObject.get("securityId");
          str12 = "002";
          localObject = str18;
          str13 = "T";
          str14 = null;
          str15 = null;
          str16 = null;
          str17 = null;
        }
        else
        {
          if (str11.equalsIgnoreCase("manage"))
          {
            getMicroApplicationContext().startActivity(this, AuthAdminActivity.class.getName());
            return;
          }
          if (str11.equalsIgnoreCase("errPage"))
          {
            str2 = "E";
            break label978;
            str13 = paramBundle.getString("aPage");
            localObject = paramBundle.getString("aId");
            str12 = paramBundle.getString("aType");
            str17 = paramBundle.getString("bizType");
            str16 = paramBundle.getString("actionType");
            str15 = paramBundle.getString("tradeNO");
            str14 = paramBundle.getString("gmtCreate");
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            str9 = null;
            str10 = null;
          }
        }
      }
      else
      {
        if (str13.equalsIgnoreCase("P"))
        {
          Intent localIntent1 = new Intent(getMicroApplicationContext().getApplicationContext(), PermAuthActivity_.class);
          localIntent1.putExtra("id", (String)localObject);
          localIntent1.putExtra("type", str12);
          localIntent1.putExtra("targetId", str5);
          localIntent1.putExtra("targetType", str6);
          localIntent1.putExtra("partnerId", str7);
          getMicroApplicationContext().startActivity(this, localIntent1);
          return;
        }
        if (str13.equalsIgnoreCase("T"))
        {
          Intent localIntent2 = new Intent(getMicroApplicationContext().getApplicationContext(), TempAuthActivity_.class);
          localIntent2.putExtra("id", (String)localObject);
          localIntent2.putExtra("type", str12);
          getMicroApplicationContext().startActivity(this, localIntent2);
          return;
        }
        if (str13.equalsIgnoreCase("E"))
        {
          Intent localIntent3 = new Intent(getMicroApplicationContext().getApplicationContext(), ScanErrorActivity.class);
          localIntent3.putExtra("resultCode", str8);
          localIntent3.putExtra("title", str9);
          localIntent3.putExtra("message", str10);
          getMicroApplicationContext().startActivity(this, localIntent3);
          return;
        }
        if (str13.equalsIgnoreCase("U"))
        {
          new a((byte)0).execute(new String[] { localObject });
          Bundle localBundle = new Bundle();
          localBundle.putString("actionType", str16);
          localBundle.putString("bizType", str17);
          localBundle.putString("tradeNO", str15);
          localBundle.putString("gmtCreate", str14);
          AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000055", "20000003", localBundle);
          getMicroApplicationContext().finishApp(null, "20000055", null);
          return;
        }
        getMicroApplicationContext().finishApp(null, "20000055", null);
        return;
        label978: str12 = str4;
        localObject = str3;
        str13 = str2;
        str14 = null;
        str15 = null;
        str16 = null;
        str17 = null;
      }
  }

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    a(paramBundle);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    a(paramBundle);
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }

  private final class a extends AsyncTask<String, String, AuthBaseResult>
  {
    private a()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.app.AuthorizationApp
 * JD-Core Version:    0.6.2
 */