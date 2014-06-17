package com.alipay.android.setting.operator;

import com.alipay.android.app.data.InteractionData;
import com.alipay.android.setting.request.IRequest;
import com.alipay.android.setting.request.IRequestOperator;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.android.setting.request.RequestEnvelope;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public class SetMiniCashierState
  implements IRequestOperator
{
  private IRequest a;

  public final void a(IRequest paramIRequest, RequestContainer paramRequestContainer)
  {
    this.a = paramIRequest;
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject2.put("method", "set");
      localJSONObject2.put("type", "quickpay");
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        while (true)
        {
          localJSONObject1.put("action", localJSONObject2);
          localJSONObject1.put("client_ip", "");
          localJSONObject1.put("external_info", paramRequestContainer.e);
          RequestEnvelope localRequestEnvelope = new RequestEnvelope(localJSONObject1, paramRequestContainer.c);
          if (this.a != null)
          {
            String str1 = paramRequestContainer.d;
            InteractionData localInteractionData = null;
            if (str1 != null)
            {
              localInteractionData = new InteractionData();
              String str2 = "user_id=" + paramRequestContainer.d;
              Header[] arrayOfHeader = new Header[1];
              arrayOfHeader[0] = new BasicHeader("Msp-Param", str2);
              localInteractionData.a(arrayOfHeader);
            }
            this.a.a(localRequestEnvelope.a(), 3, localInteractionData);
          }
          return;
          localJSONException1 = localJSONException1;
          localJSONException1.printStackTrace();
        }
      }
      catch (JSONException localJSONException2)
      {
        while (true)
          localJSONException2.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.operator.SetMiniCashierState
 * JD-Core Version:    0.6.2
 */