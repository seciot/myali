package com.alipay.mobile.alipassapp.viewcontrol;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.anim;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.App;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AppInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.ui.AlipassForShareActivity_;
import com.alipay.mobile.alipassapp.ui.AlipassHtmlActivity_;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.alipassapp.ui.common.AlipassHeaderLayout;
import com.alipay.mobile.alipassapp.ui.common.AlipassInfoFieldLayout;
import com.alipay.mobile.alipassapp.ui.common.AlipassOperationViewPager;
import com.alipay.mobile.alipassapp.ui.common.g;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.transport.utils.NetworkUtils;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.androidquery.AQuery;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class a
  implements View.OnClickListener
{
  protected Context a;
  protected ActivityApplication b;
  protected View c;
  protected View d;
  private AlipassInfo e;
  private k f;
  private Handler g = new Handler();
  private APPullRefreshView h;
  private ViewGroup i;
  private ViewGroup j;
  private View k;
  private APImageView l;
  private Bitmap m;
  private APImageView n;
  private Bitmap o;
  private APRelativeLayout p;
  private APImageButton q;
  private APRelativeLayout r;
  private APImageButton s;
  private APRelativeLayout t;
  private APRelativeLayout u;
  private APImageButton v;
  private APImageButton w;
  private APLinearLayout x;
  private APLinearLayout y;
  private ViewGroup z;

  private void a(boolean paramBoolean)
  {
    APTitleBar localAPTitleBar;
    if ((this.i != null) && (this.c != null) && (this.k != null) && (this.l != null) && (this.n != null) && (this.j != null))
    {
      localAPTitleBar = (APTitleBar)this.j.findViewById(R.id.titlebar);
      if (paramBoolean)
      {
        b(paramBoolean);
        this.l.setImageBitmap(this.m);
        this.n.setImageBitmap(this.o);
        TranslateAnimation localTranslateAnimation1 = new TranslateAnimation(0.0F, 0.0F, localAPTitleBar.getTop(), -(localAPTitleBar.getHeight() + this.i.getHeight() - this.i.findViewById(R.id.layout_bottom).getHeight()));
        localTranslateAnimation1.setDuration(200L);
        localTranslateAnimation1.setInterpolator(new AccelerateInterpolator());
        TranslateAnimation localTranslateAnimation2 = new TranslateAnimation(0.0F, 0.0F, this.i.findViewById(R.id.layout_bottom).getTop() + localAPTitleBar.getHeight(), 0.0F);
        localTranslateAnimation2.setDuration(200L);
        localTranslateAnimation2.setInterpolator(new AccelerateInterpolator());
        localTranslateAnimation1.setAnimationListener(new e(this));
        this.l.startAnimation(localTranslateAnimation1);
        this.n.startAnimation(localTranslateAnimation2);
      }
    }
    else
    {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(this.a, R.anim.alipass_detail_backview_top_gone);
    localAnimation.setAnimationListener(new c(this, paramBoolean, localAPTitleBar));
    this.k.findViewById(R.id.layout_backview_top_back).setVisibility(0);
    this.k.findViewById(R.id.layout_backview_top_back).startAnimation(localAnimation);
  }

  private void b(boolean paramBoolean)
  {
    if ((this.m == null) || (this.m.isRecycled()))
    {
      this.m = Bitmap.createBitmap(this.j.getWidth(), this.j.getHeight(), Bitmap.Config.RGB_565);
      g.a(this.j, this.m, this.e.getPassBaseInfo().getDisplayInfo().getResolveBackgroundColor(0));
    }
    if ((this.o == null) || (this.o.isRecycled()))
    {
      this.o = Bitmap.createBitmap(this.k.getWidth(), this.k.getHeight(), Bitmap.Config.RGB_565);
      g.a(this.k, this.o, this.e.getPassBaseInfo().getDisplayInfo().getResolveBackgroundColor(0));
    }
    if (paramBoolean)
    {
      g.a(this.j, this.m, this.e.getPassBaseInfo().getDisplayInfo().getResolveBackgroundColor(0));
      return;
    }
    g.a(this.k, this.o, this.e.getPassBaseInfo().getDisplayInfo().getResolveBackgroundColor(0));
  }

  abstract k a();

  public void a(Context paramContext, View paramView, ActivityApplication paramActivityApplication)
  {
    this.a = paramContext;
    this.b = paramActivityApplication;
    this.j = ((ViewGroup)paramView.findViewById(R.id.layout_detail_container));
    this.h = ((APPullRefreshView)paramView.findViewById(R.id.details_pull_refresh_container));
    this.f = a();
    if (this.h != null)
      this.i = ((ViewGroup)this.h.findViewById(R.id.layout_container));
    if ((this.a != null) && (this.f != null))
      this.c = LayoutInflater.from(this.a).inflate(this.f.a(), null);
    if (this.a != null)
      this.k = LayoutInflater.from(this.a).inflate(R.layout.sub_alipass_backview, null);
    if ((this.i != null) && (this.c != null))
    {
      this.i.removeAllViews();
      this.i.addView(this.c);
    }
    if ((this.j != null) && (this.k != null))
    {
      this.l = ((APImageView)this.j.findViewById(R.id.iv_frontview));
      this.n = ((APImageView)this.j.findViewById(R.id.iv_backview));
      this.j.addView(this.k);
    }
    if (this.c != null)
    {
      this.q = ((APImageButton)this.c.findViewById(R.id.btn_toback));
      this.p = ((APRelativeLayout)this.c.findViewById(R.id.layout_toback));
      this.v = ((APImageButton)this.c.findViewById(R.id.btn_front_share));
      this.t = ((APRelativeLayout)this.c.findViewById(R.id.layout_front_share));
      this.x = ((APLinearLayout)this.c.findViewById(R.id.layout_front_dynamic));
    }
    if (this.k != null)
    {
      this.s = ((APImageButton)this.k.findViewById(R.id.btn_tofront));
      this.r = ((APRelativeLayout)this.k.findViewById(R.id.layout_tofront));
      this.w = ((APImageButton)this.k.findViewById(R.id.btn_back_share));
      this.u = ((APRelativeLayout)this.k.findViewById(R.id.layout_back_share));
      this.y = ((APLinearLayout)this.k.findViewById(R.id.layout_back_dynamic));
      this.z = ((ViewGroup)this.k.findViewById(R.id.layout_back_dark));
    }
    if (this.q != null)
      this.q.setOnClickListener(this);
    if (this.s != null)
      this.s.setOnClickListener(this);
    if (this.v != null)
      this.v.setOnClickListener(this);
    if (this.t != null)
      this.t.setOnClickListener(this);
    if (this.r != null)
      this.r.setOnClickListener(this);
    if (this.p != null)
      this.p.setOnClickListener(this);
    if (this.x != null)
      this.x.setOnClickListener(this);
    if (this.z != null)
      this.z.setOnClickListener(this);
    if (this.w != null)
      this.w.setOnClickListener(this);
    if (this.u != null)
      this.u.setOnClickListener(this);
  }

  public void a(AlipassInfo paramAlipassInfo, CreateDynamicCodeService paramCreateDynamicCodeService, AlipassPayBridgeService paramAlipassPayBridgeService)
  {
    if (paramAlipassInfo == null);
    while (true)
    {
      return;
      this.e = paramAlipassInfo;
      if (this.k != null)
        this.k.setVisibility(4);
      if ((paramAlipassInfo != null) && ("1".equals(paramAlipassInfo.getShareSuport())))
      {
        if (this.t != null)
          this.t.setVisibility(0);
        if (this.u != null)
          this.u.setVisibility(0);
      }
      if ((paramAlipassInfo != null) && (paramAlipassInfo.getTrendUrl() != null))
      {
        if (this.x != null)
          this.x.setVisibility(0);
        if (this.y != null)
          this.y.setVisibility(0);
      }
      AlipassInfo.AliPassBaseInfo localAliPassBaseInfo = paramAlipassInfo.getPassBaseInfo();
      try
      {
        ShapeDrawable localShapeDrawable = new ShapeDrawable(new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 0.0F, 0.0F, 0.0F, 0.0F }, null, null));
        localShapeDrawable.getPaint().setColor(localAliPassBaseInfo.getDisplayInfo().getResolveBackgroundColor(0));
        this.q.setBackgroundDrawable(localShapeDrawable);
        this.s.setBackgroundDrawable(localShapeDrawable);
        this.c.setBackgroundColor(localAliPassBaseInfo.getDisplayInfo().getResolveBackgroundColor(0));
        this.k.setBackgroundColor(localAliPassBaseInfo.getDisplayInfo().getResolveBackgroundColor(0));
        if ((this.f != null) && (this.f.b() > 0) && (this.c != null))
        {
          View localView3 = this.c.findViewById(this.f.b());
          if ((localView3 != null) && ((localView3 instanceof AlipassHeaderLayout)))
            ((AlipassHeaderLayout)localView3).refresh(localAliPassBaseInfo, false);
        }
        a(paramAlipassInfo.getPrimaryFields(), localAliPassBaseInfo.getDisplayInfo());
        b(paramAlipassInfo.getSecondaryFields(), localAliPassBaseInfo.getDisplayInfo());
        List localList1 = paramAlipassInfo.getAuxiliaryFields();
        AlipassInfo.DisplayInfo localDisplayInfo1 = localAliPassBaseInfo.getDisplayInfo();
        if ((this.f != null) && (this.f.d() > 0) && (this.c != null))
        {
          View localView2 = this.c.findViewById(this.f.d());
          if ((localView2 != null) && ((localView2 instanceof AlipassInfoFieldLayout)))
            ((AlipassInfoFieldLayout)localView2).refresh(localList1, localDisplayInfo1, this.b);
        }
        List localList2 = paramAlipassInfo.getOperation();
        AlipassInfo.DisplayInfo localDisplayInfo2 = localAliPassBaseInfo.getDisplayInfo();
        if ((this.f != null) && (this.f.e() > 0) && (this.c != null))
        {
          View localView1 = this.c.findViewById(this.f.e());
          if ((localView1 != null) && ((localView1 instanceof AlipassOperationViewPager)))
          {
            ViewGroup localViewGroup = (ViewGroup)this.c.findViewById(R.id.indicator_container);
            ((AlipassOperationViewPager)localView1).setmApp(this.b, this.e, paramCreateDynamicCodeService, paramAlipassPayBridgeService);
            ((AlipassOperationViewPager)localView1).refresh(localList2, localDisplayInfo2, localViewGroup);
          }
        }
        if ((paramAlipassInfo == null) || (this.k == null))
          continue;
        APListView localAPListView = (APListView)this.k.findViewById(R.id.backview_list);
        AlipassInfo.AppInfo localAppInfo = paramAlipassInfo.getAppInfo();
        Object localObject = null;
        if (localAppInfo != null)
          localObject = localAppInfo.getIcon();
        if ((localObject == null) || (((String)localObject).trim().length() <= 0));
        try
        {
          String str4 = paramAlipassInfo.getPassBaseInfo().getDisplayInfo().getIcon();
          localObject = str4;
          label626: Boolean localBoolean;
          APButton localAPButton1;
          APButton localAPButton2;
          b localb;
          if ((localAppInfo != null) && (((localObject != null) && (((String)localObject).trim().length() > 0)) || ((localAppInfo.getLabel() != null) && (localAppInfo.getLabel().trim().length() > 0))))
          {
            if ((this.d == null) && (this.a != null))
              this.d = LayoutInflater.from(this.a).inflate(R.layout.sub_alipass_appinfo, null);
            if ((localAppInfo != null) && (localAppInfo.getApp() != null))
              break label1030;
            localBoolean = Boolean.valueOf(false);
            if (localBoolean.booleanValue())
            {
              if (localAPListView.getHeaderViewsCount() <= 0)
                localAPListView.addHeaderView(this.d);
              if (localAppInfo != null)
              {
                ((APTextView)this.d.findViewById(R.id.app_msg)).setText(localAppInfo.getMessage());
                ((APTextView)this.d.findViewById(R.id.app_label)).setText(localAppInfo.getLabel());
                APImageView localAPImageView = (APImageView)this.d.findViewById(R.id.app_icon);
                if ((localObject != null) && (((String)localObject).trim().length() > 0))
                  ((AQuery)new AQuery(this.a).id(localAPImageView)).image((String)localObject, true, true, 0, R.drawable.alipass_icon_back);
                if (localAppInfo.getApp() != null)
                {
                  if ((localAppInfo.getApp().getAndroid_appid() == null) || (this.a.getPackageManager().getLaunchIntentForPackage(localAppInfo.getApp().getAndroid_appid()) == null))
                    break label1167;
                  i1 = 1;
                  localAPButton1 = (APButton)this.d.findViewById(R.id.app_action_download);
                  localAPButton2 = (APButton)this.d.findViewById(R.id.app_action_launch);
                  localb = new b(this, this.a, "app_plat", this.e.getPassBaseInfo().getPartnerId(), localAppInfo.getApp().getAndroid_appid(), localAppInfo.getNeedAuthorize(), localAppInfo.getApp().getAndroid_launch(), localAppInfo.getApp().getAndroid_download(), this.b);
                  if (i1 == 0)
                    break label1134;
                  localAPButton1.setVisibility(8);
                  localAPButton2.setVisibility(0);
                  localAPButton2.setOnClickListener(localb);
                }
              }
            }
          }
          while (true)
          {
            localAPListView.setAdapter(new l(this, paramAlipassInfo.getBackFields()));
            return;
            label1030: if (localAppInfo.getApp() != null)
            {
              String str1 = localAppInfo.getApp().getAndroid_appid();
              String str2 = localAppInfo.getApp().getAndroid_launch();
              String str3 = localAppInfo.getApp().getAndroid_download();
              if ((str1 == null) || (str2 == null) || (str3 == null) || (str1.trim().length() <= 0) || (str2.trim().length() <= 0) || (str3.trim().length() <= 0))
              {
                localBoolean = Boolean.valueOf(false);
                break;
              }
            }
            localBoolean = Boolean.valueOf(true);
            break;
            label1134: localAPButton1.setVisibility(0);
            localAPButton2.setVisibility(8);
            localAPButton1.setOnClickListener(localb);
          }
        }
        catch (Exception localException2)
        {
          break label626;
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          continue;
          label1167: int i1 = 0;
        }
      }
    }
  }

  protected void a(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    if (this.f != null);
  }

  protected void b(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    if ((this.f != null) && (this.f.c() > 0) && (this.c != null))
    {
      View localView = this.c.findViewById(this.f.c());
      if ((localView != null) && ((localView instanceof AlipassInfoFieldLayout)))
        ((AlipassInfoFieldLayout)localView).refresh(paramList, paramDisplayInfo, this.b);
    }
  }

  public final boolean b()
  {
    if ((this.k == null) || (this.c == null));
    while ((this.k.getVisibility() != 0) || (this.i.getVisibility() != 4))
      return false;
    return true;
  }

  public final void c()
  {
    onClick(this.s);
  }

  public void onClick(View paramView)
  {
    if ((paramView == this.q) || (paramView == this.p))
      try
      {
        if (StringUtils.equalsIgnoreCase(this.e.getBizType(), "COUPON"))
        {
          AlipayApplication localAlipayApplication2 = AlipayApplication.getInstance();
          BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.CLICKED;
          String[] arrayOfString2 = new String[2];
          arrayOfString2[0] = this.e.getPassBaseInfo().getPassId();
          arrayOfString2[1] = this.e.getPassBaseInfo().getPartnerId();
          AlipayLogAgent.writeLog(localAlipayApplication2, localBehaviourIdEnum2, "", "", "20000030", "", "couponBackDetails", "couponDetails", "seeBack", "", "", "", arrayOfString2);
        }
        while (true)
        {
          label115: a(true);
          return;
          if (StringUtils.equalsIgnoreCase(this.e.getBizType(), "TRAVEL"))
          {
            AlipayApplication localAlipayApplication1 = AlipayApplication.getInstance();
            BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.CLICKED;
            String[] arrayOfString1 = new String[2];
            arrayOfString1[0] = this.e.getPassBaseInfo().getPassId();
            arrayOfString1[1] = this.e.getPassBaseInfo().getPartnerId();
            AlipayLogAgent.writeLog(localAlipayApplication1, localBehaviourIdEnum1, "", "", "20000021", "", "travelItineraryBackDetails", "travelItineraryDetails", "seeBack", "", "", "", arrayOfString1);
          }
        }
      }
      catch (Exception localException1)
      {
        break label115;
      }
    if ((paramView == this.s) || (paramView == this.r))
      try
      {
        if (StringUtils.equalsIgnoreCase(this.e.getBizType(), "COUPON"))
        {
          AlipayApplication localAlipayApplication4 = AlipayApplication.getInstance();
          BehaviourIdEnum localBehaviourIdEnum4 = BehaviourIdEnum.CLICKED;
          String[] arrayOfString4 = new String[2];
          arrayOfString4[0] = this.e.getPassBaseInfo().getPassId();
          arrayOfString4[1] = this.e.getPassBaseInfo().getPartnerId();
          AlipayLogAgent.writeLog(localAlipayApplication4, localBehaviourIdEnum4, "", "", "20000030", "", "", "couponBackDetails", "seeFront", "", "", "", arrayOfString4);
        }
        while (true)
        {
          label340: a(false);
          return;
          if (StringUtils.equalsIgnoreCase(this.e.getBizType(), "TRAVEL"))
          {
            AlipayApplication localAlipayApplication3 = AlipayApplication.getInstance();
            BehaviourIdEnum localBehaviourIdEnum3 = BehaviourIdEnum.CLICKED;
            String[] arrayOfString3 = new String[2];
            arrayOfString3[0] = this.e.getPassBaseInfo().getPassId();
            arrayOfString3[1] = this.e.getPassBaseInfo().getPartnerId();
            AlipayLogAgent.writeLog(localAlipayApplication3, localBehaviourIdEnum3, "", "", "20000021", "", "", "travelItineraryBackDetails", "seeFront", "", "", "", arrayOfString3);
          }
        }
      }
      catch (Exception localException2)
      {
        break label340;
      }
    Matcher localMatcher;
    if (paramView == this.x)
    {
      if (!NetworkUtils.isNetworkAvailable(this.a))
      {
        SimpleToast.makeToast(this.a, R.string.alipass_nonetwork_toast, 0).show();
        return;
      }
      if (this.e.getTrendUrl() == null)
        break label941;
      localMatcher = Pattern.compile("[^//]*?\\.(com|cn|net|org|biz|info|cc|tv)", 2).matcher(this.e.getTrendUrl());
      localMatcher.find();
    }
    label941: for (String str = localMatcher.group(); ; str = null)
    {
      AlipayApplication localAlipayApplication6 = AlipayApplication.getInstance();
      BehaviourIdEnum localBehaviourIdEnum6 = BehaviourIdEnum.CLICKED;
      String[] arrayOfString6 = new String[3];
      arrayOfString6[0] = this.e.getPassBaseInfo().getPassId();
      arrayOfString6[1] = this.e.getPassBaseInfo().getPartnerId();
      arrayOfString6[2] = str;
      AlipayLogAgent.writeLog(localAlipayApplication6, localBehaviourIdEnum6, "", "", "20000021", "", "", "travelItineraryDetails", "seeTrend", "", "", "", arrayOfString6);
      HtmlActivityRequest localHtmlActivityRequest = new HtmlActivityRequest();
      localHtmlActivityRequest.setRequestUrl(this.e.getTrendUrl());
      localHtmlActivityRequest.setTitle(this.a.getString(R.string.travel_dynamic));
      Intent localIntent2 = new Intent(this.a, AlipassHtmlActivity_.class);
      localIntent2.putExtra("HARequest", localHtmlActivityRequest);
      this.b.getMicroApplicationContext().startActivity(this.b, localIntent2);
      return;
      if ((paramView == this.v) || (paramView == this.t))
      {
        if ((this.b instanceof AlipassApp))
        {
          Bundle localBundle = ((AlipassApp)this.b).getAppBundle();
          if ((localBundle != null) && ("t".equalsIgnoreCase(localBundle.getString("b"))))
          {
            AlipayApplication localAlipayApplication5 = AlipayApplication.getInstance();
            BehaviourIdEnum localBehaviourIdEnum5 = BehaviourIdEnum.CLICKED;
            String[] arrayOfString5 = new String[2];
            arrayOfString5[0] = this.e.getPassBaseInfo().getPassId();
            arrayOfString5[1] = this.e.getPassBaseInfo().getPartnerId();
            AlipayLogAgent.writeLog(localAlipayApplication5, localBehaviourIdEnum5, "", "", "20000021", "", "", "travelItineraryDetails", "share", "", "", "", arrayOfString5);
          }
        }
        Intent localIntent1 = new Intent(this.a, AlipassForShareActivity_.class);
        localIntent1.putExtra("p", String.valueOf(this.e.getPassBaseInfo().getPassId()));
        localIntent1.putExtra("aid", "20000021");
        this.b.getMicroApplicationContext().startActivity(this.b, localIntent1);
        return;
      }
      if ((paramView != this.z) && (paramView != this.w) && (paramView != this.u))
        break;
      a(false);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.a
 * JD-Core Version:    0.6.2
 */