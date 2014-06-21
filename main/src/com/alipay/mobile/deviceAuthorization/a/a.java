package com.alipay.mobile.deviceAuthorization.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.AuthInfo;
import java.util.ArrayList;
import java.util.List;

public final class a extends BaseAdapter
{
  private Context a;
  private List<AuthInfo> b = new ArrayList();
  private LayoutInflater c;
  private ImageLoaderService d = (ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName());

  public a(Context paramContext, List<AuthInfo> paramList)
  {
    this.a = paramContext;
    this.c = LayoutInflater.from(this.a);
    this.b = paramList;
  }

  public final AuthInfo setBundlePath(int paramInt)
  {
    return (AuthInfo)this.b.get(paramInt);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final long getItemId(int paramInt)
  {
    return -1L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.c.inflate(R.layout.h, null);
    ((TextView)paramView.findViewById(R.id.aU)).setText(((AuthInfo)this.b.get(paramInt)).getTitle());
    ((TextView)paramView.findViewById(R.id.aS)).setText(((AuthInfo)this.b.get(paramInt)).getContent());
    this.d.startLoad("owner", "group", ((AuthInfo)this.b.get(paramInt)).getTargetLogo(), new BundlesManager(this, paramView), 0, 0);
    return paramView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.a.a
 * JD-Core Version:    0.6.2
 */