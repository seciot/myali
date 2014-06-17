package com.alipay.mobilegw.biz.shared.processer.getRsaKey;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface GetRsaKeyService
{
  @OperationType("alipay.client.getRSAKey")
  public abstract RSAPKeyResult getRSAKey();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.getRsaKey.GetRsaKeyService
 * JD-Core Version:    0.6.2
 */