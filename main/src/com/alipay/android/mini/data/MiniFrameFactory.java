package com.alipay.android.mini.data;

import android.text.TextUtils;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.FrameData;
import com.alipay.android.lib.plusin.protocol.IFrameFactory;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

public class MiniFrameFactory
  implements IFrameFactory
{
  public final ProtocolType a()
  {
    return ProtocolType.b;
  }

  public final void a(FrameData paramFrameData)
  {
    Response localResponse = paramFrameData.i();
    JSONObject localJSONObject1 = paramFrameData.k();
    if (localJSONObject1.has("form"))
      paramFrameData.b(localJSONObject1.optJSONObject("form").optString("time"));
    Envelope localEnvelope1 = paramFrameData.h().e();
    Envelope localEnvelope2 = paramFrameData.i().a();
    if (TextUtils.isEmpty(localEnvelope2.d()))
      localEnvelope2.d(localEnvelope1.d());
    if (TextUtils.isEmpty(localEnvelope2.e()))
      localEnvelope2.e(localEnvelope1.e());
    if (TextUtils.isEmpty(localEnvelope2.c()))
      localEnvelope2.c(localEnvelope1.c());
    if (TextUtils.isEmpty(localEnvelope2.b()))
      localEnvelope2.b(localEnvelope1.b());
    JSONObject localJSONObject2 = localJSONObject1.optJSONObject("reflected_data");
    if (localJSONObject2 != null)
    {
      new StringBuilder("session = ").append(localJSONObject2.optString("session", "")).toString();
      LogUtils.g();
      paramFrameData.i().a(localJSONObject2);
    }
    while (true)
    {
      localResponse.b(localJSONObject1.optString("end_code", "0"));
      localResponse.e(localJSONObject1.optString("user_id", ""));
      Object localObject = localJSONObject1.optString("result");
      try
      {
        String str = URLDecoder.decode(localJSONObject1.optString("result"), "UTF-8");
        localObject = str;
        localResponse.c((String)localObject);
        localResponse.d(localJSONObject1.optString("memo", ""));
        return;
        if (!localJSONObject1.has("session"))
          continue;
        JSONObject localJSONObject3 = new JSONObject();
        try
        {
          localJSONObject3.put("session", localJSONObject1.optString("session"));
          if (!TextUtils.isEmpty(TidInfo.g().a()))
            localJSONObject3.put("tid", TidInfo.g().a());
          localResponse.a(localJSONObject3);
        }
        catch (JSONException localJSONException)
        {
          throw new AppErrorException(getClass(), "can not put reflected values");
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          LogUtils.a(localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.data.MiniFrameFactory
 * JD-Core Version:    0.6.2
 */