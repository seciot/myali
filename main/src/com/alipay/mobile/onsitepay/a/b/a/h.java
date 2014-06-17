package com.alipay.mobile.onsitepay.a.b.a;

import com.alipay.livetradeprod.core.model.base.OnsiteTradeInfo;
import com.alipay.mobile.onsitepay.a.b.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

final class h
  implements Runnable
{
  h(f paramf, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      new StringBuilder("longlink payLoadData = ").append(this.a).toString();
      JSONObject localJSONObject = new JSONObject(this.a);
      String str1 = localJSONObject.optString("action");
      String str2 = localJSONObject.optString("payerAccount");
      String str3 = localJSONObject.optString("memo");
      String str4 = localJSONObject.optString("userId");
      String str5 = localJSONObject.optString("payerName");
      String str6 = localJSONObject.optString("headImageUrl");
      OnsiteTradeInfo localOnsiteTradeInfo = new OnsiteTradeInfo();
      localOnsiteTradeInfo.action = str1;
      localOnsiteTradeInfo.payerAccount = str2;
      localOnsiteTradeInfo.memo = str3;
      localOnsiteTradeInfo.userId = str4;
      localOnsiteTradeInfo.payerName = str5;
      localOnsiteTradeInfo.headImageUrl = str6;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localOnsiteTradeInfo);
      this.b.c.a(localArrayList);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.h
 * JD-Core Version:    0.6.2
 */