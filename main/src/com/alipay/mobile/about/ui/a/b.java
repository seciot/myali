package com.alipay.mobile.about.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.List;

public final class b extends AppBundle
{
  private com.alipay.mobile.about.BundlesManager.MinPriorityThreadFactory c;
  private Bitmap d;

  public b(Context paramContext, List<com.alipay.mobile.about.ui.BundlesManager.AppBundle> paramList, com.alipay.mobile.about.BundlesManager.MinPriorityThreadFactory paramb)
  {
    super(paramContext, paramList);
    this.c = paramb;
    this.d = BitmapFactory.decodeResource(paramContext.getResources(), R.drawable.g);
  }

  public final void initExecutor()
  {
    if (this.d != null)
    {
      this.d.recycle();
      this.d = null;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    AppBundle locala;
    if (paramView == null)
    {
      paramView = View.inflate(this.a, R.layout.Z, null);
      locala = new AppBundle();
      locala.AppBundle = ((ImageView)paramView.findViewById(R.id.cr));
      locala.BundlesManager = ((APTextView)paramView.findViewById(R.id.cq));
      locala.BundlesManagerImpl = ((APTextView)paramView.findViewById(R.id.cp));
      paramView.setTag(locala);
    }
    while (true)
    {
      com.alipay.mobile.about.ui.BundlesManager.AppBundle locala1 = (com.alipay.mobile.about.ui.BundlesManager.AppBundle)this.b.get(paramInt);
      locala.BundlesManager.setText(locala1.HostClassLoader);
      locala.BundlesManagerImpl.setText(locala1.AppBundle);
      this.c.e(locala.AppBundle, locala1.ZLog, this.d);
      return paramView;
      locala = (AppBundle)paramView.getTag();
    }
  }

  final class a
  {
    ImageView a;
    APTextView b;
    APTextView c;

    a()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.a.b
 * JD-Core Version:    0.6.2
 */