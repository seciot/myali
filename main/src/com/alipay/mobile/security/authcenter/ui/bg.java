package com.alipay.mobile.security.authcenter.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import java.util.List;

public final class bg<T> extends a<T>
{
  public bg(Context paramContext, LayoutInflater paramLayoutInflater, int paramInt, List<T> paramList)
  {
    super(paramContext, paramLayoutInflater, paramInt, paramList);
  }

  protected final View a(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2)
  {
    if (paramView == null)
      paramView = this.e.inflate(paramInt2, paramViewGroup, false);
    ((APTextView)paramView.findViewById(R.id.ct)).setText(((TaoBaoUserInfo)getItem(paramInt1)).getTaoBaoUserId());
    return paramView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.bg
 * JD-Core Version:    0.6.2
 */