package com.alipay.mobileprod.biz.contact.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.contact.model.AlipayContactUserInfo;
import com.alipay.mobileprod.biz.contact.model.UploadContact;
import java.util.List;
import java.util.Map;

public abstract interface ContactManageServiceFacade
{
  @OperationType("alipay.mobileprod.contact.getAlipayContactList")
  @CheckLogin
  public abstract List<AlipayContactUserInfo> getAlipayContactList();

  @OperationType("alipay.mobileprod.contact.getAvatarByUserId")
  @CheckLogin
  public abstract String getAvatarByUserId(String paramString);

  @OperationType("alipay.mobileprod.contact.getAvatarByUserIdBatch")
  @CheckLogin
  public abstract Map<String, String> getAvatarByUserIdBatch(List<String> paramList);

  @OperationType("alipay.mobileprod.contact.upload")
  public abstract boolean upload(UploadContact paramUploadContact, boolean paramBoolean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.facade.ContactManageServiceFacade
 * JD-Core Version:    0.6.2
 */