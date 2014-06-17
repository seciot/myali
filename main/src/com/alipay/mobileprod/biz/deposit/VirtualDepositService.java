package com.alipay.mobileprod.biz.deposit;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.deposit.dto.ConfirmDepositReq;
import com.alipay.mobileprod.biz.deposit.dto.ConfirmDepositRes;
import com.alipay.mobileprod.biz.deposit.dto.QueryItemDetailReq;
import com.alipay.mobileprod.biz.deposit.dto.QueryItemDetailRes;
import com.alipay.mobileprod.biz.deposit.dto.TbLoginAndItemInitReq;
import com.alipay.mobileprod.biz.deposit.dto.TbLoginAndItemInitRes;

public abstract interface VirtualDepositService
{
  @OperationType("alipay.virtual.recharge.deposit.confirmDeposit")
  @CheckLogin
  public abstract ConfirmDepositRes confirmDeposit(ConfirmDepositReq paramConfirmDepositReq);

  @OperationType("alipay.virtual.recharge.deposit.queryItemDetail")
  @CheckLogin
  public abstract QueryItemDetailRes queryItemDetail(QueryItemDetailReq paramQueryItemDetailReq);

  @OperationType("alipay.virtual.recharge.deposit.tbLoginAndItemInit")
  @CheckLogin
  public abstract TbLoginAndItemInitRes tbLoginAndItemInit(TbLoginAndItemInitReq paramTbLoginAndItemInitReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.VirtualDepositService
 * JD-Core Version:    0.6.2
 */