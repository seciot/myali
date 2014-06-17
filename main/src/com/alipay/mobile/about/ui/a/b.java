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

public final class b extends a
{
  private com.alipay.mobile.about.b.b c;
  private Bitmap d;

  public b(Context paramContext, List<com.alipay.mobile.about.ui.b.a> paramList, com.alipay.mobile.about.b.b paramb)
  {
    super(paramContext, paramList);
    this.c = paramb;
    this.d = BitmapFactory.decodeResource(paramContext.getResources(), R.drawable.g);
  }

  public final void a()
  {
    if (this.d != null)
    {
      this.d.recycle();
      this.d = null;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    a locala;
    if (paramView == null)
    {
      paramView = View.inflate(this.a, R.layout.Z, null);
      locala = new a();
      locala.a = ((ImageView)paramView.findViewById(R.id.cr));
      locala.b = ((APTextView)paramView.findViewById(R.id.cq));
      locala.c = ((APTextView)paramView.findViewById(R.id.cp));
      paramView.setTag(locala);
    }
    while (true)
    {
      com.alipay.mobile.about.ui.b.a locala1 = (com.alipay.mobile.about.ui.b.a)this.b.get(paramInt);
      locala.b.setText(locala1.e);
      locala.c.setText(locala1.a);
      this.c.a(locala.a, locala1.d, this.d);
      return paramView;
      locala = (a)paramView.getTag();
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