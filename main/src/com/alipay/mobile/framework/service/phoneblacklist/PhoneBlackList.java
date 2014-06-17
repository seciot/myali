package com.alipay.mobile.framework.service.phoneblacklist;

import android.content.Context;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PhoneBlackList extends ExternalService
{
  public abstract void queryPhoneBlackList(Context paramContext, PhoneBlackListCallBack paramPhoneBlackListCallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList
 * JD-Core Version:    0.6.2
 */