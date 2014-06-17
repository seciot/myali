package com.alipay.mobile.base.commonbiz;

import com.alipay.mobile.base.config.impl.ConfigServiceImpl.ConfigBroadCastReceiver;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    BroadcastReceiverDescription localBroadcastReceiverDescription = new BroadcastReceiverDescription();
    localBroadcastReceiverDescription.setMsgCode(new String[] { "com.alipay.mobile.framework.ACTIVITY_RESUME" });
    localBroadcastReceiverDescription.setClassName(ConfigServiceImpl.ConfigBroadCastReceiver.class.getName());
    this.broadcastReceivers.add(localBroadcastReceiverDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.commonbiz.MetaInfo
 * JD-Core Version:    0.6.2
 */