package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;

public class APToDoListItemView extends APLinearLayout
{
  private APImageView a;
  private APTextView b;
  private APTextView c;
  private APTextView d;

  public APToDoListItemView(Context paramContext)
  {
    super(paramContext);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.ap_todo_list_item, this);
    this.a = ((APImageView)findViewById(R.id.contact_photo_view));
    this.b = ((APTextView)findViewById(R.id.item_name_view));
    this.c = ((APTextView)findViewById(R.id.valid_date_view));
    this.d = ((APTextView)findViewById(R.id.item_third_view));
  }

  public APToDoListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public TextView getDateView()
  {
    return this.c;
  }

  public ImageView getImageView()
  {
    return this.a;
  }

  public TextView getNameView()
  {
    return this.b;
  }

  public TextView getThirdView()
  {
    return this.d;
  }

  public void requestLayout()
  {
    forceLayout();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APToDoListItemView
 * JD-Core Version:    0.6.2
 */