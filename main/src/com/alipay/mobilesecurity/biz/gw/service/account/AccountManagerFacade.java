package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;
import com.alipay.mobilesecurity.core.model.account.GetUserHeaderImgUrlResult;
import com.alipay.mobilesecurity.core.model.account.TaobaoSsoToken;
import java.util.List;

public abstract interface AccountManagerFacade
{
  @OperationType("alipay.mobile.security.accountmanager.clearAccount")
  public abstract MobileSecurityResult clearAccount(Tid paramTid1, Tid paramTid2, String paramString1, String paramString2, String paramString3, String paramString4);

  @OperationType("alipay.mobile.security.accountmanager.getAccountList")
  public abstract GetAccountResult getAccountList(Tid paramTid1, Tid paramTid2);

  @OperationType("alipay.mobile.security.accountmanager.getAccountListByMsp")
  public abstract GetAccountResult getAccountListByMsp(Tid paramTid);

  @OperationType("alipay.mobile.security.accountmanager.getUserHeaderImgUrl")
  public abstract GetUserHeaderImgUrlResult getUserHeaderImgUrl(String paramString);

  @OperationType("alipay.mobile.security.accountmanager.importAccountByTaobaoToken")
  public abstract GetAccountResult importAccountByTaobaoToken(Tid paramTid, TaobaoSsoToken paramTaobaoSsoToken);

  @OperationType("alipay.mobile.security.accountmanager.importMspAccount")
  public abstract GetAccountResult importMspAccount(Tid paramTid1, Tid paramTid2);

  @OperationType("alipay.mobile.security.accountmanager.updateWalletLoginAuth")
  public abstract MobileSecurityResult updateWalletLoginAuth(Tid paramTid, List<String> paramList);

  @OperationType("alipay.mobile.security.accountmanager.verifyMspTidUser")
  public abstract MobileSecurityResult verifyMspTidUser(Tid paramTid, String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.AccountManagerFacade
 * JD-Core Version:    0.6.2
 */