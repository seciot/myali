package com.alipay.mobile.alipassapp.viewcontrol;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.ui.common.EventTicketPrimaryFieldLayout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.List;

public class EventTicketViewControl extends a
{
  EventTicketPrimaryFieldLayout e;
  EventTicketPrimaryFieldLayout f;
  ViewGroup g;
  APImageView h;

  final k a()
  {
    return new s(this);
  }

  public final void a(Context paramContext, View paramView, ActivityApplication paramActivityApplication)
  {
    super.a(paramContext, paramView, paramActivityApplication);
    this.e = ((EventTicketPrimaryFieldLayout)this.c.findViewById(R.id.layout_primary));
    this.f = ((EventTicketPrimaryFieldLayout)this.c.findViewById(R.id.layout_secondary));
    this.g = ((ViewGroup)this.c.findViewById(R.id.layout_center));
    this.h = ((APImageView)this.c.findViewById(R.id.iv_strip));
  }

  public final void a(AlipassInfo paramAlipassInfo, CreateDynamicCodeService paramCreateDynamicCodeService, AlipassPayBridgeService paramAlipassPayBridgeService)
  {
    super.a(paramAlipassInfo, paramCreateDynamicCodeService, paramAlipassPayBridgeService);
    Object localObject;
    int k;
    if (paramAlipassInfo.getAuxiliaryFields() == null)
    {
      localObject = this.c.findViewById(a().d());
      k = 8;
      ((View)localObject).setVisibility(k);
      String str = paramAlipassInfo.getPassBaseInfo().getDisplayInfo().getStrip();
      ViewGroup localViewGroup = (ViewGroup)this.c.findViewById(R.id.layout_center);
      localViewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new r(this, localViewGroup, str, paramAlipassInfo));
      return;
    }
    int i = 0;
    label95: if (i < paramAlipassInfo.getAuxiliaryFields().size())
      if (paramAlipassInfo.getAuxiliaryFields().get(i) == null);
    for (int j = 0; ; j = 1)
    {
      View localView = this.c.findViewById(a().d());
      if (j != 0)
      {
        k = 8;
        localObject = localView;
        break;
        i++;
        break label95;
      }
      localObject = localView;
      k = 0;
      break;
    }
  }

  protected final void put(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    this.e.refresh(paramList, paramDisplayInfo, this.b);
  }

  protected final void b(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    this.f.refresh(paramList, paramDisplayInfo, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.EventTicketViewControl
 * JD-Core Version:    0.6.2
 */