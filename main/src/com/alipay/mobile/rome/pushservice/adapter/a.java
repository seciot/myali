package com.alipay.mobile.rome.pushservice.adapter;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.pushsdk.AliPushInterface;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  public static final String a = a.class.getSimpleName();
  private Context b;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  private static StringBuffer a(JSONObject paramJSONObject)
  {
    new StringBuilder("parseAppParams: appParams=").append(paramJSONObject.toString()).toString();
    Iterator localIterator = paramJSONObject.keys();
    StringBuffer localStringBuffer = new StringBuffer();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2;
      try
      {
        str2 = URLEncoder.encode(paramJSONObject.optString(str1), "UTF-8");
        if (str2.length() <= 0)
          continue;
        if (localStringBuffer.length() > 0)
          localStringBuffer.append("&");
        if (str1.equalsIgnoreCase("saId"))
          localStringBuffer.append("appId=" + str2);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        return null;
      }
      localStringBuffer.append(str1 + "=" + str2);
    }
    return localStringBuffer;
  }

  public final void a(String paramString1, String paramString2)
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString1);
      String str1 = localJSONObject1.optString("type");
      JSONObject localJSONObject2 = localJSONObject1.optJSONObject("params");
      new StringBuilder("handlePayload: actionType=").append(str1).toString();
      Intent localIntent3;
      if (localJSONObject2 != null)
      {
        if (!"clientupgrade".equalsIgnoreCase(str1))
          break label134;
        String str4 = localJSONObject2.toString();
        new StringBuilder("onUpgrade: onUpgrade = ").append(str4).toString();
        localIntent3 = new Intent(this.b, AlipayPushUpgrade.class);
        localIntent3.putExtra("upgrade_params", str4);
        localIntent3.addFlags(268435456);
      }
      try
      {
        this.b.startActivity(localIntent3);
        while (true)
        {
          return;
          label134: String str2;
          Object localObject;
          if ("browser".equalsIgnoreCase(str1))
          {
            str2 = localJSONObject2.toString();
            new StringBuilder("onBrowser: url = ").append(str2).toString();
            localObject = "";
          }
          try
          {
            String str3 = new JSONObject(str2).optString("url");
            localObject = str3;
            label197: if ((localObject != null) && (((String)localObject).length() > 0))
            {
              if ((!((String)localObject).startsWith("http://")) && (!((String)localObject).startsWith("https://")))
                localObject = "http://" + (String)localObject;
              Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
              localIntent2.addFlags(268435456);
              this.b.startActivity(localIntent2);
              return;
              new StringBuilder("onLaunchApps: msgKey=").append(paramString2).append(", appParams=").append(localJSONObject2.toString()).toString();
              if (("startapp".equalsIgnoreCase(str1)) || ("home".equalsIgnoreCase(str1)) || ("openurl".equalsIgnoreCase(str1)))
              {
                StringBuffer localStringBuffer = a(localJSONObject2);
                if (localStringBuffer.length() > 0)
                  localStringBuffer.append("&");
                localStringBuffer.append("tagfrom=push");
                localStringBuffer.append("&");
                localStringBuffer.append("tagid=" + paramString2);
                Uri localUri = Uri.parse("alipays://platformapi/" + str1 + "?" + localStringBuffer.toString());
                new StringBuilder("onLaunchApps() uri:").append(localUri.toString()).toString();
                Intent localIntent1 = new Intent("android.intent.action.VIEW", localUri);
                localIntent1.addCategory("android.intent.category.BROWSABLE");
                localIntent1.addCategory("android.intent.category.DEFAULT");
                localIntent1.addFlags(268435456);
                this.b.startActivity(localIntent1);
                return;
              }
            }
          }
          catch (JSONException localJSONException2)
          {
            break label197;
          }
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
      }
    }
    catch (JSONException localJSONException1)
    {
    }
  }

  public final void b(String paramString1, String paramString2)
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString2);
      String str1 = localJSONObject1.optString("type");
      JSONObject localJSONObject2 = localJSONObject1.optJSONObject("params");
      JSONObject localJSONObject3 = localJSONObject1.optJSONObject("ext");
      new StringBuilder("handleExtData: actionType=").append(str1).toString();
      if ("startapp".equalsIgnoreCase(str1))
      {
        if ((localJSONObject2 != null) && (localJSONObject2.length() > 0) && (localJSONObject3 != null))
        {
          new StringBuilder("onLaunchService: appParams=").append(localJSONObject2.toString()).append(", appExt=").append(localJSONObject3.toString()).toString();
          String str2 = localJSONObject2.optString("saId");
          new StringBuilder("getAppId: appId=").append(str2).toString();
          if ((str2 == null) || (str2.length() <= 0))
            break label435;
          LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.b);
          Intent localIntent1 = new Intent("com.alipay.mobile.push.CMD_TRANSFERD");
          localIntent1.putExtra("push_appId", str2);
          localIntent1.putExtra("push_ext", localJSONObject3.toString());
          localLocalBroadcastManager.sendBroadcast(localIntent1);
          new StringBuilder("onLaunchService: sendBroadcast with action:").append("com.alipay.mobile.push.CMD_TRANSFERD").toString();
        }
      }
      else
      {
        if ("pushTest".equalsIgnoreCase(str1))
        {
          if ((paramString1 != null) && (paramString1.length() > 0))
          {
            String str3 = "";
            if (localJSONObject2 != null)
              str3 = localJSONObject2.toString();
            AliPushInterface.activeReport(this.b, paramString1, str3);
            return;
          }
          return;
        }
        if ("resUpdate".equalsIgnoreCase(str1))
          if ((paramString1 != null) && (paramString1.length() > 0))
          {
            AliPushInterface.activeReport(this.b, paramString1, "");
            String str4 = localJSONObject2.toString();
            new StringBuilder("onResUpdate: appParams=").append(str4).toString();
            if ((str4 == null) || (str4.length() <= 0))
              break label435;
            Intent localIntent2 = new Intent("com.alipay.mobile.push.CMD_RESUPDATE");
            localIntent2.putExtra("push_ext", str4);
            this.b.sendBroadcast(localIntent2);
            new StringBuilder("onResUpdate: 1 sendBroadcast with action:").append("com.alipay.mobile.push.CMD_RESUPDATE").toString();
          }
      }
      label435: return;
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.a
 * JD-Core Version:    0.6.2
 */