package com.alipay.asset.common.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.phone.wealth.home.R.drawable;
import com.alipay.android.phone.wealth.home.R.id;
import com.alipay.android.phone.wealth.home.R.layout;
import com.alipay.android.widgets.asset.widget.IAssetWidgetView;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APFrameLayout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.androidquery.AQuery;
import java.util.Map;

public class WealthAccountInfoView extends APFrameLayout
  implements View.OnClickListener, IAssetWidgetView
{
  private APImageView a;
  private APTextView b;
  private APTextView c;
  private String d;
  private APImageView e;
  private String f = null;
  private String g = null;

  public WealthAccountInfoView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public WealthAccountInfoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public WealthAccountInfoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a()
  {
    this.a.setImageResource(R.drawable.BundlesManager);
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.AppBundle, this, true);
    this.a = ((APImageView)findViewById(R.id.DefaultThreadFactory));
    this.b = ((APTextView)findViewById(R.id.g));
    this.c = ((APTextView)findViewById(R.id.Dependable));
    this.e = ((APImageView)findViewById(R.id.BundlesManagerImpl));
  }

  public void bindWidgetFlagView(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
  }

  public void bindWidgetMsgFlag()
  {
  }

  public void cleanWidgetFlag()
  {
  }

  public WealthWidgetMsgFlag getBindedWidgetFlagView()
  {
    return null;
  }

  public View getView()
  {
    updateUI();
    return this;
  }

  public String getWidgetId()
  {
    return this.d;
  }

  public void hideNickNameSign()
  {
    this.e.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "20000070", null);
      AlipayLogAgent.writeLog(getContext(), BehaviourIdEnum.CLICKED, "20000005", "accountInfoIndex", "wealthHome", "accountInfo");
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
  }

  public void setDisplayInfo(Map<String, String> paramMap)
  {
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
  }

  public void setViewFlag(int paramInt)
  {
  }

  public void setWidgetId(String paramString)
  {
    this.d = paramString;
  }

  public void showNickNameSign()
  {
    this.e.setVisibility(0);
  }

  public void updateUI()
  {
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(AlipayApplication.getInstance().getMicroApplicationContext());
    if (localUserInfo == null)
    {
      a();
      return;
    }
    super.setOnClickListener(this);
    String str = localUserInfo.getUserAvatar();
    if ((StringUtils.equals(this.f, localUserInfo.getLogonId())) && (StringUtils.equals(this.g, str)))
    {
      new StringBuilder("财富首页头像-登录id和头像没有变化：logonId=").append(this.f).append(",headImg=").append(str).toString();
      return;
    }
    new StringBuilder("财富首页头像-设置，设置头像，logonId=").append(this.f).append(",headImg=").append(str).toString();
    this.f = localUserInfo.getLogonId();
    this.g = str;
    a();
    if (!TextUtils.isEmpty(str))
      ((AQuery)new AQuery(this.a.getContext()).id(this.a)).image(str);
    this.b.setText(localUserInfo.getUserName());
    this.c.setText(localUserInfo.getLogonId());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.view.WealthAccountInfoView
 * JD-Core Version:    0.6.2
 */