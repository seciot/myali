package android.taobao.service.appdevice.net.mtop;

import android.content.Context;
import android.content.ContextWrapper;
import android.taobao.service.appdevice.net.async.RequestParams;
import android.taobao.service.appdevice.util.DigestUtils;
import android.taobao.service.appdevice.util.LogHelper;
import android.taobao.service.appdevice.util.PhoneInfo;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.taobao.securityjni.SecretUtil;
import java.io.ByteArrayInputStream;

public class MtopRequestHelper
{
  public static final String SPLIT_STR = "&";

  public static void checkAppKeyAndAppSecret(MtopRequest paramMtopRequest, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramMtopRequest.getAppKey()))
      paramMtopRequest.setAppKey(paramString1);
    if (TextUtils.isEmpty(paramMtopRequest.getAppSecret()))
      paramMtopRequest.setAppSecret(paramString2);
  }

  public static long getTime()
  {
    return System.currentTimeMillis();
  }

  public static RequestParams getUrlWithRequestParams(Context paramContext, MtopRequest paramMtopRequest)
  {
    RequestParams localRequestParams = new RequestParams();
    localRequestParams.put("api", paramMtopRequest.getApi());
    localRequestParams.put("v", paramMtopRequest.getV());
    long l = getTime();
    localRequestParams.put("t", l);
    String str1 = PhoneInfo.getImei(paramContext);
    localRequestParams.put("imei", str1);
    String str2 = PhoneInfo.getImsi(paramContext);
    localRequestParams.put("imsi", str2);
    localRequestParams.put("ttid", paramMtopRequest.getTtId());
    localRequestParams.put("appKey", paramMtopRequest.getAppKey());
    if (!TextUtils.isEmpty(paramMtopRequest.getDeviceId()))
      localRequestParams.put("deviceId", paramMtopRequest.getDeviceId());
    String str3 = JSON.toJSONString(paramMtopRequest.getParams());
    String str4 = paramMtopRequest.getAppKey();
    String str5 = paramMtopRequest.getAppSecret();
    if (TextUtils.isEmpty(str4))
      throw new NullPointerException("appKey is null");
    if (TextUtils.isEmpty(str5))
      LogHelper.Logd("MtopRequestHelper", "appSecret is null,to sign lib.*.*.so");
    for (String str6 = toV3Sign(paramContext, paramMtopRequest.getApi(), paramMtopRequest.getV(), str1, str2, l, str3, paramMtopRequest.getEcode()); ; str6 = toV3Sign(str4, str5, paramMtopRequest.getApi(), paramMtopRequest.getV(), str1, str2, l, str3, paramMtopRequest.getEcode()))
    {
      localRequestParams.put("data", str3);
      localRequestParams.put("sign", str6);
      if ((paramMtopRequest.getSId() != null) || (!"".equals(paramMtopRequest.getSId())))
        localRequestParams.put("sid", paramMtopRequest.getSId());
      return localRequestParams;
    }
  }

  public static String toV3Sign(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, String paramString5, String paramString6)
  {
    SecretUtil localSecretUtil = new SecretUtil((ContextWrapper)paramContext);
    if (!TextUtils.isEmpty(paramString6))
      return localSecretUtil.getSign(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramLong);
    return localSecretUtil.getSign(paramString1, paramString2, paramString3, paramString4, paramString5, paramLong);
  }

  public static String toV3Sign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong, String paramString7, String paramString8)
  {
    try
    {
      String str1 = DigestUtils.md5ToHex(new ByteArrayInputStream(paramString1.getBytes("UTF-8")));
      StringBuffer localStringBuffer = new StringBuffer();
      if ((paramString8 != null) && (!"".equals(paramString8)))
      {
        localStringBuffer.append(paramString8);
        localStringBuffer.append("&");
      }
      localStringBuffer.append(paramString2);
      localStringBuffer.append("&");
      localStringBuffer.append(str1);
      localStringBuffer.append("&");
      localStringBuffer.append(paramString3);
      localStringBuffer.append("&");
      localStringBuffer.append(paramString4);
      localStringBuffer.append("&");
      localStringBuffer.append(paramString5);
      localStringBuffer.append("&");
      localStringBuffer.append(paramString6);
      localStringBuffer.append("&");
      localStringBuffer.append(DigestUtils.md5ToHex(new ByteArrayInputStream(paramString7.getBytes("UTF-8"))));
      localStringBuffer.append("&");
      localStringBuffer.append(paramLong);
      String str2 = DigestUtils.md5ToHex(new ByteArrayInputStream(localStringBuffer.toString().getBytes("UTF-8")));
      return str2;
    }
    catch (Exception localException)
    {
      throw localException;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopRequestHelper
 * JD-Core Version:    0.6.2
 */