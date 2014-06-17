package com.alipay.barcodeprod.biz.barcode.gw;

import com.alipay.barcodeprod.core.model.soundwave.SoundWaveQueryRes;
import com.alipay.barcodeprod.core.model.soundwave.VerifyDeviceReq;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface SoundWavePayManagerFacade
{
  @OperationType("com.alipay.barcodeprod.soundWave.queryBuySoundWavePayRes")
  public abstract SoundWaveQueryRes queryBuySoundWavePayRes(String paramString1, String paramString2);

  @OperationType("alipay.onsite.soundWave.querySellerSoundWavePayRes")
  public abstract SoundWaveQueryRes querySellerSoundWavePayRes(String paramString1, String paramString2);

  @OperationType("alipay.onsite.soundWave.sendTodo")
  public abstract SoundWaveQueryRes sendTodo(String paramString1, String paramString2);

  @OperationType("alipay.onsite.soundWave.verifyDevice")
  public abstract SoundWaveQueryRes verifyDevice(VerifyDeviceReq paramVerifyDeviceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.barcode.gw.SoundWavePayManagerFacade
 * JD-Core Version:    0.6.2
 */