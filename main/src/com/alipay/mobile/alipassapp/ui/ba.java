package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.alipassapp.biz.bean.CmsObject;
import org.json.JSONObject;

final class ba
  implements Runnable
{
  ba(az paramaz, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    try
    {
      AlipassListActivity.e(this.b.a);
      if (this.a == null)
        return;
      String str = new String(this.a);
      new StringBuilder("cms query result:").append(str).toString();
      JSONObject localJSONObject1 = new JSONObject(str);
      if ("100".equalsIgnoreCase(localJSONObject1.optString("stat")))
      {
        CmsObject localCmsObject = new CmsObject();
        JSONObject localJSONObject2 = localJSONObject1.getJSONObject("statDesc");
        localCmsObject.setDetail(localJSONObject2.optString("detail"));
        localCmsObject.setForwardOpt(localJSONObject2.optString("forwardOpt"));
        localCmsObject.setTitle(localJSONObject2.optString("title"));
        localCmsObject.setUri(localJSONObject2.optString("uri"));
        AlipassListActivity.a(this.b.a, localCmsObject);
        return;
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("error:").append(localException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ba
 * JD-Core Version:    0.6.2
 */