package com.alipay.mobile.common.ui.contacts.dao;

import android.app.Activity;
import android.content.AsyncQueryHandler;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.common.ui.contacts.util.ContractSearch;
import com.alipay.mobile.common.ui.contacts.util.MobileMatchInfoCache;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileinno.common.service.facade.sns.SNSApiService;
import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader;
import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploaderCallBack;
import com.alipay.mobileprod.biz.contact.facade.MobileContactMatchService;
import com.alipay.mobileprod.biz.contact.model.MobileBindingInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MobileContactDAO
  implements ContactsUploaderCallBack
{
  public static final String ALL_CHARACTER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#";
  public static final String FORMAT = "^[a-z,A-Z].*$";
  public static final String INFO_UPLOAD_MOBILE_TIME = "uploadMobileTime";
  private static MobileContactDAO a = null;
  private static long s = 0L;
  public static final int sMSG_BINDING_UPDATE = 102;
  public static final int sMSG_DATA_LOADED = 101;
  public static final int sMSG_DATA_PARTIAL_LOADED = 100;
  public static final int sMSG_DATA_START_LOAD = 99;
  private List<ContactPerson> b = new ArrayList();
  private List<MobileBindingInfo> c = Collections.synchronizedList(new ArrayList());
  private AsyncQueryHandler d;
  private MobileContactMatchService e;
  private SNSApiService f;
  private ContactsUploader g = null;
  private MobileContactDAO.MatchMobileRequest h;
  private MobileMatchInfoCache i = null;
  private long j = 0L;
  private SharedPreferences k = null;
  private String l = null;
  private Handler m;
  private Context n;
  private String o;
  private volatile int p = -1;
  private boolean q = false;
  private boolean r = false;

  private void a()
  {
    BackgroundExecutor.execute(new MobileContactDAO.2(this));
  }

  private void a(int paramInt)
  {
    this.p = paramInt;
    if (this.m != null)
      this.m.sendEmptyMessage(paramInt);
  }

  private void a(List<ContactPerson> paramList)
  {
    a(paramList, 101);
    this.d = null;
    if ((this.g != null) && (this.g.isContactsUploadPermitted()))
      a();
  }

  private void a(List<ContactPerson> paramList, int paramInt)
  {
    this.b = paramList;
    a(paramInt);
  }

  private void a(List<ContactPerson> paramList, List<MobileBindingInfo> paramList1, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = paramList1.size();
      i3 = 0;
      if (i1 >= i2)
        break;
      MobileBindingInfo localMobileBindingInfo2 = (MobileBindingInfo)paramList1.get(i1);
      if (localMobileBindingInfo2.mobileNo != null)
        localHashMap.put(localMobileBindingInfo2.mobileNo, localMobileBindingInfo2);
    }
    while (i3 < paramList.size())
    {
      ContactPerson localContactPerson = (ContactPerson)paramList.get(i3);
      if (localContactPerson.mobileNumber != null)
      {
        MobileBindingInfo localMobileBindingInfo1 = (MobileBindingInfo)localHashMap.get(localContactPerson.mobileNumber);
        if (localMobileBindingInfo1 != null)
        {
          localContactPerson.isBindInfo = localMobileBindingInfo1.binding;
          localContactPerson.enabledStatus = localMobileBindingInfo1.enabledStatus;
          localContactPerson.isAppUser = localMobileBindingInfo1.userHasApp;
        }
      }
      i3++;
    }
    localHashMap.clear();
    if (paramBoolean)
      a(102);
  }

  private void b(List<MobileBindingInfo> paramList)
  {
    try
    {
      if (this.c.size() > 0)
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.addAll(compareMatchedList(this.c, paramList));
        this.c.clear();
        this.c.addAll(localArrayList);
      }
      while (true)
      {
        if (this.i != null)
          this.i.writeMobileMatchInfoHistory(this.c, 10000);
        a(this.b, this.c, true);
        return;
        this.c.addAll(paramList);
      }
    }
    finally
    {
    }
  }

  public static List<MobileBindingInfo> compareMatchedList(List<MobileBindingInfo> paramList1, List<MobileBindingInfo> paramList2)
  {
    HashMap localHashMap = new HashMap();
    for (int i1 = 0; i1 < paramList1.size(); i1++)
    {
      MobileBindingInfo localMobileBindingInfo3 = (MobileBindingInfo)paramList1.get(i1);
      if (localMobileBindingInfo3.mobileNo != null)
        localHashMap.put(localMobileBindingInfo3.mobileNo, localMobileBindingInfo3);
    }
    Iterator localIterator = paramList2.iterator();
    while (localIterator.hasNext())
    {
      MobileBindingInfo localMobileBindingInfo1 = (MobileBindingInfo)localIterator.next();
      if (localMobileBindingInfo1.mobileNo != null)
      {
        MobileBindingInfo localMobileBindingInfo2 = (MobileBindingInfo)localHashMap.get(localMobileBindingInfo1.mobileNo);
        if (localMobileBindingInfo2 != null)
        {
          localMobileBindingInfo2.binding = localMobileBindingInfo1.binding;
          localMobileBindingInfo2.enabledStatus = localMobileBindingInfo1.enabledStatus;
        }
        else
        {
          paramList1.add(localMobileBindingInfo1);
        }
      }
    }
    return paramList1;
  }

  public static MobileContactDAO getInstance()
  {
    if (a == null)
      a = new MobileContactDAO();
    return a;
  }

  public void clearContext()
  {
    this.q = false;
    this.n = null;
    this.m = null;
    this.h = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.i = null;
    this.o = null;
  }

  public List<ContactPerson> getContactData()
  {
    return this.b;
  }

  public ContactsUploader getContactsUploader()
  {
    return this.g;
  }

  public int getLoadState()
  {
    return this.p;
  }

  public List<ContactPerson> getMatchedContact(String paramString)
  {
    if (this.b == null)
      return null;
    long l1 = System.currentTimeMillis();
    List localList = ContractSearch.search(paramString);
    long l2 = System.currentTimeMillis();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(l2 - l1);
    new StringBuilder("查询耗时: ").append(localCalendar.get(12)).append("分 ").append(localCalendar.get(13)).append("秒 ").append(localCalendar.get(14)).append(" 豪秒").toString();
    return localList;
  }

  public SNSApiService getSNSService()
  {
    return this.f;
  }

  public String getUserId()
  {
    return this.o;
  }

  public void initContext(Activity paramActivity, Handler paramHandler, ActivityApplication paramActivityApplication)
  {
    this.q = true;
    this.n = paramActivity;
    this.m = paramHandler;
    this.h = new MobileContactDAO.MatchMobileRequest(this, paramActivity);
    RpcService localRpcService = (RpcService)paramActivityApplication.getServiceByInterface(RpcService.class.getName());
    this.e = ((MobileContactMatchService)localRpcService.getRpcProxy(MobileContactMatchService.class));
    this.f = ((SNSApiService)localRpcService.getRpcProxy(SNSApiService.class));
    AuthService localAuthService = (AuthService)paramActivityApplication.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    UserInfo localUserInfo;
    if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
    {
      localUserInfo = localAuthService.getUserInfo();
      this.o = localUserInfo.getUserId();
    }
    while (true)
    {
      if ((localUserInfo != null) && (this.o != null))
      {
        this.g = new ContactsUploader(paramActivityApplication.getMicroApplicationContext(), localUserInfo);
        this.i = new MobileMatchInfoCache(this.o + "mobilematch.txt");
        this.l = (this.o + "uploadMobileTime");
        this.k = this.n.getSharedPreferences("uploadMobileTime", 0);
      }
      switch (this.p)
      {
      default:
        loadAllContacts();
      case 99:
        return;
      case 100:
        a(this.p);
        return;
      case 101:
      case 102:
      }
      a(101);
      return;
      localUserInfo = null;
    }
  }

  public void loadAllContacts()
  {
    loadAllContacts(false);
  }

  public void loadAllContacts(boolean paramBoolean)
  {
    this.r = paramBoolean;
    if ((this.p > 0) && (!paramBoolean))
      return;
    s = System.currentTimeMillis();
    this.p = 99;
    try
    {
      new Thread(new MobileContactDAO.1(this)).start();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("start load error").append(localException).toString();
      a(this.b, 101);
      this.p = -1;
    }
  }

  public void loadMatchInfoFromCache()
  {
    if (this.i != null)
    {
      this.c = this.i.readMobileMatchInfoHistory();
      if ((this.c != null) && (this.c.size() > 0))
        a(this.b, this.c, true);
    }
  }

  public void loadMatchInfoFromRpc()
  {
    BackgroundExecutor.execute(new MobileContactDAO.3(this));
  }

  public void resetContactPerson()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ContactPerson localContactPerson = (ContactPerson)localIterator.next();
      localContactPerson.matchedNum = null;
      localContactPerson.isNumberMatch = false;
      localContactPerson.isSearch = false;
      localContactPerson.matchedNum = "";
      localContactPerson.matchedWord = "";
      localContactPerson.matchedStartIndex = -1;
      localContactPerson.matchedStartIndex4Phone = -1;
      localContactPerson.matchedEndIndex = -1;
      localContactPerson.matchedEndIndex4Phone = -1;
    }
  }

  public void tryToUploadMobileContacts()
  {
    if (this.p > 100)
      a();
  }

  public void uploadFailed()
  {
  }

  public void uploadSuccess()
  {
    loadMatchInfoFromRpc();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO
 * JD-Core Version:    0.6.2
 */