package com.alipay.mobileprod.biz.deposit.dto;

import com.alipay.mobileprod.biz.deposit.vo.ComponetDataList;
import com.alipay.mobileprod.core.model.deposit.BaseRespVO;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class QueryItemDetailRes extends BaseRespVO
  implements Serializable
{
  public boolean absence = false;
  public Map<String, String> extDatas = new HashMap();
  public ComponetDataList gameAreaDatas = null;
  public boolean gameAreaExist = false;
  public ComponetDataList gameSkuDatas = null;
  public boolean gameSkuExist = false;
  public Map<String, ComponetDataList> gameSubAreaDatas = new HashMap();
  public String goodsName = null;
  public boolean permitAccountExit = false;
  public String price = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.dto.QueryItemDetailRes
 * JD-Core Version:    0.6.2
 */