package com.alipay.mobile.h5container.extenal;

import com.alibaba.fastjson.JSONObject;

public abstract interface ICallInfo
{
  public abstract void callBack(JSONObject paramJSONObject);

  public abstract JSONObject getParam();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.h5container.extenal.ICallInfo
 * JD-Core Version:    0.6.2
 */