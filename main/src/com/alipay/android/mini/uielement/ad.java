package com.alipay.android.mini.uielement;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import java.util.List;

final class ad extends BaseAdapter
{
  private ad(UISelectButton paramUISelectButton)
  {
  }

  private String a(int paramInt)
  {
    if ((UISelectButton.getBundleByComponentName(this.a) != null) && (paramInt < UISelectButton.getBundleByComponentName(this.a).size()))
      return (String)UISelectButton.getBundleByComponentName(this.a).get(paramInt);
    return null;
  }

  public final int getCount()
  {
    if (UISelectButton.getBundleByComponentName(this.a) != null)
      return UISelectButton.getBundleByComponentName(this.a).size();
    return 0;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(GlobalContext.a().b()).inflate(R.layout.w, null);
    TextView localTextView = (TextView)paramView.findViewById(R.id.L);
    localTextView.setText(a(paramInt));
    localTextView.setTextSize(1, this.a.o());
    return paramView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ad
 * JD-Core Version:    0.6.2
 */