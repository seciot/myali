package com.alipay.mobileprod.biz.shared.account.service.ex;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.shared.account.domain.ex.UploadHeadImgReq;
import com.alipay.mobileprod.biz.shared.account.domain.ex.UploadHeadImgRes;

public abstract interface UploadHeadImgService
{
  @OperationType("alipay.home.account.uploadHeadImg")
  @CheckLogin
  public abstract UploadHeadImgRes uploadHeadImg(UploadHeadImgReq paramUploadHeadImgReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.account.service.ex.UploadHeadImgService
 * JD-Core Version:    0.6.2
 */