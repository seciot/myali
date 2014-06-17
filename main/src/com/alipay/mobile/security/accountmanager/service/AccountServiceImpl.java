package com.alipay.mobile.security.accountmanager.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityShareStore;
import com.alipay.mobile.framework.service.ext.security.AccountCallBack;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AccountServiceImpl extends AccountService
{
  final String a = "AccountServiceImpl";

  // ERROR //
  private void a(String paramString1, String paramString2, String paramString3, AccountCallBack paramAccountCallBack)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 23	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   4: ldc 25
    //   6: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   9: invokeinterface 37 2 0
    //   14: checkcast 25	com/alipay/mobile/framework/service/ext/security/RSAService
    //   17: astore 5
    //   19: aload 5
    //   21: aload_2
    //   22: iconst_0
    //   23: invokevirtual 41	com/alipay/mobile/framework/service/ext/security/RSAService:RSAEncrypt	(Ljava/lang/String;Z)Ljava/lang/String;
    //   26: astore 7
    //   28: aload_0
    //   29: invokevirtual 23	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   32: ldc 43
    //   34: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   37: invokeinterface 47 2 0
    //   42: checkcast 43	com/alipay/mobile/framework/service/common/RpcService
    //   45: ldc 49
    //   47: invokevirtual 53	com/alipay/mobile/framework/service/common/RpcService:getRpcProxy	(Ljava/lang/Class;)Ljava/lang/Object;
    //   50: checkcast 49	com/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade
    //   53: astore 8
    //   55: new 55	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 57
    //   61: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload 7
    //   66: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: pop
    //   73: new 69	com/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest
    //   76: dup
    //   77: invokespecial 70	com/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest:<init>	()V
    //   80: astore 10
    //   82: aload 10
    //   84: aload_1
    //   85: invokevirtual 73	com/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest:setLoginId	(Ljava/lang/String;)V
    //   88: aload 10
    //   90: aload 7
    //   92: invokevirtual 76	com/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest:setPassword	(Ljava/lang/String;)V
    //   95: aload 10
    //   97: aload_3
    //   98: invokevirtual 79	com/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest:setPasswordType	(Ljava/lang/String;)V
    //   101: aload 8
    //   103: aload 10
    //   105: invokeinterface 83 2 0
    //   110: astore 13
    //   112: aload 13
    //   114: ifnull +84 -> 198
    //   117: new 55	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 85
    //   123: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload 13
    //   128: invokevirtual 91	com/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult:isSuccess	()Z
    //   131: invokevirtual 94	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   134: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: pop
    //   138: new 96	com/alipay/mobile/framework/service/ext/security/bean/ResultBean
    //   141: dup
    //   142: invokespecial 97	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:<init>	()V
    //   145: astore 12
    //   147: aload 12
    //   149: aload 13
    //   151: invokevirtual 91	com/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult:isSuccess	()Z
    //   154: invokevirtual 101	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setSuccess	(Z)V
    //   157: aload 12
    //   159: aload 13
    //   161: invokevirtual 104	com/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult:getResultCode	()Ljava/lang/String;
    //   164: invokevirtual 107	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setResultCode	(Ljava/lang/String;)V
    //   167: aload 12
    //   169: aload 13
    //   171: invokevirtual 110	com/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult:getMessage	()Ljava/lang/String;
    //   174: invokevirtual 113	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setMessage	(Ljava/lang/String;)V
    //   177: aload 4
    //   179: aload 12
    //   181: invokeinterface 119 2 0
    //   186: return
    //   187: astore 6
    //   189: aload 4
    //   191: aconst_null
    //   192: invokeinterface 119 2 0
    //   197: return
    //   198: aload 4
    //   200: aconst_null
    //   201: invokeinterface 119 2 0
    //   206: return
    //   207: astore 11
    //   209: aconst_null
    //   210: astore 12
    //   212: aload 4
    //   214: aload 12
    //   216: invokeinterface 119 2 0
    //   221: return
    //   222: astore 15
    //   224: goto -12 -> 212
    //
    // Exception table:
    //   from	to	target	type
    //   19	55	187	java/lang/Exception
    //   101	112	207	com/alipay/mobile/common/rpc/RpcException
    //   117	147	207	com/alipay/mobile/common/rpc/RpcException
    //   198	206	207	com/alipay/mobile/common/rpc/RpcException
    //   147	186	222	com/alipay/mobile/common/rpc/RpcException
  }

  public boolean addUserInfo(UserInfo paramUserInfo)
  {
    try
    {
      boolean bool = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).addUserInfo(paramUserInfo);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  // ERROR //
  public void cleanAccount(String paramString1, String paramString2, AccountCallBack paramAccountCallBack)
  {
    // Byte code:
    //   0: invokestatic 142	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   3: astore 4
    //   5: aload_0
    //   6: invokevirtual 23	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   9: invokeinterface 125 1 0
    //   14: invokestatic 148	com/alipay/mobile/common/info/DeviceInfo:createInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;
    //   17: astore 5
    //   19: aload_0
    //   20: aload_1
    //   21: invokevirtual 152	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:cleanLocalAccountByUserId	(Ljava/lang/String;)Z
    //   24: pop
    //   25: aload_0
    //   26: invokevirtual 23	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   29: ldc 43
    //   31: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   34: invokeinterface 47 2 0
    //   39: checkcast 43	com/alipay/mobile/framework/service/common/RpcService
    //   42: ldc 154
    //   44: invokevirtual 53	com/alipay/mobile/framework/service/common/RpcService:getRpcProxy	(Ljava/lang/Class;)Ljava/lang/Object;
    //   47: checkcast 154	com/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade
    //   50: astore 8
    //   52: new 156	com/alipay/mobilesecurity/core/model/Tid
    //   55: dup
    //   56: invokespecial 157	com/alipay/mobilesecurity/core/model/Tid:<init>	()V
    //   59: astore 9
    //   61: new 156	com/alipay/mobilesecurity/core/model/Tid
    //   64: dup
    //   65: invokespecial 157	com/alipay/mobilesecurity/core/model/Tid:<init>	()V
    //   68: astore 10
    //   70: aload_0
    //   71: invokevirtual 23	com/alipay/mobile/security/accountmanager/service/AccountServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   74: ldc 159
    //   76: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   79: invokeinterface 37 2 0
    //   84: checkcast 159	com/alipay/mobile/framework/service/ext/security/DeviceService
    //   87: astore 12
    //   89: aload 9
    //   91: aload 12
    //   93: invokevirtual 163	com/alipay/mobile/framework/service/ext/security/DeviceService:queryDeviceInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;
    //   96: invokevirtual 168	com/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean:getWalletTid	()Ljava/lang/String;
    //   99: invokevirtual 171	com/alipay/mobilesecurity/core/model/Tid:setTid	(Ljava/lang/String;)V
    //   102: aload 10
    //   104: aload 12
    //   106: invokevirtual 175	com/alipay/mobile/framework/service/ext/security/DeviceService:queryCertification	()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    //   109: invokevirtual 180	com/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean:getTid	()Ljava/lang/String;
    //   112: invokevirtual 171	com/alipay/mobilesecurity/core/model/Tid:setTid	(Ljava/lang/String;)V
    //   115: aload 4
    //   117: ifnull +92 -> 209
    //   120: aload 5
    //   122: ifnull +87 -> 209
    //   125: aload 8
    //   127: aload 9
    //   129: aload 10
    //   131: aload_2
    //   132: aload 4
    //   134: invokevirtual 183	com/alipay/mobile/common/info/AppInfo:getmProductVersion	()Ljava/lang/String;
    //   137: aload 4
    //   139: invokevirtual 186	com/alipay/mobile/common/info/AppInfo:getProductID	()Ljava/lang/String;
    //   142: aload 5
    //   144: invokevirtual 189	com/alipay/mobile/common/info/DeviceInfo:getClientId	()Ljava/lang/String;
    //   147: invokeinterface 193 7 0
    //   152: astore 15
    //   154: aload 15
    //   156: invokevirtual 196	com/alipay/mobilesecurity/common/service/model/MobileSecurityResult:isSuccess	()Z
    //   159: ifeq +50 -> 209
    //   162: new 96	com/alipay/mobile/framework/service/ext/security/bean/ResultBean
    //   165: dup
    //   166: invokespecial 97	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:<init>	()V
    //   169: astore 16
    //   171: aload 16
    //   173: aload 15
    //   175: invokevirtual 196	com/alipay/mobilesecurity/common/service/model/MobileSecurityResult:isSuccess	()Z
    //   178: invokevirtual 101	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setSuccess	(Z)V
    //   181: aload 16
    //   183: aload 15
    //   185: invokevirtual 197	com/alipay/mobilesecurity/common/service/model/MobileSecurityResult:getResultCode	()Ljava/lang/String;
    //   188: invokevirtual 107	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setResultCode	(Ljava/lang/String;)V
    //   191: aload 16
    //   193: aload 15
    //   195: invokevirtual 198	com/alipay/mobilesecurity/common/service/model/MobileSecurityResult:getMessage	()Ljava/lang/String;
    //   198: invokevirtual 113	com/alipay/mobile/framework/service/ext/security/bean/ResultBean:setMessage	(Ljava/lang/String;)V
    //   201: aload_3
    //   202: aload 16
    //   204: invokeinterface 201 2 0
    //   209: return
    //   210: astore 7
    //   212: return
    //   213: astore 14
    //   215: return
    //   216: astore 13
    //   218: goto -103 -> 115
    //   221: astore 11
    //   223: aconst_null
    //   224: astore 12
    //   226: goto -124 -> 102
    //   229: astore 17
    //   231: goto -129 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   25	70	210	android/database/SQLException
    //   70	89	210	android/database/SQLException
    //   89	102	210	android/database/SQLException
    //   102	115	210	android/database/SQLException
    //   125	209	210	android/database/SQLException
    //   125	209	213	com/alipay/mobile/common/rpc/RpcException
    //   102	115	216	java/lang/Exception
    //   70	89	221	java/lang/Exception
    //   89	102	229	java/lang/Exception
  }

  public boolean cleanLocalAccountByUserId(String paramString)
  {
    boolean bool = false;
    try
    {
      SecurityDbHelper localSecurityDbHelper = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext());
      bool = localSecurityDbHelper.cleanLocalAccount(paramString);
      localSecurityDbHelper.deleteTaobaoUserInfoByUserId(paramString);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return bool;
  }

  public List<UserInfo> getAutoLoginAlipayUser()
  {
    List localList = getLoginedAlipayUser();
    if (localList == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      UserInfo localUserInfo = (UserInfo)localIterator.next();
      if (localUserInfo.isAutoLogin())
        localArrayList.add(localUserInfo);
    }
    if (localArrayList.size() == 0)
      return null;
    return localArrayList;
  }

  public String getCurrentLoginLogonId()
  {
    return SecurityShareStore.getString(getMicroApplicationContext().getApplicationContext(), "currentLogonId");
  }

  public boolean getCurrentLoginState()
  {
    String str = SecurityShareStore.getString(getMicroApplicationContext().getApplicationContext(), "currentUserLoginState");
    return (str != null) && ("true".equals(str));
  }

  public String getCurrentLoginUserId()
  {
    return SecurityShareStore.getString(getMicroApplicationContext().getApplicationContext(), "currentUserId");
  }

  public List<UserInfo> getLoginedAlipayUser()
  {
    List localList = queryAccountList();
    if (localList == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      UserInfo localUserInfo = (UserInfo)localIterator.next();
      if (!TextUtils.isEmpty(localUserInfo.getLoginTime()))
        localArrayList.add(localUserInfo);
    }
    if (localArrayList.size() == 0)
      return null;
    return localArrayList;
  }

  public UserInfo getUserInfoBySql(String paramString1, String paramString2)
  {
    UserInfo localUserInfo;
    if (!TextUtils.isEmpty(paramString2))
      localUserInfo = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).findUserInfoBySql(null, paramString2);
    String str;
    boolean bool;
    do
    {
      return localUserInfo;
      if (!TextUtils.isEmpty(paramString1))
        return SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).findUserInfoBySql(paramString1, null);
      str = getCurrentLoginUserId();
      bool = TextUtils.isEmpty(str);
      localUserInfo = null;
    }
    while (bool);
    return SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).findUserInfoBySql(str, null);
  }

  public void importUserList2DB(List<UserInfo> paramList)
  {
    List localList = queryAccountList();
    Iterator localIterator2;
    if ((localList != null) && (localList.size() > 0))
      localIterator2 = paramList.iterator();
    label260: 
    while (true)
    {
      UserInfo localUserInfo2;
      if (localIterator2.hasNext())
      {
        localUserInfo2 = (UserInfo)localIterator2.next();
        String str1 = localUserInfo2.getUserId();
        Iterator localIterator3 = localList.iterator();
        while (localIterator3.hasNext())
        {
          UserInfo localUserInfo3 = (UserInfo)localIterator3.next();
          String str2 = localUserInfo3.getUserId();
          new StringBuilder("比较msp用户和 local用户  localUserId=").append(str2).append(" mspUserId=").append(str1).toString();
          if (str1.equals(str2))
          {
            localUserInfo3.setAutoLogin(localUserInfo2.isAutoLogin());
            localUserInfo3.setLogonId(localUserInfo2.getLogonId());
            addUserInfo(localUserInfo3);
            new StringBuilder("与本地找到相同的用户，更新免登标志 localUserId=").append(str2).toString();
          }
        }
      }
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          break label260;
        addUserInfo(localUserInfo2);
        break;
        Iterator localIterator1 = paramList.iterator();
        while (localIterator1.hasNext())
        {
          UserInfo localUserInfo1 = (UserInfo)localIterator1.next();
          new StringBuilder("插入移动快捷查询出的用户 getUserId=").append(localUserInfo1.getUserId()).toString();
          addUserInfo(localUserInfo1);
        }
        return;
      }
    }
  }

  public void loginPwdValidate(String paramString1, String paramString2, AccountCallBack paramAccountCallBack)
  {
    a(paramString1, paramString2, "login", paramAccountCallBack);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void payPwdValidate(String paramString1, String paramString2, AccountCallBack paramAccountCallBack)
  {
    a(paramString1, paramString2, "pay", paramAccountCallBack);
  }

  public UserInfo queryAccountDetailInfoByUserId(String paramString)
  {
    try
    {
      UserInfo localUserInfo = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).findUserInfo(paramString);
      return localUserInfo;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public List<UserInfo> queryAccountList()
  {
    try
    {
      List localList = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).queryUserInfoList();
      return localList;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    super.restoreState(paramSharedPreferences);
    String str = paramSharedPreferences.getString("_current_user_info_", null);
    if (str != null);
    try
    {
      UserInfo localUserInfo = (UserInfo)JSON.parseObject(str, new a(this), new Feature[0]);
      if (localUserInfo != null)
      {
        setCurrentLoginUserId(localUserInfo.getUserId());
        setCurrentLoginLogonId(localUserInfo.getLogonId());
      }
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder().append(localException).toString();
    }
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    super.saveState(paramEditor);
    String str = getCurrentLoginUserId();
    if (str == null);
    UserInfo localUserInfo;
    do
    {
      return;
      localUserInfo = queryAccountDetailInfoByUserId(str);
    }
    while (localUserInfo == null);
    paramEditor.putString("_current_user_info_", JSON.toJSONString(localUserInfo)).commit();
  }

  public void setCurrentLoginLogonId(String paramString)
  {
    SecurityShareStore.putString(getMicroApplicationContext().getApplicationContext(), "currentLogonId", paramString);
  }

  public void setCurrentLoginState(String paramString)
  {
    SecurityShareStore.putString(getMicroApplicationContext().getApplicationContext(), "currentUserLoginState", paramString);
  }

  public void setCurrentLoginUserId(String paramString)
  {
    SecurityShareStore.putString(getMicroApplicationContext().getApplicationContext(), "currentUserId", paramString);
  }

  public boolean updateUserGesture(UserInfo paramUserInfo)
  {
    try
    {
      boolean bool = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).updateUserGesture(paramUserInfo);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.AccountServiceImpl
 * JD-Core Version:    0.6.2
 */