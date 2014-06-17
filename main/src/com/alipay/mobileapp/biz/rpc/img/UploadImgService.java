package com.alipay.mobileapp.biz.rpc.img;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface UploadImgService
{
  @OperationType("alipay.client.uploadImg")
  public abstract UploadImgResult upload(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.img.UploadImgService
 * JD-Core Version:    0.6.2
 */