package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageView.ScaleType;
import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import com.alipay.kabaoprod.core.model.model.SecurityQrCodeInfo;
import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APShareSelectDialog;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ShareService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl.SecurityAccountQrCodeImpl;
import com.alipay.mobile.ui.R.string;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;

@EActivity(resName="security_account_qrcode")
public class SecurityAccountQrCodeActivity extends BaseActivity
{

  @ViewById(resName="account_qrcode_img")
  protected APImageView a;

  @ViewById(resName="account_qrcode_warn1")
  protected APTextView b;

  @ViewById(resName="account_qrcode_titlebar")
  protected APTitleBar c;

  @ViewById(resName="account_qrcode_layout")
  protected APRelativeLayout d;

  @ViewById(resName="empty_view")
  protected APFlowTipView e;
  View.OnClickListener f = new l(this);
  private SecurityAccountQrCode g = null;
  private String h;
  private byte[] i;
  private Map<String, SecurityShareInfo> j = null;
  private String k;
  private Bitmap l;
  private SecurityQrCodeShowResult m;
  private APShareSelectDialog n = null;

  private int d()
  {
    SecurityQrCodeShowResult localSecurityQrCodeShowResult = this.m;
    int i1 = 0;
    if (localSecurityQrCodeShowResult != null)
    {
      SecurityAccountQrCodeInfoResult localSecurityAccountQrCodeInfoResult = this.m.getAccountQrCodeInfoResult();
      i1 = 0;
      if (localSecurityAccountQrCodeInfoResult != null)
      {
        Map localMap = this.m.getAccountQrCodeInfoResult().getExtraInfo();
        i1 = 0;
        if (localMap != null)
        {
          String str = (String)this.m.getAccountQrCodeInfoResult().getExtraInfo().get("shareSwitch");
          i1 = 0;
          if (str != null)
          {
            byte[] arrayOfByte = str.getBytes();
            int i2 = -1 + arrayOfByte.length;
            int i3 = arrayOfByte.length;
            int i4 = 0;
            int i5 = i2;
            int i6 = 0;
            if (i4 < i3)
            {
              if ((0xFF & arrayOfByte[i4]) == 49);
              for (int i7 = 1; ; i7 = 0)
              {
                int i8 = i7 << i5 * 4;
                i5--;
                i6 |= i8 & 0x1111111;
                new StringBuilder(" j is 0x shareType").append(i6).toString();
                i4++;
                break;
              }
            }
            i1 = i6;
          }
        }
      }
    }
    return i1 & 0x1111111;
  }

  @AfterViews
  protected final void a()
  {
    if (this.g == null)
      this.g = new SecurityAccountQrCodeImpl();
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(this.mApp);
    if (localUserInfo != null)
      this.h = localUserInfo.getUserId();
    this.m = this.g.getCacheQrCodeData(this.h);
    if (this.m != null)
    {
      a(this.h, this.m);
      return;
    }
    a(this.h);
  }

  @Background
  protected void a(String paramString)
  {
    showProgressDialog(null, true, null);
    try
    {
      this.g.putCacheQrCodeData(paramString);
      a(paramString, null);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      b();
    }
  }

  @UiThread
  protected void a(String paramString, SecurityQrCodeShowResult paramSecurityQrCodeShowResult)
  {
    dismissProgressDialog();
    if (paramSecurityQrCodeShowResult == null)
    {
      this.m = this.g.getCacheQrCodeData(paramString);
      if (this.m == null)
        break label250;
      this.e.setVisibility(8);
      this.d.setVisibility(0);
      APButton localAPButton = this.c.getRightButton();
      if (d() != 0)
      {
        this.c.setGenericButtonIconResource(R.drawable.b);
        localAPButton.setVisibility(0);
      }
      localAPButton.setOnClickListener(this.f);
      if (this.m.getQrCodeImgByteArr() == null)
        break label242;
      Bitmap localBitmap = BitmapFactory.decodeByteArray(this.m.getQrCodeImgByteArr(), 0, this.m.getQrCodeImgByteArr().length);
      ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      localLayoutParams.height = ((int)(0.7D * localDisplayMetrics.widthPixels));
      localLayoutParams.width = ((int)(0.7D * localDisplayMetrics.widthPixels));
      this.a.setScaleType(ImageView.ScaleType.CENTER_CROP);
      this.a.setImageBitmap(localBitmap);
    }
    while (true)
    {
      if ((this.m.getAccountQrCodeInfoResult() != null) && (this.m.getAccountQrCodeInfoResult().getExtraInfo() != null))
        this.b.setText((CharSequence)this.m.getAccountQrCodeInfoResult().getExtraInfo().get("qrcode_tip"));
      return;
      this.m = paramSecurityQrCodeShowResult;
      break;
      label242: a(paramString);
    }
    label250: b();
  }

  @UiThread
  public void a(Map<String, SecurityShareInfo> paramMap, int paramInt)
  {
    dismissProgressDialog();
    this.n = new APShareSelectDialog(this, paramInt, new m(this, (ShareService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(ShareService.class.getName()), paramMap));
    this.n.setOnDismissListener(new n(this));
    this.n.show();
  }

  @UiThread
  protected void a(byte[] paramArrayOfByte, ShareContent paramShareContent, ShareService paramShareService, int paramInt)
  {
    paramShareContent.setImage(paramArrayOfByte);
    new StringBuilder("imgLength=").append(paramArrayOfByte.length).append(";type=").append(paramInt).toString();
    new StringBuilder("content=").append(paramShareContent.toString()).append(";type=").append(paramInt).toString();
    paramShareService.silentShare(paramShareContent, paramInt, "20000019");
  }

  @UiThread
  protected void b()
  {
    this.d.setVisibility(8);
    this.e.resetFlowTipType(16);
    this.e.setVisibility(0);
    this.e.setTips(getResources().getString(R.string.flow_network_error));
    this.e.setAction(getResources().getString(R.string.tryAgin), new k(this));
  }

  @Background
  protected void c()
  {
    if (this.g == null)
      this.g = new SecurityAccountQrCodeImpl();
    try
    {
      int i1 = d();
      if (this.m != null)
      {
        if (this.m.getAccountQrCodeInfoResult() != null)
        {
          this.j = this.m.getAccountQrCodeInfoResult().getShareInfoMap();
          if (this.m.getAccountQrCodeInfoResult().getQrCodInfo() != null)
            this.k = this.m.getAccountQrCodeInfoResult().getQrCodInfo().getQrcode();
        }
        if (this.m.getQrCodeImgByteArr() != null)
          this.l = BitmapFactory.decodeByteArray(this.m.getQrCodeImgByteArr(), 0, this.m.getQrCodeImgByteArr().length);
        if (this.j != null)
          a(this.j, i1);
      }
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=getShareContent], [").append(localRpcException.getMessage()).append("]}").toString();
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 4370)
      switch (paramInt2)
      {
      case 2:
      default:
      case 1:
      case 3:
      }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      c();
      continue;
      if (this.g == null)
        this.g = new SecurityAccountQrCodeImpl();
      if ((this.l == null) && (this.m != null) && (this.m.getQrCodeImgByteArr() != null))
        this.l = BitmapFactory.decodeByteArray(this.m.getQrCodeImgByteArr(), 0, this.m.getQrCodeImgByteArr().length);
      if (this.l != null)
        this.g.saveQrImgToDCIM(this, this.l);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityAccountQrCodeActivity
 * JD-Core Version:    0.6.2
 */