package com.alipay.publiccore.client.req;

import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class GisUploadReq extends ToString
  implements Serializable
{
  public double accuracy;
  public double latitude;
  public Location location;
  public double longitude;
  public String publicId;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.GisUploadReq
 * JD-Core Version:    0.6.2
 */