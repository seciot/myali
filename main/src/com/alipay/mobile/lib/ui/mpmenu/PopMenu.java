package com.alipay.mobile.lib.ui.mpmenu;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.mobile.publicsvc.common.R.drawable;
import com.alipay.mobile.publicsvc.common.R.id;
import com.alipay.mobile.publicsvc.common.R.layout;

public class PopMenu
{
  private Context a;
  private PopMenu.PopItem[] b;
  private FrameLayout c;
  private PopupWindow d;
  private PopMenu.OnMenuItemClikListener e;
  private int f = -1;
  private int g = -1;
  private View.OnClickListener h = new PopMenu.1(this);

  public PopMenu(Context paramContext, int[] paramArrayOfInt)
  {
    this.a = paramContext;
    if ((paramArrayOfInt != null) && (paramArrayOfInt.length > 0))
    {
      this.b = new PopMenu.PopItem[paramArrayOfInt.length];
      for (int i = 0; i < paramArrayOfInt.length; i++)
      {
        PopMenu.PopItem localPopItem = new PopMenu.PopItem();
        localPopItem.mItemId = paramArrayOfInt[i];
        localPopItem.mLabel = paramContext.getString(paramArrayOfInt[i]);
        this.b[i] = localPopItem;
      }
    }
    a();
  }

  public PopMenu(Context paramContext, PopMenu.PopItem[] paramArrayOfPopItem)
  {
    this.a = paramContext;
    this.b = paramArrayOfPopItem;
    a();
  }

  private static float a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics.density;
  }

  private void a()
  {
    this.c = ((FrameLayout)LayoutInflater.from(this.a).inflate(R.layout.message_menu, null));
    LinearLayout localLinearLayout = (LinearLayout)this.c.findViewById(R.id.pub_sub_menu_layout);
    View[] arrayOfView = new View[this.b.length];
    int i = 0;
    int j = 0;
    if (i < this.b.length)
    {
      View localView2 = LayoutInflater.from(this.a).inflate(R.layout.pub_message_del_item, null);
      TextView localTextView = (TextView)localView2.findViewById(R.id.menu_item);
      if (this.b.length == 1)
        localTextView.setBackgroundResource(R.drawable.pub_menu_item_full_selector);
      while (true)
      {
        PopMenu.PopItem localPopItem = getItem(i);
        if (localPopItem != null)
        {
          if (i == -1 + this.b.length)
            localView2.findViewById(R.id.pub_menu_item_devider).setVisibility(4);
          localTextView.setText(localPopItem.mLabel);
          localTextView.setTag(R.id.position_tag, Integer.valueOf(i));
          localTextView.setOnClickListener(this.h);
          localTextView.measure(0, -2147483648);
          if (j < localTextView.getMeasuredWidth())
            j = localTextView.getMeasuredWidth();
          arrayOfView[i] = localView2;
        }
        i++;
        break;
        if (i == 0)
          localTextView.setBackgroundResource(R.drawable.pub_menu_item_top_selector);
        else if (i == -1 + this.b.length)
          localTextView.setBackgroundResource(R.drawable.pub_menu_item_bottom_selector);
        else
          localTextView.setBackgroundResource(R.drawable.pub_menu_item_middle_selector);
      }
    }
    for (int k = 0; k < this.b.length; k++)
    {
      View localView1 = arrayOfView[k];
      RelativeLayout localRelativeLayout = (RelativeLayout)localView1.findViewById(R.id.menu_item_container);
      float f1 = a(this.a);
      int m = (int)(21.0F * a(this.a));
      int n = (int)(f1 * 45.0F);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(2 + (j + m * 2), n);
      localLayoutParams.setMargins(0, 0, 0, 0);
      localRelativeLayout.setLayoutParams(localLayoutParams);
      localLinearLayout.addView(localView1);
    }
  }

  public void defaultShow(View paramView)
  {
    this.d = new PopupWindow(this.a);
    this.d.setWidth(-2);
    this.d.setHeight(-2);
    this.d.setFocusable(true);
    this.d.setTouchable(true);
    this.d.setContentView(this.c);
    try
    {
      this.d.setBackgroundDrawable(this.a.getResources().getDrawable(17170445));
      label79: this.d.showAtLocation(paramView, 17, 0, 0);
      return;
    }
    catch (Throwable localThrowable)
    {
      break label79;
    }
  }

  public View getContentView()
  {
    return this.c;
  }

  public int getHeight()
  {
    return this.g;
  }

  public PopMenu.PopItem getItem(int paramInt)
  {
    if ((this.b == null) || (-1 + this.b.length < paramInt))
      return null;
    return this.b[paramInt];
  }

  public int getWidth()
  {
    return this.f;
  }

  public void setMenuItemClickListener(PopMenu.OnMenuItemClikListener paramOnMenuItemClikListener)
  {
    this.e = paramOnMenuItemClikListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.ui.mpmenu.PopMenu
 * JD-Core Version:    0.6.2
 */