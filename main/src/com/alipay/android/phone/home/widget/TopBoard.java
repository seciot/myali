package com.alipay.android.phone.home.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.android.phone.home.util.ImageLoadHelper;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;

public class TopBoard extends RelativeLayout
{
  private ImageView a;
  private TextView b;
  private TextView c;
  private int d = 82;
  private int e = 82;

  public TopBoard(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public TopBoard(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.BundlesManagerImpl, this, true);
    this.a = ((ImageView)findViewById(R.id.l));
    this.b = ((TextView)findViewById(R.id.A));
    this.c = ((TextView)findViewById(R.id.z));
  }

  public ImageView getIconView()
  {
    return this.a;
  }

  public void setData(String paramString1, String paramString2, String paramString3)
  {
    ImageLoadHelper.a(this.a, paramString1, this.d, this.e);
    this.b.setText(paramString2);
    this.c.setText(paramString3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.TopBoard
 * JD-Core Version:    0.6.2
 */