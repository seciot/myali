package com.alipay.mobile.android.main.publichome;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.alipay.mobile.android.main.publichome.dao.impl.FollowAccountInfoModel;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

public final class PublicHomeView_ extends PublicHomeView
{
  private Context a;
  private boolean b = false;
  private Handler c = new Handler();

  public PublicHomeView_(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public PublicHomeView_(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public PublicHomeView_(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    this.a = getContext();
    if ((this.a instanceof Activity));
  }

  public static PublicHomeView build(Context paramContext)
  {
    PublicHomeView_ localPublicHomeView_ = new PublicHomeView_(paramContext);
    localPublicHomeView_.onFinishInflate();
    return localPublicHomeView_;
  }

  public static PublicHomeView build(Context paramContext, AttributeSet paramAttributeSet)
  {
    PublicHomeView_ localPublicHomeView_ = new PublicHomeView_(paramContext, paramAttributeSet);
    localPublicHomeView_.onFinishInflate();
    return localPublicHomeView_;
  }

  public static PublicHomeView build(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    PublicHomeView_ localPublicHomeView_ = new PublicHomeView_(paramContext, paramAttributeSet, paramInt);
    localPublicHomeView_.onFinishInflate();
    return localPublicHomeView_;
  }

  public final void auth()
  {
    BackgroundExecutor.execute(new f(this));
  }

  public final void itemClick(FollowAccountInfoModel paramFollowAccountInfoModel, View paramView)
  {
    this.c.post(new g(this, paramFollowAccountInfoModel, paramView));
  }

  public final void onFinishInflate()
  {
    if (!this.b)
    {
      this.b = true;
      this.noFollowAccountBottom = ((LinearLayout)findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.e));
      this.mPullRefreshContainer = ((APPullRefreshView)findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.v));
      this.publicHomeList = ((ListView)findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.u));
      this.emptyContainer = ((RelativeLayout)findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.t));
    }
    super.onFinishInflate();
  }

  public final void publicHomeAfterRemove(boolean paramBoolean, FollowAccountInfoModel paramFollowAccountInfoModel)
  {
    this.c.post(new b(this, paramBoolean, paramFollowAccountInfoModel));
  }

  public final void publicHomeCancelTopOperate(FollowAccountInfoModel paramFollowAccountInfoModel)
  {
    this.c.post(new m(this, paramFollowAccountInfoModel));
  }

  public final void publicHomeRemoveOperate(FollowAccountInfoModel paramFollowAccountInfoModel)
  {
    BackgroundExecutor.execute(new c(this, paramFollowAccountInfoModel));
  }

  public final void publicHomeTopOperation(FollowAccountInfoModel paramFollowAccountInfoModel)
  {
    this.c.post(new i(this, paramFollowAccountInfoModel));
  }

  public final void queryPublicHomeFromRPC(boolean paramBoolean)
  {
    BackgroundExecutor.execute(new d(this, paramBoolean));
  }

  public final void refreshFinished()
  {
    this.c.post(new n(this));
  }

  public final void refreshPublichomeItems(List paramList)
  {
    this.c.post(new h(this, paramList));
  }

  public final void reloadPublichomeList(List paramList)
  {
    this.c.post(new k(this, paramList));
  }

  public final void scrollToTop()
  {
    this.c.postDelayed(new j(this), 500L);
  }

  public final void showProcessBarQuery()
  {
    this.c.post(new l(this));
  }

  public final void startLoadData()
  {
    BackgroundExecutor.execute(new e(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.PublicHomeView_
 * JD-Core Version:    0.6.2
 */