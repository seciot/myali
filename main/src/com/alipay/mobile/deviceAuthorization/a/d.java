package com.alipay.mobile.deviceAuthorization.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobilesecurity.common.spi.approve.AuthOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class d extends BaseAdapter
{
  private Context a;
  private List<AuthOption> b = new ArrayList();
  private LayoutInflater c;
  private Map<String, AuthOption> d = new HashMap();

  public d(Context paramContext, List<AuthOption> paramList)
  {
    this.a = paramContext;
    this.c = LayoutInflater.from(this.a);
    this.b = paramList;
  }

  public final AuthOption setBundlePath(int paramInt)
  {
    return (AuthOption)this.b.get(paramInt);
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
    AuthOption localAuthOption1 = (AuthOption)this.d.get(String.valueOf(paramInt));
    AuthOption localAuthOption2;
    View localView;
    CheckBox localCheckBox;
    boolean bool;
    if (localAuthOption1 != null)
    {
      localAuthOption2 = localAuthOption1;
      localView = this.c.inflate(R.layout.i, null);
      localCheckBox = (CheckBox)localView.findViewById(R.id.y);
      localCheckBox.setChecked(localAuthOption2.defaultChecked);
      if (localAuthOption2.forceChecked)
        break label171;
      bool = true;
      label74: localCheckBox.setEnabled(bool);
      ((TextView)localView.findViewById(R.id.C)).setText(localAuthOption2.optionText);
      if (localAuthOption2.forceChecked)
        break label177;
      localView.setClickable(true);
      localView.setOnClickListener(new e(this, localCheckBox));
    }
    while (true)
    {
      if (localAuthOption1 == null)
        this.d.put(String.valueOf(paramInt), localAuthOption2);
      return localView;
      localAuthOption2 = (AuthOption)this.b.get(paramInt);
      break;
      label171: bool = false;
      break label74;
      label177: localCheckBox.setChecked(true);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.a.d
 * JD-Core Version:    0.6.2
 */