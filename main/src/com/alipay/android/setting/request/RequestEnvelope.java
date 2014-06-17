package com.alipay.android.setting.request;

import android.text.TextUtils;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.app.util.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestEnvelope
{
  private JSONObject a;

  public RequestEnvelope(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      String str1 = paramJSONObject.toString();
      String str2 = JsonUtils.a(GlobalContext.g(), str1);
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("req_data", str2);
      localJSONObject1.put("namespace", "com.alipay.mobilecashier");
      localJSONObject1.put("api_name", "com.alipay.quickpay");
      localJSONObject1.put("api_version", "4.0.0");
      localJSONObject1.put("params", localJSONObject2);
      localJSONObject1.put("tid", TidInfo.g().a());
      if (!TextUtils.isEmpty(paramString))
        localJSONObject1.put("session", paramString);
      localJSONObject1.put("version", "3.0.0");
      this.a = new JSONObject();
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        this.a.put("data", localJSONObject1);
        return;
        localJSONException1 = localJSONException1;
        localJSONException1.printStackTrace();
      }
      catch (JSONException localJSONException2)
      {
        localJSONException2.printStackTrace();
      }
    }
  }

  public final String a()
  {
    return this.a.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.request.RequestEnvelope
 * JD-Core Version:    0.6.2
 */