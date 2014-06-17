package com.alipay.mobileapp.biz.rpc.taobao.ssotoken.model;

public class CreateTaobaoSsoTokenResult
{
  public String nick;
  public String ssoToken;
  public boolean success;

  public String getNick()
  {
    return this.nick;
  }

  public String getSsoToken()
  {
    return this.ssoToken;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setNick(String paramString)
  {
    this.nick = paramString;
  }

  public void setSsoToken(String paramString)
  {
    this.ssoToken = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.taobao.ssotoken.model.CreateTaobaoSsoTokenResult
 * JD-Core Version:    0.6.2
 */