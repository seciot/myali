package com.alipay.mobileprod.biz.peerpaycore;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.peerpaycore.dto.ApplyPeerPayReq;
import com.alipay.mobileprod.biz.peerpaycore.dto.ApplyPeerPayResp;
import com.alipay.mobileprod.biz.peerpaycore.dto.CancelPeerPayReq;
import com.alipay.mobileprod.biz.peerpaycore.dto.CancelPeerPayResp;
import com.alipay.mobileprod.biz.peerpaycore.dto.CheckPeerPayerReq;
import com.alipay.mobileprod.biz.peerpaycore.dto.CheckPeerPayerResp;
import com.alipay.mobileprod.biz.peerpaycore.dto.GetPPContactListReq;
import com.alipay.mobileprod.biz.peerpaycore.dto.GetPPContactListResp;
import com.alipay.mobileprod.biz.peerpaycore.dto.RefusePeerPayReq;
import com.alipay.mobileprod.biz.peerpaycore.dto.RefusePeerPayResp;

public abstract interface PeerPayCoreService
{
  @OperationType("alipay.mobile.peerpaycore.getPPContactList")
  @CheckLogin
  public abstract GetPPContactListResp GetPPContactList(GetPPContactListReq paramGetPPContactListReq);

  @OperationType("alipay.mobile.peerpaycore.apply")
  @CheckLogin
  public abstract ApplyPeerPayResp appleyPeerpay(ApplyPeerPayReq paramApplyPeerPayReq);

  @OperationType("alipay.mobile.peerpaycore.cancel")
  @CheckLogin
  public abstract CancelPeerPayResp cancelPeerpay(CancelPeerPayReq paramCancelPeerPayReq);

  @OperationType("alipay.mobile.peerpaycore.checkPeerPayer")
  @CheckLogin
  public abstract CheckPeerPayerResp checkPeerpayer(CheckPeerPayerReq paramCheckPeerPayerReq);

  @OperationType("alipay.mobile.peerpaycore.refuse")
  @CheckLogin
  public abstract RefusePeerPayResp refusePeerPay(RefusePeerPayReq paramRefusePeerPayReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.peerpaycore.PeerPayCoreService
 * JD-Core Version:    0.6.2
 */