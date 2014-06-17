package com.alipay.android.app.util;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.exception.UnZipException;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import com.alipay.mobile.framework.AlipayApplication;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public class FrameUtils
{
  public static Request a(InteractionData paramInteractionData, String paramString, JSONObject paramJSONObject, boolean paramBoolean)
  {
    GlobalContext localGlobalContext = GlobalContext.a();
    TidInfo localTidInfo = TidInfo.g();
    JSONObject localJSONObject = JsonUtils.a(null, paramJSONObject);
    try
    {
      if (!TextUtils.isEmpty(localTidInfo.a()))
        localJSONObject.put("tid", localTidInfo.a());
      while (true)
      {
        localJSONObject.put("user_agent", localGlobalContext.c().a(localTidInfo));
        localJSONObject.put("has_alipay", DeviceInfo.c(localGlobalContext.b()));
        localJSONObject.put("external_info", paramString);
        localJSONObject.put("utdid", localGlobalContext.i());
        if (!paramJSONObject.has("protocol"))
          break label697;
        localProtocolType = (ProtocolType)paramJSONObject.opt("protocol");
        if (localProtocolType == null)
          localProtocolType = localGlobalContext.c().s();
        if (localProtocolType != ProtocolType.b)
          break;
        localObject1 = a(localJSONObject, paramBoolean);
        if ((localObject1 == null) || (TextUtils.isEmpty(paramString)))
          break label688;
        String[] arrayOfString = paramString.split("&");
        if (arrayOfString.length == 0)
          break label688;
        int i = arrayOfString.length;
        int j = 0;
        localObject2 = null;
        localObject3 = null;
        localObject4 = null;
        localObject5 = null;
        while (true)
        {
          if (j >= i)
            break label462;
          str2 = arrayOfString[j];
          if (TextUtils.isEmpty((CharSequence)localObject5))
          {
            if (str2.contains("biz_type"))
              break;
            localObject5 = null;
          }
          label233: if (TextUtils.isEmpty((CharSequence)localObject4))
          {
            if (str2.contains("biz_no"))
              break label432;
            localObject4 = null;
          }
          label254: if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            if ((!TextUtils.isEmpty(str2)) && (TextUtils.equals(str2, "trade_no")))
              break label442;
            localObject3 = null;
          }
          label283: if (TextUtils.isEmpty((CharSequence)localObject2))
          {
            if (str2.contains("app_userid"))
              break label452;
            localObject2 = null;
          }
          label304: j++;
        }
        localTidInfo.d();
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        Object localObject1;
        Object localObject2;
        Object localObject3;
        Object localObject4;
        Object localObject5;
        String str2;
        LogUtils.a(localJSONException);
        continue;
        IAppConfig localIAppConfig = GlobalContext.a().c();
        Envelope localEnvelope = new Envelope();
        localEnvelope.b(localIAppConfig.f());
        localEnvelope.c(localIAppConfig.k());
        localEnvelope.d(localIAppConfig.l());
        localEnvelope.e(localIAppConfig.m());
        if (localJSONObject != null);
        for (Request localRequest = new Request(localEnvelope, localJSONObject, null, ProtocolType.a); ; localRequest = null)
        {
          localObject1 = localRequest;
          break;
          localObject5 = a(str2);
          break label233;
          label432: localObject4 = a(str2);
          break label254;
          label442: localObject3 = a(str2);
          break label283;
          label452: localObject2 = a(str2);
          break label304;
          label462: StringBuilder localStringBuilder = new StringBuilder();
          if (!TextUtils.isEmpty((CharSequence)localObject5))
            localStringBuilder.append("biz_type=" + (String)localObject5 + ";");
          if (!TextUtils.isEmpty((CharSequence)localObject4))
            localStringBuilder.append("biz_no=" + (String)localObject4 + ";");
          if (!TextUtils.isEmpty((CharSequence)localObject3))
            localStringBuilder.append("trade_no=" + (String)localObject3 + ";");
          if (!TextUtils.isEmpty((CharSequence)localObject2))
            localStringBuilder.append("app_userid=" + (String)localObject2 + ";");
          if (localStringBuilder.length() != 0)
          {
            String str1 = localStringBuilder.toString();
            if (str1.endsWith(";"))
              str1 = str1.substring(0, -1 + str1.length());
            Header[] arrayOfHeader = new Header[1];
            arrayOfHeader[0] = new BasicHeader("Msp-Param", str1);
            paramInteractionData.a(arrayOfHeader);
            ((Request)localObject1).a(paramInteractionData);
          }
          label688: return localObject1;
        }
        label697: ProtocolType localProtocolType = null;
      }
    }
  }

  public static Request a(JSONObject paramJSONObject)
  {
    Envelope localEnvelope = new Envelope();
    localEnvelope.b(GlobalContext.a().c().f());
    localEnvelope.c("com.alipay.mobilecashier");
    localEnvelope.d("gen.tid");
    localEnvelope.e("1.0.0");
    return new Request(localEnvelope, paramJSONObject, null, ProtocolType.a);
  }

  private static Request a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    IAppConfig localIAppConfig = GlobalContext.a().c();
    Envelope localEnvelope = new Envelope();
    localEnvelope.b(localIAppConfig.f());
    localEnvelope.c("com.alipay.mobilecashier");
    localEnvelope.d("/cashier/main");
    localEnvelope.e("4.0.0");
    if (paramJSONObject != null)
      try
      {
        paramJSONObject.put("new_client_key", TidInfo.i());
        label57: Request localRequest = new Request(localEnvelope, paramJSONObject, null, ProtocolType.b);
        localRequest.a(paramBoolean);
        return localRequest;
      }
      catch (JSONException localJSONException)
      {
        break label57;
      }
    return null;
  }

  private static String a(String paramString)
  {
    String[] arrayOfString = paramString.split("=");
    int i = arrayOfString.length;
    String str = null;
    if (i > 1)
    {
      str = arrayOfString[1];
      if (str.contains("\""))
        str = str.replaceAll("\"", "");
    }
    return str;
  }

  public static void a(InteractionData paramInteractionData, HttpResponse paramHttpResponse)
  {
    Header[] arrayOfHeader = paramHttpResponse.getHeaders("Msp-Param");
    if ((paramInteractionData != null) && (arrayOfHeader.length > 0))
      paramInteractionData.a(arrayOfHeader);
  }

  public static void a(boolean paramBoolean)
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(AlipayApplication.getInstance());
    Intent localIntent = new Intent("com.alipay.android.app.after.remove.current.payTask");
    localIntent.putExtra("isClear", paramBoolean);
    localLocalBroadcastManager.sendBroadcast(localIntent);
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
      localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
      byte[] arrayOfByte1 = new byte[4096];
      localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte1, 0, arrayOfByte1.length);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      ByteArrayInputStream localByteArrayInputStream;
      GZIPInputStream localGZIPInputStream;
      ByteArrayOutputStream localByteArrayOutputStream;
      localUnsupportedEncodingException.printStackTrace();
      throw new UnZipException("UnsupportedEncodingException");
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.flush();
      localByteArrayOutputStream.close();
      localGZIPInputStream.close();
      localByteArrayInputStream.close();
      return arrayOfByte2;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    throw new UnZipException("IOException");
  }

  public static void b(JSONObject paramJSONObject)
  {
    String str1;
    String str2;
    if ((paramJSONObject.has("client_key")) && (paramJSONObject.has("tid")))
    {
      str1 = paramJSONObject.optString("client_key");
      str2 = paramJSONObject.optString("tid");
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)));
    }
    else
    {
      return;
    }
    Context localContext = GlobalContext.a().b();
    TidInfo localTidInfo = TidInfo.g();
    localTidInfo.a(str2);
    localTidInfo.b(str1);
    localTidInfo.a(localContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.FrameUtils
 * JD-Core Version:    0.6.2
 */