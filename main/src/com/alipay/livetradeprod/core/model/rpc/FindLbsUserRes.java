package com.alipay.livetradeprod.core.model.rpc;

import com.alipay.livetradeprod.core.model.base.DisplayUserInfo;
import com.alipay.livetradeprod.core.model.base.OnsiteBaseRes;
import java.io.Serializable;
import java.util.List;

public class FindLbsUserRes extends OnsiteBaseRes
  implements Serializable
{
  public String timestamp;
  public List<DisplayUserInfo> userList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.rpc.FindLbsUserRes
 * JD-Core Version:    0.6.2
 */