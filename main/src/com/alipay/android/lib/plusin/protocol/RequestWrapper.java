package com.alipay.android.lib.plusin.protocol;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.encrypt.Base64;
import com.alipay.android.app.encrypt.MD5;
import com.alipay.android.app.encrypt.TriDes;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.exception.FailOperatingException;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.exception.UnZipException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.FrameUtils;
import com.alipay.android.app.util.LogUtils;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestWrapper
{
  public static String a = "/sdcard/mspjson/qudaoxuanzhe.json";
  private int b = 0;
  private InteractionData c;

  public RequestWrapper()
  {
  }

  public RequestWrapper(InteractionData paramInteractionData)
  {
    this.c = paramInteractionData;
  }

  private String a(Context paramContext, String paramString1, String paramString2, InteractionData paramInteractionData, Response paramResponse)
  {
    try
    {
      HttpResponse localHttpResponse = RequestUtils.a(paramContext, paramString1, paramString2, paramInteractionData);
      StatusLine localStatusLine = localHttpResponse.getStatusLine();
      paramResponse.a(localStatusLine.getStatusCode());
      paramResponse.a(localStatusLine.getReasonPhrase());
      FrameUtils.a(this.c, localHttpResponse);
      String str = RequestUtils.a(localHttpResponse);
      return str;
    }
    catch (Exception localException)
    {
    }
    throw new NetErrorException();
  }

  private static JSONObject a(String paramString, Response paramResponse)
  {
    JSONObject localJSONObject1 = new JSONObject(paramString).optJSONObject("data");
    if (localJSONObject1 != null)
    {
      paramResponse.a(localJSONObject1.optInt("code", 503));
      paramResponse.a(localJSONObject1.optString("error_msg", ""));
      JSONObject localJSONObject2 = localJSONObject1.optJSONObject("params");
      if (localJSONObject2 != null)
      {
        if (paramResponse.j() == 1000)
        {
          String str = localJSONObject2.optString("public_key");
          if (TextUtils.isEmpty(str))
            break label154;
          GlobalContext.a().c().a(str);
        }
        while (true)
        {
          Envelope localEnvelope = new Envelope();
          localEnvelope.d(localJSONObject2.optString("next_api_name"));
          localEnvelope.e(localJSONObject2.optString("next_api_version"));
          localEnvelope.c(localJSONObject2.optString("next_namespace"));
          localEnvelope.b(localJSONObject2.optString("next_request_url"));
          paramResponse.a(localEnvelope);
          return localJSONObject2;
          label154: MonitorThread.a().a("update rsa key", "rsponse data is no key");
        }
      }
      if (paramResponse.j() == 1000)
        MonitorThread.a().a("update rsa key", "rsponse data is no key");
    }
    while (true)
    {
      return null;
      paramResponse.a(503);
      paramResponse.a("");
    }
  }

  public final FrameData a(Context paramContext, Request paramRequest)
  {
    Response localResponse = new Response();
    JSONObject localJSONObject1 = a(paramContext, paramRequest, localResponse);
    JSONObject localJSONObject2 = localJSONObject1.optJSONObject("reflected_data");
    ProtocolType localProtocolType = paramRequest.d();
    byte[] arrayOfByte1;
    if (localJSONObject2 != null)
    {
      if (TextUtils.equals("true", localJSONObject2.optString("minipay")))
        localProtocolType = ProtocolType.b;
    }
    else
    {
      if (localProtocolType == ProtocolType.a)
        localResponse.a(true);
      if (!localJSONObject1.optBoolean("gzip"))
        break label264;
      JSONObject localJSONObject3 = localJSONObject1.optJSONObject("form");
      if ((localJSONObject3 != null) && (localJSONObject3.has("quickpay")))
        arrayOfByte1 = Base64.a(localJSONObject3.optString("quickpay"));
    }
    while (true)
    {
      try
      {
        byte[] arrayOfByte2 = FrameUtils.a(arrayOfByte1);
        if (TextUtils.equals(MD5.a(arrayOfByte2), localJSONObject1.optString("md5")))
        {
          localJSONObject1.put("form", new JSONObject(new String(arrayOfByte2, "utf-8")));
          new StringBuilder("responsestring decoded ").append(localJSONObject1).toString();
          LogUtils.a();
          FrameData localFrameData = new FrameData(paramRequest, localResponse);
          localFrameData.a(localJSONObject1);
          return FrameFactoryManager.a(localProtocolType, localFrameData);
          localProtocolType = ProtocolType.a;
          break;
        }
        throw new UnZipException("client md5  not equal server md5");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new UnZipException("unzip byte array unsupport encoding");
      }
      catch (UnZipException localUnZipException)
      {
        throw localUnZipException;
      }
      catch (JSONException localJSONException)
      {
        throw new UnZipException("unzip string not jsonObject");
      }
      label264: localResponse.b();
    }
  }

  public final JSONObject a(Context paramContext, Request paramRequest, Response paramResponse)
  {
    String str1 = GlobalContext.g();
    try
    {
      str2 = a(paramContext, paramRequest.a(), paramRequest.a(str1).toString(), paramRequest.b(), paramResponse);
      new StringBuilder("responseString:").append(str2).toString();
      LogUtils.g();
      paramResponse.a(Calendar.getInstance().getTimeInMillis());
      if (paramRequest.c())
      {
        localJSONObject2 = v(str2, paramResponse);
        if ((paramResponse.j() == 1000) && (this.b < 3))
        {
          this.b = (1 + this.b);
          return a(paramContext, paramRequest, paramResponse);
        }
        if (paramResponse.j() != 0)
        {
          MonitorThread.a().a("server cann't respone data", paramRequest.toString());
          throw new FailOperatingException(paramResponse.k());
        }
      }
    }
    catch (NetErrorException localNetErrorException)
    {
      JSONObject localJSONObject2;
      throw localNetErrorException;
      this.b = 0;
      str3 = localJSONObject2.optString("res_data");
      if (TextUtils.isEmpty(str3))
        throw new AppErrorException(getClass(), "response data is empty");
    }
    catch (FailOperatingException localFailOperatingException)
    {
      String str3;
      throw localFailOperatingException;
      String str4 = TriDes.b(str1, str3);
      new StringBuilder("respData:").append(str4).toString();
      LogUtils.e();
      JSONObject localJSONObject3 = new JSONObject(str4);
      return localJSONObject3;
    }
    catch (AppErrorException localAppErrorException)
    {
      String str2;
      throw localAppErrorException;
      JSONObject localJSONObject1 = a(str2, paramResponse);
      new StringBuilder("respData:").append(localJSONObject1.toString()).toString();
      LogUtils.e();
      return localJSONObject1;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    throw new NetErrorException();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.protocol.RequestWrapper
 * JD-Core Version:    0.6.2
 */