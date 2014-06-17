package com.alipay.mobileapp.biz.rpc.shortlink;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface CreateShortLinkFacade
{
  @OperationType("alipay.client.createShortLink")
  public abstract CreateShortLinkRes createShortLink(CreateShortLinkReq paramCreateShortLinkReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.shortlink.CreateShortLinkFacade
 * JD-Core Version:    0.6.2
 */