package com.alipay.publiccore.core.model.account;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class LayoutModel extends ToString
  implements Serializable
{
  public String agreementId;
  public String backImageUrl;
  public String baseColor;
  public List<ButtonObject> button;
  public boolean canAddThirdAccount;
  public boolean canChat;
  public String disThirdAccountText;
  public String headImageUrl;
  public String instId;
  public String publicId;
  public String publicName;
  public String templateId;
  public boolean uploadGis;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.account.LayoutModel
 * JD-Core Version:    0.6.2
 */