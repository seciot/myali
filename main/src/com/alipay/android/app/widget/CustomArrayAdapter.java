package com.alipay.android.app.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;

public class CustomArrayAdapter extends ArrayAdapter
{
  private LayoutInflater a;
  private ListView b;

  public CustomArrayAdapter(Context paramContext)
  {
    super(paramContext, R.id.aj);
    this.a = LayoutInflater.from(paramContext);
  }

  public void a(int paramInt, TextView paramTextView)
  {
  }

  public final void a(ListView paramListView)
  {
    this.b = paramListView;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    m localm1;
    CheckBox localCheckBox;
    if (paramView == null)
    {
      paramView = this.a.inflate(R.layout.S, paramViewGroup, false);
      m localm2 = new m(paramView);
      paramView.setTag(localm2);
      localm1 = localm2;
      localm1.a.setText((CharSequence)getItem(paramInt));
      a(paramInt, localm1.a);
      localCheckBox = localm1.b;
      if ((this.b == null) || (!this.b.isItemChecked(paramInt)))
        break label112;
    }
    label112: for (boolean bool = true; ; bool = false)
    {
      localCheckBox.setChecked(bool);
      return paramView;
      localm1 = (m)paramView.getTag();
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomArrayAdapter
 * JD-Core Version:    0.6.2
 */