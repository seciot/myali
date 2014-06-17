package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.List;

public abstract class AccountService extends ExternalService
{
  public abstract boolean addUserInfo(UserInfo paramUserInfo);

  public abstract void cleanAccount(String paramString1, String paramString2, AccountCallBack paramAccountCallBack);

  public abstract boolean cleanLocalAccountByUserId(String paramString);

  public abstract List<UserInfo> getAutoLoginAlipayUser();

  public abstract String getCurrentLoginLogonId();

  public abstract boolean getCurrentLoginState();

  public abstract String getCurrentLoginUserId();

  public abstract List<UserInfo> getLoginedAlipayUser();

  public abstract UserInfo getUserInfoBySql(String paramString1, String paramString2);

  public abstract void importUserList2DB(List<UserInfo> paramList);

  public abstract void loginPwdValidate(String paramString1, String paramString2, AccountCallBack paramAccountCallBack);

  public abstract void payPwdValidate(String paramString1, String paramString2, AccountCallBack paramAccountCallBack);

  public abstract UserInfo queryAccountDetailInfoByUserId(String paramString);

  public abstract List<UserInfo> queryAccountList();

  public abstract void setCurrentLoginLogonId(String paramString);

  public abstract void setCurrentLoginState(String paramString);

  public abstract void setCurrentLoginUserId(String paramString);

  public abstract boolean updateUserGesture(UserInfo paramUserInfo);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.AccountService
 * JD-Core Version:    0.6.2
 */