package com.alipay.mobile.alipassapp.ui;

import android.app.Activity;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.biz.bean.CmsObject;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;

final class ah
  implements Runnable
{
  ah(AlipassListActivity paramAlipassListActivity, CmsObject paramCmsObject)
  {
  }

  public final void run()
  {
    APTextView localAPTextView;
    LinearLayout.LayoutParams localLayoutParams;
    DisplayMetrics localDisplayMetrics;
    if ((this.a != null) && (this.b.b() != null))
    {
      AlipassListActivity.a(this.b, (APLinearLayout)this.b.b().findViewById(R.id.cms_container));
      localAPTextView = (APTextView)this.b.b().findViewById(R.id.cms_txt);
      localLayoutParams = (LinearLayout.LayoutParams)AlipassListActivity.j(this.b).getLayoutParams();
      localDisplayMetrics = new DisplayMetrics();
      if ((AlipassListActivity.m(this.b) != null) && (AlipassListActivity.n(this.b).getTopActivity() != null));
    }
    else
    {
      return;
    }
    AlipassListActivity.o(this.b).getTopActivity().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = (int)(34.0F + localAPTextView.getPaint().measureText(this.a.getDetail()));
    int j = (int)(localDisplayMetrics.widthPixels - 26.0F * localDisplayMetrics.density);
    if (j < i);
    for (localLayoutParams.width = j; ; localLayoutParams.width = i)
    {
      AlipassListActivity.j(this.b).setLayoutParams(localLayoutParams);
      if (!"0".equalsIgnoreCase(this.a.getForwardOpt()))
        break;
      AlipassListActivity.j(this.b).setVisibility(0);
      localAPTextView.setText(this.a.getDetail());
      localAPTextView.setEnabled(false);
      return;
    }
    if ("1".equalsIgnoreCase(this.a.getForwardOpt()))
    {
      AlipassListActivity.j(this.b).setVisibility(0);
      localAPTextView.setText(this.a.getDetail());
      String str = this.a.getUri();
      if (StringUtils.isBlank(str))
      {
        localAPTextView.setEnabled(false);
        return;
      }
      localAPTextView.setOnClickListener(new ai(this, str));
      return;
    }
    if ("2".equalsIgnoreCase(this.a.getForwardOpt()))
    {
      AlipassListActivity.j(this.b).setVisibility(0);
      localAPTextView.setText(this.a.getDetail());
      if (StringUtils.isBlank(this.a.getUri()))
      {
        localAPTextView.setEnabled(false);
        return;
      }
      localAPTextView.setOnClickListener(new aj(this));
      return;
    }
    if ("3".equalsIgnoreCase(this.a.getForwardOpt()))
    {
      AlipassListActivity.j(this.b).setVisibility(0);
      localAPTextView.setText(this.a.getDetail());
      localAPTextView.setOnClickListener(new ak(this));
      return;
    }
    AlipassListActivity.j(this.b).setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ah
 * JD-Core Version:    0.6.2
 */