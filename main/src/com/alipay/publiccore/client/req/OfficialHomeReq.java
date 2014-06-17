package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.request.PagingReq;
import java.util.List;

public class OfficialHomeReq extends PagingReq
{
  public String channelPackage;
  public String clientVersion;
  public List<String> publicIds;
  public String terminal;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.OfficialHomeReq
 * JD-Core Version:    0.6.2
 */