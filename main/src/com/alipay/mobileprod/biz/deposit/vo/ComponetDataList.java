package com.alipay.mobileprod.biz.deposit.vo;

import com.alipay.mobileprod.core.model.deposit.ToString;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ComponetDataList extends ToString
  implements Serializable
{
  public List<ComponetData> datas = new ArrayList();
  public String defaultDataValue = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.vo.ComponetDataList
 * JD-Core Version:    0.6.2
 */