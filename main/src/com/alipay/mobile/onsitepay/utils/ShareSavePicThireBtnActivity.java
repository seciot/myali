package com.alipay.mobile.onsitepay.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.alibaba.fastjson.JSON;
import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import com.alipay.kabaoprod.core.model.model.SecurityQrCodeInfo;
import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ShareService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;

@EActivity(resName="facepayee_layout_more_thire_btn")
public class ShareSavePicThireBtnActivity extends BaseActivity
  implements View.OnClickListener
{
  static String a = "ShareSavePicThireBtnActivity";

  @ViewById(resName="change_avatar_operations")
  APLinearLayout b;

  @ViewById(resName="save_picture_btn")
  Button c;

  @ViewById(resName="share_btn")
  Button d;

  @ViewById(resName="cancel_btn")
  Button e;
  private APShareSelectDialog f = null;
  private SecurityQrCodeShowResult g;
  private Map<String, SecurityShareInfo> h = null;
  private String i;
  private Bitmap j;
  private byte[] k;

  private static SecurityAccountQrCode c()
  {
    return (SecurityAccountQrCode)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(SecurityAccountQrCode.class.getName());
  }

  @AfterViews
  protected final void a()
  {
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    SecurityAccountQrCode localSecurityAccountQrCode = c();
    UserInfo localUserInfo = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getLastLoginedUserInfo();
    if (localUserInfo != null);
    for (String str = localUserInfo.getUserId(); ; str = null)
    {
      this.g = localSecurityAccountQrCode.getCacheQrCodeData(str);
      new StringBuilder("qrCodeShowRs=").append(JSON.toJSONString(this.g)).toString();
      return;
    }
  }

  @UiThread
  public void a(Map<String, SecurityShareInfo> paramMap, int paramInt)
  {
    dismissProgressDialog();
    this.f = new APShareSelectDialog(this, paramInt, new b(this, (ShareService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ShareService.class.getName()), paramMap));
    this.f.setOnDismissListener(new c(this));
    this.f.show();
    this.b.setVisibility(4);
  }

  @UiThread
  protected void a(byte[] paramArrayOfByte, ShareContent paramShareContent, ShareService paramShareService, int paramInt)
  {
    paramShareContent.setImage(paramArrayOfByte);
    new StringBuilder("imgLength=").append(paramArrayOfByte.length).append(";type=").append(paramInt).toString();
    new StringBuilder("content=").append(paramShareContent.toString()).append(";type=").append(paramInt).toString();
    paramShareService.silentShare(paramShareContent, paramInt, "20000019");
  }

  @Background
  protected void b()
  {
    try
    {
      int m = a.a(this.g);
      new StringBuilder("shareType=").append(m).toString();
      if (this.g != null)
      {
        if (this.g.getAccountQrCodeInfoResult() != null)
        {
          this.h = this.g.getAccountQrCodeInfoResult().getShareInfoMap();
          if (this.g.getAccountQrCodeInfoResult().getQrCodInfo() != null)
            this.i = this.g.getAccountQrCodeInfoResult().getQrCodInfo().getQrcode();
        }
        if (this.g.getQrCodeImgByteArr() != null)
          this.j = BitmapFactory.decodeByteArray(this.g.getQrCodeImgByteArr(), 0, this.g.getQrCodeImgByteArr().length);
        if (this.h != null)
        {
          a(this.h, m);
          return;
        }
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=getShareContent], [").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      throw localRpcException;
    }
    finish();
  }

  public void onClick(View paramView)
  {
    int m = paramView.getId();
    if (m == d.au)
    {
      if ((this.j == null) && (this.g != null) && (this.g.getQrCodeImgByteArr() != null))
        this.j = BitmapFactory.decodeByteArray(this.g.getQrCodeImgByteArr(), 0, this.g.getQrCodeImgByteArr().length);
      if (this.j != null)
        c().saveQrImgToDCIM(this, this.j);
      finish();
    }
    do
    {
      return;
      if (m == d.ax)
      {
        b();
        return;
      }
    }
    while (m != d.o);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.ShareSavePicThireBtnActivity
 * JD-Core Version:    0.6.2
 */