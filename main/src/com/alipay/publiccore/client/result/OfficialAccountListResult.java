package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.OfficialAccountInfo;
import com.alipay.publiccore.common.service.facade.model.result.PagingResult;
import java.util.ArrayList;
import java.util.List;

public class OfficialAccountListResult extends PagingResult
{
  public List<OfficialAccountInfo> officialAccounts = new ArrayList();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialAccountListResult
 * JD-Core Version:    0.6.2
 */