package com.alipay.mobileapp.biz.rpc.dynamic.conf.vo;

import com.alipay.mobileapp.core.model.dynamic.conf.vo.AppDynamicConfTabVO;
import java.io.Serializable;
import java.util.List;

public class AppDynamicConfRes
  implements Serializable
{
  public List<AppDynamicConfTabVO> appDynamicConfTabVOList;
  public String message;
  public boolean success;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.dynamic.conf.vo.AppDynamicConfRes
 * JD-Core Version:    0.6.2
 */