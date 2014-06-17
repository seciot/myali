package com.alipay.mobilewealth.common.service.facade.result;

import java.io.Serializable;

public class CommonPageResult extends CommonResult
  implements Serializable
{
  public int currentPage;
  public long endTime;
  public boolean hasNextPage;
  public int pageSize;
  public int totalPage;
  public int totalSize;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.common.service.facade.result.CommonPageResult
 * JD-Core Version:    0.6.2
 */