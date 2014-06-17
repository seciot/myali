package com.alipay.mobile.framework.lbsinfo;

import com.alipay.mobilelbs.common.service.facade.vo.Location;

public abstract interface LBSInfoListener
{
  public abstract void onLBSInfoChanged(Location paramLocation, boolean paramBoolean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.lbsinfo.LBSInfoListener
 * JD-Core Version:    0.6.2
 */