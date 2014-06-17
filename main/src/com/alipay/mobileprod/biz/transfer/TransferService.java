package com.alipay.mobileprod.biz.transfer;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.transfer.dto.ChangeSpeedReq;
import com.alipay.mobileprod.biz.transfer.dto.ChangeSpeedResp;
import com.alipay.mobileprod.biz.transfer.dto.CheckCardBinReq;
import com.alipay.mobileprod.biz.transfer.dto.CheckCardBinResp;
import com.alipay.mobileprod.biz.transfer.dto.ConsultChargeFeeReq;
import com.alipay.mobileprod.biz.transfer.dto.ConsultChargeFeeResp;
import com.alipay.mobileprod.biz.transfer.dto.ConsultPayReq;
import com.alipay.mobileprod.biz.transfer.dto.ConsultPayResp;
import com.alipay.mobileprod.biz.transfer.dto.CreateMobileToCardReq;
import com.alipay.mobileprod.biz.transfer.dto.CreateMobileToCardResp;
import com.alipay.mobileprod.biz.transfer.dto.CreateToAccountReq;
import com.alipay.mobileprod.biz.transfer.dto.CreateToAccountResp;
import com.alipay.mobileprod.biz.transfer.dto.CreateToCardReq;
import com.alipay.mobileprod.biz.transfer.dto.CreateToCardResp;
import com.alipay.mobileprod.biz.transfer.dto.DelHistoryCardReq;
import com.alipay.mobileprod.biz.transfer.dto.DelHistoryCardResp;
import com.alipay.mobileprod.biz.transfer.dto.GetBankListReq;
import com.alipay.mobileprod.biz.transfer.dto.GetBankListResp;
import com.alipay.mobileprod.biz.transfer.dto.GetCardListReq;
import com.alipay.mobileprod.biz.transfer.dto.GetCardListResp;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListReq;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListResp;
import com.alipay.mobileprod.biz.transfer.dto.HistoryRecordReq;
import com.alipay.mobileprod.biz.transfer.dto.HistoryRecordResp;
import com.alipay.mobileprod.biz.transfer.dto.QueryBankInfoReq;
import com.alipay.mobileprod.biz.transfer.dto.QueryBankInfoResp;
import com.alipay.mobileprod.biz.transfer.dto.QueryCardInfoReq;
import com.alipay.mobileprod.biz.transfer.dto.QueryCardInfoResp;
import com.alipay.mobileprod.biz.transfer.dto.QueryMobileBindInfoReq;
import com.alipay.mobileprod.biz.transfer.dto.QueryMobileBindInfoResp;
import com.alipay.mobileprod.biz.transfer.dto.QueryReceiverInfoReq;
import com.alipay.mobileprod.biz.transfer.dto.QueryReceiverInfoResp;
import com.alipay.mobileprod.biz.transfer.dto.QueryTransferProgressReq;
import com.alipay.mobileprod.biz.transfer.dto.QueryTransferProgressResp;
import com.alipay.mobileprod.biz.transfer.dto.RemoveUserFromHistoryRecordReq;
import com.alipay.mobileprod.biz.transfer.dto.RemoveUserFromHistoryRecordResp;
import com.alipay.mobileprod.biz.transfer.dto.SendCollectionMsgReq;
import com.alipay.mobileprod.biz.transfer.dto.SendCollectionMsgResp;
import com.alipay.mobileprod.biz.transfer.dto.UploadVoiceReq;
import com.alipay.mobileprod.biz.transfer.dto.UploadVoiceResp;

public abstract interface TransferService
{
  @OperationType("alipay.mobile.transfer.changeSpeed")
  @CheckLogin
  public abstract ChangeSpeedResp changeSpeed(ChangeSpeedReq paramChangeSpeedReq);

  @OperationType("alipay.mobile.transfer.checkCardBin")
  @CheckLogin
  public abstract CheckCardBinResp checkCardBin(CheckCardBinReq paramCheckCardBinReq);

