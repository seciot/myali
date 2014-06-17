package com.alipay.mobileprod.biz.deposit.dto;

import com.alipay.mobileprod.biz.deposit.vo.ComponetDataList;
import com.alipay.mobileprod.core.model.deposit.BaseRespVO;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class TbLoginAndItemInitRes extends BaseRespVO
  implements Serializable
{
  public Map<String, ComponetDataList> faceDatas = new HashMap();
  public ComponetDataList itemDatas = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.dto.TbLoginAndItemInitRes
 * JD-Core Version:    0.6.2
 */