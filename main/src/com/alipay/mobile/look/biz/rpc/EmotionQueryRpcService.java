package com.alipay.mobile.look.biz.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface EmotionQueryRpcService
{
  @OperationType("alipay.mobile.emotion.queryEmotion")
  @CheckLogin
  public abstract EmotionQueryResponse queryEmotion(EmotionQueryRequest paramEmotionQueryRequest);

  @OperationType("alipay.mobile.emotion.queryTemplate")
  @CheckLogin
  public abstract EmotionTemplateQueryResponse queryTemplate(EmotionTemplateQueryRequest paramEmotionTemplateQueryRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.look.biz.rpc.EmotionQueryRpcService
 * JD-Core Version:    0.6.2
 */