  @OperationType("alipay.mobile.transfer.consultChargeFee")
  @CheckLogin
  public abstract ConsultChargeFeeResp consultChargeFee(ConsultChargeFeeReq paramConsultChargeFeeReq);

  @OperationType("alipay.mobile.transfer.consultPay")
  @CheckLogin
  public abstract ConsultPayResp consultPay(ConsultPayReq paramConsultPayReq);

  @OperationType("alipay.mobile.transfer.createMobileToCard")
  @CheckLogin
  public abstract CreateMobileToCardResp createMobileToCard(CreateMobileToCardReq paramCreateMobileToCardReq);

  @OperationType("alipay.mobile.transfer.createToAccount")
  @CheckLogin
  public abstract CreateToAccountResp createToAccount(CreateToAccountReq paramCreateToAccountReq);

  @OperationType("alipay.mobile.transfer.createToCard")
  @CheckLogin
  public abstract CreateToCardResp createToCard(CreateToCardReq paramCreateToCardReq);

  @OperationType("alipay.mobile.transfer.delHistoryCard")
  @CheckLogin
  public abstract DelHistoryCardResp delHistoryCard(DelHistoryCardReq paramDelHistoryCardReq);

  @OperationType("alipay.mobile.transfer.getBankList")
  @CheckLogin
  public abstract GetBankListResp getBankList(GetBankListReq paramGetBankListReq);

  @OperationType("alipay.mobile.transfer.getCardList")
  @CheckLogin
  public abstract GetCardListResp getCardList(GetCardListReq paramGetCardListReq);

  @OperationType("alipay.mobile.transfer.getContactList")
  @CheckLogin
  public abstract GetContactListResp getContactList(GetContactListReq paramGetContactListReq);

  @OperationType("alipay.mobile.transfer.queryBankInfo")
  @CheckLogin
  public abstract QueryBankInfoResp queryBankInfo(QueryBankInfoReq paramQueryBankInfoReq);

  @OperationType("alipay.mobile.transfer.queryCardInfo")
  @CheckLogin
  public abstract QueryCardInfoResp queryCardInfo(QueryCardInfoReq paramQueryCardInfoReq);

  @OperationType("alipay.mobile.transfer.queryHistoryRecord")
  @CheckLogin
  public abstract HistoryRecordResp queryHistoryRecord(HistoryRecordReq paramHistoryRecordReq);

  @OperationType("alipay.mobile.transfer.queryMobileBindInfo")
  @CheckLogin
  public abstract QueryMobileBindInfoResp queryMobileBindInfo(QueryMobileBindInfoReq paramQueryMobileBindInfoReq);

  @OperationType("alipay.mobile.transfer.queryReceiverInfo")
  @CheckLogin
  public abstract QueryReceiverInfoResp queryReceiverInfo(QueryReceiverInfoReq paramQueryReceiverInfoReq);

  @OperationType("alipay.mobile.transfer.queryTransferProgress")
  @CheckLogin
  public abstract QueryTransferProgressResp queryTransferProgress(QueryTransferProgressReq paramQueryTransferProgressReq);

  @OperationType("alipay.mobile.transfer.removeUserFromHistoryRecord")
  @CheckLogin
  public abstract RemoveUserFromHistoryRecordResp removeUserFromHistoryRecord(RemoveUserFromHistoryRecordReq paramRemoveUserFromHistoryRecordReq);

  @OperationType("alipayay.mobile.transfer.sendCollectionMsg")
  @CheckLogin
  public abstract SendCollectionMsgResp sendCollectionMsg(SendCollectionMsgReq paramSendCollectionMsgReq);

  @OperationType("alipay.mobile.transfer.uploadVoice")
  @CheckLogin
  public abstract UploadVoiceResp uploadVoice(UploadVoiceReq paramUploadVoiceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.TransferService
 * JD-Core Version:    0.6.2
 */