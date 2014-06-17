package com.alipay.mobile.alipassapp.ui;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareInfoResult;
import com.alipay.kabaoprod.core.model.model.PassShareInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ShareService;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@SuppressLint({"UseSparseArrays"})
@EActivity
public class AlipassForShareActivity extends BaseActivity
{
  private static final String a = AlipassForShareActivity.class.getSimpleName();
  private com.alipay.mobile.alipassapp.biz.a b;
  private String c;
  private int d = 0;
  private Map<Integer, ShareContent> e = null;
  private List<PassShareInfo> f;
  private String g;
  private long h;
  private APShareSelectDialog i = null;

  @Background
  public void a()
  {
    this.e = null;
    this.b = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
    do
    {
      ShareInfoResult localShareInfoResult;
      try
      {
        dismissProgressDialog();
        localShareInfoResult = this.b.c(this.c);
        if (localShareInfoResult == null)
        {
          c();
          return;
        }
      }
      catch (Exception localException)
      {
        c();
        return;
      }
      long l = System.currentTimeMillis() - this.h;
      new StringBuilder("卡券分享AlipassForShareActivityRPC加载时间").append(l).toString();
      this.f = localShareInfoResult.getShareInfoList();
      Iterator localIterator;
      if ((this.f != null) && (this.f.size() > 0))
      {
        this.e = new HashMap();
        localIterator = this.f.iterator();
      }
      while (localIterator.hasNext())
      {
        PassShareInfo localPassShareInfo = (PassShareInfo)localIterator.next();
        if (localPassShareInfo != null)
        {
          ShareContent localShareContent = new ShareContent();
          if (4096 == localPassShareInfo.getShareType().intValue())
            localShareContent.setTitle(localPassShareInfo.getContent());
          while (true)
          {
            localShareContent.setUrl(localPassShareInfo.getUrl());
            localShareContent.setImgUrl(localPassShareInfo.getImgUrl());
            this.e.put(localPassShareInfo.getShareType(), localShareContent);
            this.d |= localPassShareInfo.getShareType().intValue();
            break;
            c();
            return;
            localShareContent.setTitle(localPassShareInfo.getTitle());
            localShareContent.setContent(localPassShareInfo.getContent());
          }
        }
      }
    }
    while (this.e == null);
    dismissProgressDialog();
    b();
  }

  @UiThread
  public void b()
  {
    ShareService localShareService = (ShareService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ShareService.class.getName());
    this.i = new APShareSelectDialog(this, this.d, new s(this, localShareService));
    this.i.setOnDismissListener(new t(this));
    try
    {
      if (!isFinishing())
        this.i.show();
      label74: long l = System.currentTimeMillis() - this.h;
      new StringBuilder("卡券分享AlipassForShareActivity加载时间").append(l).toString();
      AlipayApplication localAlipayApplication = this.mMicroApplicationContext.getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
      String str = getClass().getName();
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "";
      arrayOfString[1] = "";
      arrayOfString[2] = String.valueOf(l);
      arrayOfString[3] = "";
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_open_passshare", null, "s", "c", arrayOfString);
      return;
    }
    catch (Exception localException)
    {
      break label74;
    }
  }

  @UiThread
  public void c()
  {
    SimpleToast.makeToast(this, 0, "分享失败！", 0).show();
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = System.currentTimeMillis();
    Intent localIntent = getIntent();
    this.c = localIntent.getExtras().getString("p");
    this.g = localIntent.getExtras().getString("aid");
    if (this.c == null)
    {
      finish();
      return;
    }
    showProgressDialog("加载中...");
    try
    {
      a();
      return;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
      SimpleToast.makeToast(this, 0, "分享失败！", 0).show();
      finish();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassForShareActivity
 * JD-Core Version:    0.6.2
 */