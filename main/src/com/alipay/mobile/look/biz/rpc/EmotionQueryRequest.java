package com.alipay.mobile.look.biz.rpc;

import java.io.Serializable;

public class EmotionQueryRequest extends BaseRpcRequest
  implements Serializable
{
  private static final long serialVersionUID = 4075875600529564074L;
  public String emotionID = null;
  public String name;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.look.biz.rpc.EmotionQueryRequest
 * JD-Core Version:    0.6.2
 */