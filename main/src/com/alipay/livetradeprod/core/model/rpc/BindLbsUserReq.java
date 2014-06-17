package com.alipay.livetradeprod.core.model.rpc;

import com.alipay.livetradeprod.core.model.base.SoundWaveBaseReq;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import java.io.Serializable;

public class BindLbsUserReq extends SoundWaveBaseReq
  implements Serializable
{
  public Location location;
  public String tid;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.rpc.BindLbsUserReq
 * JD-Core Version:    0.6.2
 */