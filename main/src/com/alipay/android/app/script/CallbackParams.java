package com.alipay.android.app.script;

import org.json.JSONObject;

public class CallbackParams
{
  private JSONObject mData;

  public CallbackParams(JSONObject paramJSONObject)
  {
    this.mData = paramJSONObject;
  }

  public String getValue(String paramString)
  {
    if (this.mData.has(paramString))
      return this.mData.optString(paramString);
    return null;
  }

  public String toString()
  {
    if (this.mData == null)
      return null;
    return this.mData.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.script.CallbackParams
 * JD-Core Version:    0.6.2
 */