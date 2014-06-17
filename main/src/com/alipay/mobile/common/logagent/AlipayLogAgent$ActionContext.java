package com.alipay.mobile.common.logagent;

import java.util.concurrent.atomic.AtomicLong;

public class AlipayLogAgent$ActionContext
{
  public String actionId = AlipayLogAgent.ACTION_STATUS_ALIPAY_START;
  public String appID = "";
  public String appVersion = "";
  public BehaviourIdEnum behavID = BehaviourIdEnum.NONE;
  public AtomicLong draw_times = new AtomicLong(0L);
  public long time = System.currentTimeMillis();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.AlipayLogAgent.ActionContext
 * JD-Core Version:    0.6.2
 */