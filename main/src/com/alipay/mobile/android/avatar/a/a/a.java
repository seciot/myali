package com.alipay.mobile.android.avatar.a.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileprod.biz.shared.account.domain.ex.UploadHeadImgReq;
import com.alipay.mobileprod.biz.shared.account.domain.ex.UploadHeadImgRes;
import com.alipay.mobileprod.biz.shared.account.service.ex.UploadHeadImgService;

public final class a
{
  RpcService a = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());

  public final UploadHeadImgRes a(String paramString)
  {
    UploadHeadImgService localUploadHeadImgService = (UploadHeadImgService)this.a.getRpcProxy(UploadHeadImgService.class);
    UploadHeadImgReq localUploadHeadImgReq = new UploadHeadImgReq();
    localUploadHeadImgReq.setHeadImg(paramString);
    return localUploadHeadImgService.uploadHeadImg(localUploadHeadImgReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.a.a.a
 * JD-Core Version:    0.6.2
 */