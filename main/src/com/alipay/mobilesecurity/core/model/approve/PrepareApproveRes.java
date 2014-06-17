package com.alipay.mobilesecurity.core.model.approve;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.common.spi.approve.AuthOption;
import java.io.Serializable;
import java.util.List;

public class PrepareApproveRes extends MobileSecurityResult
  implements Serializable
{
  public String approveImgUrl;
  public String approvePageTitle;
  public String approvePageType;
  public List<String> approveTextList;
  public String authOptionTitle;
  public List<AuthOption> authOptions;
  public String authTargetDescription;
  public String authTargetLogoUrl;
  public String authTargetTitle;
  public String cancelButtonText;
  public String confirmButtonText;
  public boolean needMobileSp;
  public boolean needPassword;
  public String passwordType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes
 * JD-Core Version:    0.6.2
 */