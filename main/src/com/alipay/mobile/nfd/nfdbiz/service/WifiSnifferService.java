package com.alipay.mobile.nfd.nfdbiz.service;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordContainer;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

public abstract class WifiSnifferService extends ExternalService
{
  public abstract void regestLongLinkReserv();

  public abstract void setActiveTopBaordView(IActiveTopBaordContainer paramIActiveTopBaordContainer);

  public abstract void setTopBoardStateCallBack(ITopBoardStateCallBack paramITopBoardStateCallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfd.nfdbiz.service.WifiSnifferService
 * JD-Core Version:    0.6.2
 */