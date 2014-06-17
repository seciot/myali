package com.alipay.livetradeprod.core.service.gw;

import com.alipay.livetradeprod.core.model.OnsitePayReq;
import com.alipay.livetradeprod.core.model.VerifyDeviceReq;
import com.alipay.livetradeprod.core.model.VerifyDeviceRes;
import com.alipay.livetradeprod.core.model.rpc.BindLbsUserReq;
import com.alipay.livetradeprod.core.model.rpc.BindLbsUserRes;
import com.alipay.livetradeprod.core.model.rpc.CheckPhoneModelReq;
import com.alipay.livetradeprod.core.model.rpc.CheckPhoneModelRes;
import com.alipay.livetradeprod.core.model.rpc.FindLbsUserReq;
import com.alipay.livetradeprod.core.model.rpc.FindLbsUserRes;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdReq;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.livetradeprod.core.model.rpc.QueryBuyerReq;
import com.alipay.livetradeprod.core.model.rpc.QueryBuyerRes;
import com.alipay.livetradeprod.core.model.rpc.QueryNameCardReq;
import com.alipay.livetradeprod.core.model.rpc.QueryNameCardRes;
import com.alipay.livetradeprod.core.model.rpc.QuerySellerReq;
import com.alipay.livetradeprod.core.model.rpc.QuerySellerRes;
import com.alipay.livetradeprod.core.model.rpc.SendPayeeInfoReq;
import com.alipay.livetradeprod.core.model.rpc.SendPayeeInfoRes;
import com.alipay.livetradeprod.core.model.rpc.SendTodoReq;
import com.alipay.livetradeprod.core.model.rpc.SendTodoRes;
import com.alipay.livetradeprod.core.model.rpc.SoundWaveLbsPayReq;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayReq;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface SoundWavePayRpcFacade
{
  @OperationType("alipay.livetradeprod.soundWave.bindLbsUser")
  public abstract BindLbsUserRes bindLbsUser(BindLbsUserReq paramBindLbsUserReq);

  @OperationType("alipay.livetradeprod.soundWave.checkPhoneModel")
  public abstract CheckPhoneModelRes checkPhoneModel(CheckPhoneModelReq paramCheckPhoneModelReq);

  @OperationType("alipay.livetradeprod.soundWave.createFastPayTrade")
  public abstract SoundWavePayRes createFastPayTrade(SoundWavePayReq paramSoundWavePayReq);

  @OperationType("alipay.livetradeprod.soundWave.createFastPayTradeAndAutoPay")
  public abstract SoundWavePayRes createFastPayTradeAndAutoPay(SoundWavePayReq paramSoundWavePayReq);

  @OperationType("alipay.livetradeprod.soundWave.createLbsTradeAndAutoPay")
  public abstract SoundWavePayRes createLbsTradeAndAutoPay(SoundWaveLbsPayReq paramSoundWaveLbsPayReq);

  @OperationType("alipay.livetradeprod.soundWave.findLbsUser")
  public abstract FindLbsUserRes findLbsUser(FindLbsUserReq paramFindLbsUserReq);

  @OperationType("alipay.livetradeprod.soundWave.getDynamicId")
  public abstract GetDynamicIdRes getDynamicId(GetDynamicIdReq paramGetDynamicIdReq);

  @OperationType("alipay.livetradeprod.soundWave.onsiteAutoPay")
  public abstract SoundWavePayRes onsiteAutoPay(OnsitePayReq paramOnsitePayReq);

  @OperationType("alipay.livetradeprod.soundWave.payResultAck")
  public abstract void payResultAck(String paramString);

  @OperationType("alipay.livetradeprod.soundWave.queryBuyerPayResult")
  public abstract QueryBuyerRes queryBuySoundWavePayRes(QueryBuyerReq paramQueryBuyerReq);

  @OperationType("alipay.livetradeprod.soundWave.queryNameCard")
  public abstract QueryNameCardRes queryNameCard(QueryNameCardReq paramQueryNameCardReq);

  @OperationType("alipay.livetradeprod.soundWave.querySellerPayResult")
  public abstract QuerySellerRes querySellerSoundWavePayRes(QuerySellerReq paramQuerySellerReq);

  @OperationType("alipay.livetradeprod.soundWave.sendPayeeInfo")
  public abstract SendPayeeInfoRes sendPayeeInfo(SendPayeeInfoReq paramSendPayeeInfoReq);

  @OperationType("alipay.livetradeprod.soundWave.sendTodo")
  public abstract SendTodoRes sendTodo(SendTodoReq paramSendTodoReq);

  @OperationType("alipay.livetradeprod.soundWave.verifyDevice")
  public abstract VerifyDeviceRes verifyDevice(VerifyDeviceReq paramVerifyDeviceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade
 * JD-Core Version:    0.6.2
 */